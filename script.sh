# /bin/sh

if [ -f /usr/src/Python-3.6.4.tar.xz ]; then
  echo "Python already installed"
else
  echo "Setting up Python3 environmnt..."
  curl https://raw.githubusercontent.com/linuxacademy/content-python3-sysadmin/master/helpers/bashrc -o /home/vagrant/.bashrc
  curl https://raw.githubusercontent.com/linuxacademy/content-python3-sysadmin/master/helpers/vimrc -o /home/vagrant/.vimrc
  sudo su -
  cd /usr/src
  wget http://python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz
  tar xf Python-3.6.4.tar.xz
  cd Python-3.6.4
  ./configure --enable-optimizations
  make altinstall
  pip3.6 install --upgrade pip
  pip3.6 install pipenv
fi
echo "Python3 setup completed..."
