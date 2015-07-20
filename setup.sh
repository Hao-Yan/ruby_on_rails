#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install curl

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L get.rvm.io | bash -s stable

source ~/.bashrc
source ~/.bash_profile
sed -i -e 's/ftp\.ruby-lang\.org\/pub\/ruby/ruby\.taobao\.org\/mirrors\/ruby/g' ~/.rvm/config/db
sudo reboot # the reboot is needed

# use rvm to install the latest ruby
rvm install ruby

# if encounter this problem: rvm is not a function, run the following script
source ~/.rvm/scripts/rvm

ruby -v

# change source to taobao
gem source -r https://rubygems.org/
gem source -a https://ruby.taobao.org/
gem source

# install rails
gem install rails
rails -v

#install js compiler
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get install nodejs

# install passenger
gem install passenger

# install nginx
rvmsudo passenger-install-nginx-module
