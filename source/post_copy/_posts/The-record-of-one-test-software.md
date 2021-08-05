---
title: The record of one test program
tags:
  - Machine learning and neural engineering
categories:
  - Academic Notebook
  - Machine learning and neural engineering
author: 向海
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/post/post2.jpg
top: false
math: true
comments: true
hide: false
abbrlink: 8613a0ca
date: 2021-02-15 11:46:20
updated: 2021-02-15 11:46:20
excerpt: An homework to write a program to test reaction time and some other things.
---

这个假期需要用Python写一个测试的小软件，具体作用是为了测试被试者的反应时间。具体的软件功能是在屏幕上随机投入20-60个左斜杠`\`和右斜杠`/`，被试者需要判断出左斜杠多还是右斜杠多。在这个过程当中记录下一些值。

对整个过程进行一次记录是对我来说很有必要的，我决定对一些重要的地方进行一些总结。

# 代码流程

Requirements：

1. 构建界面
2. 实现抽样：The number of `\ `and `/` is sampled from a uniform distribution [20, 40] and cannot be equal
   + 避免重叠
3. Plot：将`\ `和`/`绘制在当前页面上
4. 监测键盘按键
5. 检测反应时长
6. 记录信息：
   + Subject ID; 
   + Trial ID; 
   + Time: onset of stimulus; 
   + Time: response is made; 
   + The number of `\` in a trial
   + The number of `/` in a trial
   + The response: left or right
   + Response time: time in 4) – time in 3)
7. 输出结果为csv

## 1. 构建界面

整个界面使用到了pygame来进行构建，这是老师推荐的方法，本来大概也可能用PyQt5来进行GUI构建，不过对于游戏（测试过程当中）的动态画面来说，还是Pygame更适合一些。

```Python
import pygame
from pygame.locals import *

# Construct Pygame GUI and Initiation of Variables
pygame.init()
## Set the screen size
screen_width = 800
screen_height = 800
screen = pygame.display.set_mode([screen_width, screen_height])
## Set the title of the windows
pygame.display.set_caption("Trial")
background = pygame.Surface(screen.get_size())
background.fill([255, 255, 255])
```

简单构建一个窗体，规定大小之后，继续接下来的操作。

## 2. 实现抽样

### 获得数目

抽样的过程当中需要做到，左右斜杠的总数为60，其中左右斜杠的数目需要在[20,40]这个范围之内，两个斜杠的数目不能相等。

我的想法就是通过一个无限循环，通过随机数来生成两个数字，并对两个数字进行比较，直到两个数字不相等才break整个循环。

```python
from random import *

## Record the number of \ and / in each round
global T_right, T_left
T_right = []
T_left = []

## Construct a random number and determine the number of / and \
### Make sure / and \ do not have equal numbers
while True:
	numofright = randint(20, 40)
	numofleft = 60 - numofright
    if numofright != numofleft:
        T_left.append(numofleft)
        T_right.append(numofright)
        break
```

### 避免重叠

在实际print到屏幕上时，需要防止两个斜杠的位置重叠，因此需要考虑一下这个因素。

在print的过程当中，实际是通过规定斜杠的中心位置，之后再打字上去，因此需要使斜杠中心之间的距离足够远。

```Python
# Randomly put / and \
## Record of the center of / and \
x_coor = [0]
y_coor = [0]
for i in range(0, numofright):
    ## Seperate the \
    xNotS = True
    while xNotS:
        x = randint(50, 750)
        for j in x_coor:
            if abs(x - j) < separate_distance:
                xNotS = True
            else:
                xNotS = False
    x_coor.append(x)
    yNotS = True
    while yNotS:
        y = randint(100, 750)
        for j in y_coor:
            if abs(y - j) < separate_distance:
                yNotS = True
            else:
                yNotS = False
    y_coor.append(y)
    ## Put the \ into position
    center = (x, y)  # Position
    textpos = textright.get_rect(center=center)
    ## Insert \ into background
    background.blit(textright, textpos)
