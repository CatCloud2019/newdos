ipv6=$1
work_path="/home/"
rm $work_path/hosts*
cp /etc/hosts $work_path/._backhosts
if [ "$ipv6" = "6" ]
then
	 wget https://raw.githubusercontent.com/CatCloud2019/newdos/master/hosts/ipv4/hosts  -O $work_path/hosts
else
	wget https://raw.githubusercontent.com/CatCloud2019/newdos/master/hosts/ipv6/hosts -O $work_path/hosts
fi
mv $work_path/hosts /etc/hosts
chown root:root /etc/hosts
chmod a+w /etc/hosts
# 追加你的～下tmp.hosts的文件到系统hosts文件里
cat /home/tmp.hosts >> /etc/hosts

#使用方法：
# chmod +x update_hosts.sh增加可执行权限，运行：
# update.sh 6 更新为ipv6的host，默认为ipv4的hosts。
