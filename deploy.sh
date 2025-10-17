echo -e "┌-------------------┐"
echo -e "| \e[34mBlog Hexo部署开始\e[0m |"
# echo -e "|    \e[34m作者 小番茄\e[0m    |"
echo -e "└-------------------┘"
echo -e ""
# echo -e ""

# read -p "即将开始部署网页 [Y/n] " yn
yn='Y'
if [[ $yn == "y" || $yn == "Y" ]]; then
	echo -e "\e[33m========执行1/6 : 清理========\e[0m" 2>&1 | tee deploy.log
	hexo clean 2>&1 | tee -a deploy.log
	echo -e "\e[33m========执行2/6 : 生成========\e[0m" 2>&1 | tee -a deploy.log
	hexo generate 2>&1 | tee -a deploy.log
	# echo -e "\e[33m========执行3/6 : 上传algolia========\e[0m" 2>&1 | tee -a deploy.log
	# hexo algolia 2>&1 | tee -a deploy.log
	echo -e "\e[33m========执行4/6 : 部署========\e[0m" 2>&1 | tee -a deploy.log
	hexo deploy 2>&1 | tee -a deploy.log
	echo -e "\e[33m========执行5/6 : 备份准备========\e[0m" 2>&1 | tee -a deploy.log
	git init 2>&1 | tee -a deploy.log
	git add --all 2>&1 | tee -a deploy.log
	git commit -m "Backup" 2>&1 | tee -a deploy.log
	# git remote rm coding_backup && git remote rm github_backup 2>&1 | tee -a deploy.log
	git remote rm github_backup 2>&1 | tee -a deploy.log
	# git remote add coding https://e.coding.net/zhenyumi/zhenyumi/zhenyumi.git 2>&1 | tee -a deploy.log
	# git remote add coding_backup https://e.coding.net/zhenyumi/zhenyumi/zhenyumi_backup.git 2>&1 | tee -a deploy.log
	git remote add github_backup https://github.com/zhenyumi/Hexo_backup.git 2>&1 | tee -a deploy.log
	echo -e "\e[33m========执行6/6 : 上传备份========\e[0m" 2>&1 | tee -a deploy.log
	# git push coding_backup master:backup -f && git push github_backup master:backup -f 2>&1 | tee -a deploy.log
	git push github_backup master:backup -f 2>&1 | tee -a deploy.log
	echo -e "\e[33m========清理========\e[0m" 2>&1 | tee -a deploy.log
	hexo clean 2>&1 | tee -a deploy.log
elif [[ $yn == "n" || $yn == "N" ]]; then
 	echo -e "\e[31mCanceled\e[0m > Github" 2>&1 | tee deploy.log
elif [[ $yn != "y" && $yn != "Y" && $yn != "n" && $yn != "N" ]]; then
 	echo -e "\e[31m？？？\e[0m > $yn" 2>&1 | tee deploy.log
fi
echo -e "\e[32mDone\e[0m"
sleep 5