for i in range(0, numofleft):
    # Seperate the /
    xNotS = True
    while xNotS:
        x = randint(50, 750)
        for j in x_coor:
            if abs(x - j) < separate_distance:
                xNotS = True
            else:
                xNotS = False
    x_coor.append(x)
    yNotS = True
    while yNotS:
        y = randint(100, 750)
        for j in y_coor:
            if abs(y - j) < separate_distance:
                yNotS = True
            else:
                yNotS = False
    y_coor.append(y)
    ## Put the \ into position
    center = (x, y)  # Position
    textpos = textleft.get_rect(center=center)
    ## Insert \ into background
    background.blit(textleft, textpos)
```

## 3. Plot：将`\ `和`/`绘制在当前页面上

将左右斜杠插入到screen之后，再update整个pygame界面。

```python
## Display / and \
# Creat \ and / objects
font = pygame.font.Font(None, 50)
textright = font.render("\\", 1, (255, 10, 10))  # Color
textleft = font.render("/", 1, (255, 10, 10))  # Color
    
# Insert background into the screen
screen.blit(background, (0, 0))

pygame.display.update()
```

### 4. 监测键盘按键

在斜杠的print结束之后，会要求软件暂停等待被试者的指令输入，直到输入之后，才进行下一个循环。

```python
import sys

# Wait, record the answer, analyse the accuracy
def wait():
    while True:
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
            if current_round == 0:
                return
            if event.type == KEYDOWN and event.key == K_LEFT:
                directions.append("Left")
                if numofright < numofleft:
                    accuracy.append("Correct")
                else:
                    accuracy.append("Wrong")
                return
            if event.type == KEYDOWN and event.key == K_RIGHT:
                directions.append("Right")
                if numofright > numofleft:
                    accuracy.append("Correct")
                else:
                    accuracy.append("Wrong")
                return

## Record the respond
directions = []
## Record the accuracy
accuracy = []
```

## 5. 检测反应时长

监测反应时长就需要计算整个软件运行的时间，有两个思路：

1. 从软件运行开始启动计时，每做出一个操作就记一次时获得一个时间戳，统计时间区间的时候就用两个时间相减
2. 多次新建时钟，在tick之后将当前计时清除（pygame.clock）

## 6. GUI

用Qt Designer来写GUI

### config界面

```python
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import *

# GUI configuration: Login
class Ui_Dialog(object):
    ## The function for clicking 'cancel' button
    def cancel_clicked(self):
        sys.exit()
        sys.exit(app.exec_())
    ## The function for clicking 'ok' button
    def ok_clicked(self):
        global SubjectID_text
        global TrialID_text
        if self.SubjectID.text() == "":
            pass
        else:
            SubjectID_text = self.SubjectID.text()
        if self.TrialID.text() == "":
            pass
        else:
            TrialID_text = self.TrialID.text()
        print(SubjectID_text)
        print(TrialID_text)
        widget.close()

    def setupUi(self, Dialog):
        # The main window
        Dialog.setObjectName("Dialog")
        Dialog.resize(573, 300)
        # The labels
        self.Setsubjectid = QtWidgets.QLabel(Dialog)
        self.Setsubjectid.setGeometry(QtCore.QRect(30, 140, 141, 16))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(False)
        font.setWeight(50)
        self.Setsubjectid.setFont(font)
        self.Setsubjectid.setObjectName("Setsubjectid")
        self.SettrialID = QtWidgets.QLabel(Dialog)
        self.SettrialID.setGeometry(QtCore.QRect(60, 200, 111, 16))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(False)
        font.setWeight(50)
        self.SettrialID.setFont(font)
        self.SettrialID.setObjectName("SettrialID")
        self.SubjectID = QtWidgets.QLineEdit(Dialog)
        self.SubjectID.setGeometry(QtCore.QRect(180, 130, 381, 31))
        # The ID input
        self.SubjectID.setObjectName("SubjectID")
        self.TrialID = QtWidgets.QLineEdit(Dialog)
        self.TrialID.setGeometry(QtCore.QRect(180, 190, 381, 31))
        self.TrialID.setObjectName("TrialID")
        # The OK button
        self.ok = QtWidgets.QPushButton(Dialog)
        self.ok.setGeometry(QtCore.QRect(350, 250, 93, 28))
        self.ok.setObjectName("ok")
        self.ok.clicked.connect(self.ok_clicked)
        # The explain text
        self.Explain = QtWidgets.QLabel(Dialog)
        self.Explain.setGeometry(QtCore.QRect(30, 30, 521, 71))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(False)
        font.setWeight(50)
        self.Explain.setFont(font)
        self.Explain.setWordWrap(True)
        self.Explain.setObjectName("Explain")
        # The cancel button
        self.cancel = QtWidgets.QPushButton(Dialog)
        self.cancel.setGeometry(QtCore.QRect(460, 250, 93, 28))
        self.cancel.setObjectName("cancel")
        ## If click the cancel button, then close the whole program
        self.cancel.clicked.connect(self.cancel_clicked)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Config"))
        self.Setsubjectid.setText(_translate("Dialog", "Set Subject ID"))
        self.SettrialID.setText(_translate("Dialog", "Set Trial ID"))
        self.ok.setText(_translate("Dialog", "OK"))
        self.Explain.setText(_translate("Dialog", "Before the trial, you can set the sbject ID and trial ID freely. If you do not want to config this, you can just click \"OK\" and will use default setting."))
        self.cancel.setText(_translate("Dialog", "Cancel"))
