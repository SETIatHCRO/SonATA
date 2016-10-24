# SonATA
The SETI Institute SonATA software. This software is used at the Allen Telescope Array.

Welcome to the SonATA Open Source Project

The minimum requirements for building and running the SonATA software:

1. OpenSUSE Linux 11.3
2. At least 2 64-bit processors with sse3 capability
3. At least 4GB RAM

NOTE: An effort is being made to conver to the latest Ubuntu. Stay tuned.

SonATA Build Instructions



Update: openSUSE 11.3 is getting older. There may be difficulties finding all the correct packages to install. We are working on creating a virtual install you can use in the free VMWare Player. Stay tuned... (jrseti Sep. 25, 2012).

Back to Project Home

These are the the instruction for installing SonATA on a "fresh" install of OpenSUSE 11.3. The OS was installed with all the defaults of the easy install. Your installation of OpenSUSE 11.3 may differ a bit, so adjust the package installing as necessary.

The instructions below assume your user name is "usrnm" and your home account is /home/usrnm. Also, the instructions assume you are using the bash shell. Adjust accordingly for your user name/home directory and shell.

These instructions assume your computer system meets the minimum requirements, and that you have downloaded the SonATA distribution as outlined here...

NOTE: It is important to follow ALL the steps exactly. If you skip anything it is guaranteed you will not get the SonATA software to either build or run. 


Download extra libraries and data


Retrieve some extra libraries required for SonATA:

cd ~/SonATA/scripts
./get_packages

Download sample data from an observation of Voyager. This will be used to test the build once you have built it.

mkdir ~/sonata_install
mkdir ~/sonata_install/data
cd ~/sonata_install/data
wget http://setiquest.org/sonata_files/vger-xpol-2010-07-14-406.pktdata.tar.Z
tar -xvzf vger-xpol-2010-07-14-406.pktdata.tar.Z


Prepare the account

NOTE: A common question we get is "Why do I have to set up sudo access"? The channelizer and DX programs must be run as root. See http://setiquest.org/wiki/index.php/Detector_Chain for more information about the channelizer and DX programs. Without sudo access to allow these programs to run as root, SonATA will not function.

Add your user into the sudoers file so you have sudo access without having to enter a password. See the faq page for details on why we do this.


sudo vi /etc/sudoers
Under the line "root    ALL=(ALL) ALL" add the following line:

usrnm ALL=(ALL) NOPASSWD: ALL


NOTE: A common question is "Why do I have to set up ssh? I am running it all on my local computer."  The answer is related to the sudo NOTE above. The channelizer and DX must be run as root, and to do this the SonATA software executes them using sudo and ssh. If you do not set up ssh correctly, SonATA will not run.

Create an ssh key so you can ssh into the sonata account from the user account without having to enter a password. See the FAQ for the details of why this is necessary.

If sshd is not running (typically you need to restart ssh daemon each time you reboot your machine):

sudo /etc/init.d/sshd start
Create a public/private key:


cd ~/.ssh
ssh-keygen (answer all with the enter key)
cp ./id_rsa.pub authorized_keys
Log into yourself once to set the key usage to be automatic (replace hostname with yours, i.e. "linux-73xk"):

ssh usrnm@hostname
exit


Important Note! If you can not configure the ssh keys properly to allow login without a password, there may be a problem with your sshd configuration. Please view the file /etc/ssh/sshd_config. Find the line defining the variable AuthorizedKeysFile. We have found instances where this value is defined incorrectly, even in fresh OpenSUSE installs.

To correct the problem, make sure the line defining the value of AuthorizedKeysFile is defined as follows:

AuthorizedKeysFile %h/.ssh/authorized_keys
We have encountered sshd_config files that do not contain the %h in the AuthorizedKeysFile definition, which causes automatic ssh login to fail.

Another problem we encountered: Your home directory has to have a mod of 755. The ~/.ssh/authorized_keys must be 600. Sometimes these are not correct, most times they are. Check them if you are having problems.





