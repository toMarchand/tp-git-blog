from debian
run apt-get update && apt-get install -y apache2 git && apt-get clean
run apt-get update && apt-get install -y wget && apt-get clean

run wget -O /tmp/hugo.deb -q https://github.com/spf13/hugo/releases/download/v0.15/hugo_0.15_amd64.deb && dpkg -i /tmp/hugo.deb && rm /tmp/hugo.deb

add docker/default.vhost /etc/apache2/sites-available/000-default.conf
run a2enmod dav dav_fs

add docker/start /start
run chmod +x /start
cmd /start

add . /repositories/tp-git.git/
add docker/post-receive /repositories/tp-git.git/hooks/post-receive
run chmod +x /repositories/tp-git.git/hooks/post-receive
run cd /repositories/tp-git.git/ && /repositories/tp-git.git/hooks/post-receive
run chown -R www-data:www-data /var/www /repositories/

expose 80