```

![image-20210215123143255](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Machine%20learning%20and%20neural%20engineering/image-20210215123143255.png)

其中规定了两个按钮`ok`和`cancel`的行为：

```python
def cancel_clicked(self):
        sys.exit()
        sys.exit(app.exec_())
    ## The function for clicking 'ok' button
    def ok_clicked(self):
        global SubjectID_text
        global TrialID_text
        if self.SubjectID.text() == "":
            pass
        else:
            SubjectID_text = self.SubjectID.text()
        if self.TrialID.text() == "":
            pass
        else:
            TrialID_text = self.TrialID.text()
        print(SubjectID_text)
        print(TrialID_text)
        widget.close()
```

在打开这个GUI的时候需要使用的代码为：

```python
## Open Login Panel
if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    ### 规定了窗口为widget
    widget = QtWidgets.QWidget()
    ui = Ui_Dialog()
    ui.setupUi(widget)
    widget.show()
```

因为这个界面可能多次出现，因此关闭时使用：

```python
widget.close()
```

### 结算界面

同上，使用Qt Designer

```python
# GUI configuration: Save and restart panel
class Ui_save_restart(object):
    def finish_clicked(self):
        savecsv()
        widget2.close()
        pygame.quit()
        sys.exit()

    def ok_clicked(self):
        savecsv()
        global current_round
        current_round = 0
        print(current_round)
        global TrialID_text
        if self.TrialID.text() == "":
            TrialID_text = time.strftime("%Y-%m-%d_%H-%M-%S", time.localtime())
        global SubjectID_text
        if self.SubjectID.text() == "":
            pass
        else:
            SubjectID_text = self.SubjectID.text()
        # Update the placeholder in the save window
        self.SubjectID.setPlaceholderText(SubjectID_text)
        self.TrialID.setPlaceholderText(TrialID_text)
        widget2.close()

    def filepath_clicked(self):
        global filepath
        filepath = QFileDialog.getExistingDirectory(None)
        print(filepath)
        self.Filepath.setText(filepath)
        return

    def setup_save_restart(self, Dialog):
        # The tips
        Dialog.setObjectName("Dialog")
        Dialog.resize(746, 612)
        font = QtGui.QFont()
        font.setKerning(True)
        Dialog.setFont(font)
        self.Tip1 = QtWidgets.QLabel(Dialog)
        self.Tip1.setGeometry(QtCore.QRect(20, 20, 701, 71))
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(14)
        font.setBold(False)
        font.setWeight(50)
        self.Tip1.setFont(font)
        self.Tip1.setWordWrap(True)
        self.Tip1.setObjectName("Tip1")
        self.Tip2 = QtWidgets.QLabel(Dialog)
        self.Tip2.setGeometry(QtCore.QRect(20, 90, 701, 81))
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(14)
        font.setBold(False)
        font.setWeight(50)
        self.Tip2.setFont(font)
        self.Tip2.setWordWrap(True)
        self.Tip2.setObjectName("Tip2")
        self.Tip3 = QtWidgets.QLabel(Dialog)
        self.Tip3.setGeometry(QtCore.QRect(20, 170, 701, 81))
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(14)
        font.setBold(False)
        font.setWeight(50)
        self.Tip3.setFont(font)
        self.Tip3.setWordWrap(True)
        self.Tip3.setObjectName("Tip3")
        self.Tip4 = QtWidgets.QLabel(Dialog)
        self.Tip4.setGeometry(QtCore.QRect(20, 260, 701, 81))
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(14)
        font.setBold(False)
        font.setWeight(50)
        self.Tip4.setFont(font)
        self.Tip4.setWordWrap(True)
        self.Tip4.setObjectName("Tip4")
        # The subject ID
        self.SettrialID_2 = QtWidgets.QLabel(Dialog)
        self.SettrialID_2.setGeometry(QtCore.QRect(100, 500, 121, 20))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(False)
        font.setWeight(50)
        self.SettrialID_2.setFont(font)
        self.SettrialID_2.setObjectName("SettrialID_2")
        self.SubjectID = QtWidgets.QLineEdit(Dialog)
        self.SubjectID.setGeometry(QtCore.QRect(230, 370, 381, 31))
        self.SubjectID.setObjectName("SubjectID")
        global SubjectID_text
        self.SubjectID.setPlaceholderText(SubjectID_text)
        self.Setsubjectid = QtWidgets.QLabel(Dialog)
        self.Setsubjectid.setGeometry(QtCore.QRect(80, 380, 141, 16))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(False)
        font.setWeight(50)
        self.Setsubjectid.setFont(font)
        self.Setsubjectid.setObjectName("Setsubjectid")
        # Trial ID
        self.SettrialID = QtWidgets.QLabel(Dialog)
        self.SettrialID.setGeometry(QtCore.QRect(110, 440, 111, 16))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(False)
        font.setWeight(50)
        self.SettrialID.setFont(font)
        self.SettrialID.setObjectName("SettrialID")
        self.TrialID = QtWidgets.QLineEdit(Dialog)
        self.TrialID.setGeometry(QtCore.QRect(230, 430, 381, 31))
        self.TrialID.setObjectName("TrialID")
        global TrialID_text
        self.TrialID.setPlaceholderText(TrialID_text)
        # Finish button
        self.finish = QtWidgets.QPushButton(Dialog)
        self.finish.setGeometry(QtCore.QRect(450, 550, 131, 31))
        self.finish.setObjectName("finish")
        self.finish.clicked.connect(self.finish_clicked)
        # Ok button
        self.ok = QtWidgets.QPushButton(Dialog)
        self.ok.setGeometry(QtCore.QRect(180, 550, 131, 31))
        self.ok.setObjectName("ok")
        self.ok.clicked.connect(self.ok_clicked)
        # The filepath input
        self.Filepath = QtWidgets.QLineEdit(Dialog)
        self.Filepath.setGeometry(QtCore.QRect(230, 490, 381, 31))
        self.Filepath.setObjectName("Filepath")
        self.Filepath.setPlaceholderText(filepath)
        # The ... filepath setting button
        self.set_file_path = QtWidgets.QPushButton(Dialog)
        self.set_file_path.setGeometry(QtCore.QRect(620, 490, 51, 28))
        self.set_file_path.setObjectName("set_file_path")
        self.set_file_path.clicked.connect(self.filepath_clicked)

        self.retranslateUi_save_restart(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi_save_restart(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Next Trial？"))
        self.Tip1.setText(_translate("Dialog",
                                     "You have completed all the rounds and this is the end of this trial. If you want to quit, then click the \'Finish\' button or just close this window."))
        self.Tip2.setText(_translate("Dialog",
                                     "You can reset your Subject ID and Trial ID if necessary. If you do not need to change your Subject ID, just click the \'OK\' button."))
        self.Tip3.setText(_translate("Dialog",
                                     "If you want to begin a new trial, you must change your Trial ID. You can just click the \'OK\' button to use the default setting."))
        self.Setsubjectid.setText(_translate("Dialog", "Set Subject ID"))
        self.SettrialID.setText(_translate("Dialog", "Set Trial ID"))
        self.finish.setText(_translate("Dialog", "Finish"))
        self.ok.setText(_translate("Dialog", "OK"))
        self.SettrialID_2.setText(_translate("Dialog", "Set file path: "))
        self.set_file_path.setText(_translate("Dialog", "..."))
        self.Tip4.setText(_translate("Dialog",
                                     "The experiment result will be saved to a .csv file, you can set the filepath. Or the .csv file will be saved to the same path as the .py file. The file will be named as 'Subject ID-Date.csv'"))

```

规定了三个按钮的行为：

```python
    def finish_clicked(self):
        savecsv()
        widget2.close()
        pygame.quit()
        sys.exit()

    def ok_clicked(self):
        savecsv()
        global current_round
        current_round = 0
        print(current_round)
        global TrialID_text
        if self.TrialID.text() == "":
            TrialID_text = time.strftime("%Y-%m-%d_%H-%M-%S", time.localtime())
        global SubjectID_text
        if self.SubjectID.text() == "":
            pass
        else:
            SubjectID_text = self.SubjectID.text()
        # Update the placeholder in the save window
        self.SubjectID.setPlaceholderText(SubjectID_text)
        self.TrialID.setPlaceholderText(TrialID_text)
        widget2.close()

    def filepath_clicked(self):
        global filepath
        filepath = QFileDialog.getExistingDirectory(None)
        print(filepath)
        self.Filepath.setText(filepath)
        return
```

`finish`：关闭所有窗口，结束运行，并且执行`savecsv`函数

`ok`：关闭当前窗口，更新参数，执行`savecsv`函数

`filepath`：选择csv文件的保存路径，会传递一个路径string

## 7. 输出结果为csv

在这个过程当中，使用pandas来进行csv的写入。因此首先需要构建一个dataframe，之后通过函数写入。

在保存的过程当中会使用到上一步结算界面获得的保存路径，如果没有设置，那么默认的保存路径是当前文件的同目录。

```python
import os
import pandas as pd

## The final path saved csv
global filepath
filepath = os.path.abspath(__file__)
filepath = os.path.dirname(filepath)

# If the trial is ended, then save the result and restart the trial
def savecsv():
    Subjectid = [SubjectID_text]*round
    Trialid = []
    for i in range(0, round):
        Trialid.append("{0}_{1}".format(i, TrialID_text))
    global T_StoR,T_TtoS, T_onset, T_response
    dataframe = []
    dataframe = pd.DataFrame({'Subject ID': Subjectid, 'Trial ID': Trialid, 'Time: Time: onset of stimulus (s)': T_onset,
                              'Time: response is made (s)': T_response, 'The number of \\ in the trial': T_right,
                              'The number of / in the trial': T_left, 'The response: left or right': directions,
                              'Response time (ms)': T_StoR
                              })
    global filepath
    filepath = "{0}\\{1}_{2}.csv".format(filepath, SubjectID_text.replace(':',"-"), time.strftime('%Y%m%d_%H-%M-%S'))
    filepath = filepath.replace('\\','/')
    file = open(filepath, mode='w+')
    file = dataframe.to_csv(file)
    return
```

# 完整代码

[完整代码](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Machine%20learning%20and%20neural%20engineering/Trial_with_GUI.py)