Install the packages necessary to build and run SonATA

NOTE: Along with the Multimedia_Libs repository added to zypper you will need the OpenSUSE install disk as a repository. You will need to either have the OpenSUSE disk in your DVD reader, or you will have to use Yast to add the OpenSUSE disk as a repository. Install the repository that contains necessary install packages:

"sudo zypper ar http://download.opensuse.org/repositories/multimedia:/libs/openSUSE_11.3/ Multimedia_Libs"
Install the packages:


"sudo zypper install gmp-devel mpfr mpfr-devel tcl tcl-devel mysql mysql-devel ncurses ncurses-devel fftw3 fftw3-devel readline readline-devel expect expect-devel swig tk tk-devel syslinux"
Note: In some editors the above command looks like 2 commands. It is actually one command, do not include the quotes.

You must have the SUN version of Java and the Java JDK. The default installation of OpenSUSE installs the OpenJAVA version, which is not suitable for building and running the few SonATA Java applications. To check if you have the OpenJDK version of Java type:

java -version

If you do have the OpenJDK you will see:
java version "1.6.0_17"
OpenJDK Runtime Environment (IcedTea6 1.7.3) (suse-7.3-x86_64)
OpenJDK 64-Bit Server VM (build 14.0-b16, mixed mode)

This means you need to replace the java with the Sun Java. This is how you do it:

sudo zypper ar http://download.opensuse.org/distribution/11.3/repo/non-oss non-oss
sudo zypper remove java
sudo zypper install java-sun
sudo zypper install java-devel-sun


Prepare several files

In ~/SonATA/sse-pkg/configure.in edit the ACE_ROOT assignment to be:
ACE_ROOT="$HOME/SonATA/packages/ACE_wrappers"

In ~/SonATA/scripts/sserc.tcl edit the lappend line:
lappend ::auto_path /home/usrnm/sonata_install/lib



GCC Version

Recently (May, 2012) we attempted to build using the latest GCC, version 4.6.3 on openSUSE 12.1. There were many strange configuration and build problems. To adjust for this situation we installed gcc and g++ version 4.5.3, and there were no build problems.

The trick is obtaining version 4.5.3. The RPMs can be downloaded from http://download.opensuse.org/repositories/devel:/gcc/openSUSE_11.4/x86_64/



Build the SonATA software

cd ~/SonATA/tclreadline
./reconfig --with-tcl=/usr/lib64 --with-tlib-library="-lncurses" --prefix=$HOME/sonata_install --with-readline-includes=/usr/include/readline
make install

cd ~/SonATA/CppUnit
./reconfig
make
sudo make install

cd ~/SonATA/sse-pkg
./reconfig
make
make install

cd ~/SonATA/sig-pkg
./reconfig
make
make install

cd ~/SonATA/scripts
./reconfig
make
make install
In your .bashrc add these and resource your environment (restart the terminal after saving changes to the .bashrc):


ACE_ROOT=$HOME/SonATA/packages/ACE_wrappers
PACKAGES_PATH=$HOME/SonATA/packages
export LD_LIBRARY_PATH=$ACE_ROOT/ace:$ACE_ROOT/lib:$PACKAGES_PATH/lib:$LD_LIBRARY_PATH
export PATH=.:$HOME/sonata_install/bin:$PACKAGES_PATH/bin:$PATH
ulimit -s unlimited
Note: If you are not using the bash shell, edit your shell script with the proper syntax.




Test the build - Run a Test


Run SonATA with the Voyager data


cd ~/sonata_install/scripts
tcsh
source spacecraft-demo-xpol-env-vars.tcsh
runsse.sh

In seeker terminal window

seeker>>  source vger-demo-xpol.tcl

after data collecting begins, open another terminal and type:


waterfallDisplay

Then select file->Open from the top menu of the WaterfallDisplay program. Select one of the files. You should see a waterfall paint down as SonATA is processing the data in the file ~/sonata_install/data/vger-xpol-2010-07-14-406.pktdata you downloaded earlier in these instructions.
