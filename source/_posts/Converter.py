import sys
import re
import shutil
import os

wd = sys.path[0]
print(wd)
file_list= os.listdir(wd)
mdfiles = file_list.copy()
for i in file_list:
    if '.md' not in i:
        mdfiles.remove(i)
for filename in mdfiles:
    # filename = 'input.md'
    filepath = wd + '\\' + filename
    # Input data
    input_file = open(filepath, "r+", encoding="utf-8")
    input_lines = input_file.readlines()
    pic_format = [".png", ".jpg", '.gif', '.bmp', '.tif', '.pcx', '.tga', '.svg', '.eps', '.webp']

    # print(input_lines)
    # Replace unproper items
    for i in range(0, len(input_lines)):
        a = input_lines[i]
        ## Unproper space
        input_lines[i] = input_lines[i].replace("  ", " ")
        input_lines[i] = input_lines[i].replace("  ", " ")
        ## Unproper character and comma
        input_lines[i] = input_lines[i].replace(" -", " - ")
        input_lines[i] = input_lines[i].replace("- ", " - ")
        input_lines[i] = input_lines[i].replace("， ", ", ")
        ## Unproper ion display
        input_lines[i] = input_lines[i].replace("Ca2+", "Ca^2+^")
        input_lines[i] = input_lines[i].replace("K+", "K^+^")
        input_lines[i] = input_lines[i].replace("Na+", "Na^+^")
        input_lines[i] = input_lines[i].replace("Cl-", "Cl^-^")
        ## Change image format
        for picf in pic_format:
            if (r'![' in a) and (picf in a) and (r'](' in a):
                pic_path = re.findall(r'[(](.*?)[)]', input_lines[i])
                pic_path = pic_path[0]
                pic_name = re.findall("\[.*?\]", input_lines[i])
                pic_name = pic_name[0][1:-1]
                html_link = r'<img src="' + pic_path + r'" alt="' + pic_name + r'" style="zoom:100%;" />'
                input_lines[i] = html_link
                print(input_lines[i])

    if not os.path.exists(wd + '\\Mdsave\\'):
        os.makedirs(wd + '\\Mdsave\\')
    savepath = wd + '\\Mdsave\\' + filename
    shutil.copy(filepath, savepath)
    input_file.seek(0)
    input_file.truncate()
    for i in input_lines:
        input_file.write(i)

