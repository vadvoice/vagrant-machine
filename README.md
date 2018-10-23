# VM provided by Vagrant + Oracle VirtualBox
GUI set up for complex HME project with docker engine and SVN tunnel

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
You need to install next software before start

+ [Oracle VirtualBox](https://www.virtualbox.org/) 
+ [Vagrant](https://www.vagrantup.com/downloads.html)
+ [Git](https://git-scm.com/)

#### Result

* XUbuntu v16.04 / amd64
* NodeJS v10.12.0
* Google chrome Google Chrome 70.0.3538.67
* VS code v1.28.2 / x64
* Docker version 18.06.1-ce, build e68fc7a
* SVN project

***

### Installing

Clone [source](https://github.com/vadvoice/vagrant-machine) to your machine

http:
```
git clone https://github.com/vadvoice/vagrant-machine.git
```
ssh:
```
git@github.com:vadvoice/vagrant-machine.git
```


Make sure you have installed Vasgrant
current version:
```
root@pc-ln-lv01-0149:~# vagrant --version
Vagrant 2.0.2
root@pc-ln-lv01-0149:~# 
```

After that
```
cd vagrant-machine
vagrant up
```
At first run, the program has to install all the dependencies and download the [XUbuntu 16 GUI](https://app.vagrantup.com/bstoots/boxes/xubuntu-16.04-desktop-amd64) it will take some time.
If you want reinstall dependencies that located in *bootstrap.sh* file you must do it manually by command:
```
vagrant provision
```

You also can sign in to machine by default credentials by VirtualBox intarface:
```
login: vagrant
pass: vagrant
```
or using CLI which using your public key to get access:
```
vagrant ssh
```

guest port is: _http://127.0.0.1:3344/_

***

## Author

**Vadym Shevchenko** - *Initial work* - [V](https://github.com/vadvoice)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details