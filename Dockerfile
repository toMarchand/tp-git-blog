from debian
run apt-get update && apt-get install -y apache2 git && apt-get clean

add https://github.com/spf13/hugo/releases/download/v0.15/hugo_0.15_amd64.deb /tmp/
run dpkg -i /tmp/hugo_0.15_amd64.deb

add docker/default.vhost /etc/apache2/sites-available/default
run a2enmod dav dav_fs

add docker/start /start
run chmod +x /start
cmd /start
volume ["/repositories"]
expose 80

add docker/post-receive /root/post-receive
