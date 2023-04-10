#!/bin/bash/

yum install firwalld -y

yum stop firewalld 

yum install update -y
echo "$(date) install update " >> logfile.log

yum install httpd -y
echo "$(date) install httpd" >> logfile.log

systemctl start httpd
echo "$(date) start httpd" >> logfile.log

systemctl enable httpd
echo "$(date) enable httpd" >> logfile.log

cd /var/www/html/
echo "$(date) go into var/www/html folder" >> logfile.log

echo " <html><body style=background-color:red;> <h1> Welcome </h1></body></html>" > index.html
echo "$(date) create html website in index.html" >> logfile.log

