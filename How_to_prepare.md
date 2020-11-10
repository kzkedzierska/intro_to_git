# How to prepare
Advice on how to prepare yourself for this workshop, and using git in the future.

## Easy way - no installation
If you don't want to install git on your machine you can still follow the tutorial and try exercises in [this online emulator](https://cocalc.com/doc/terminal.html).

However, I would recommend installing a version of git on your machine to start using it straight away! :)


## Installation
Below I gathered instructions for different platforms. However, I can only vouch for the Linux Ubuntu instructions as this is the OS I am using.

Before we start it's always a good idea to check if you have Git installed already. To do so let's check git version. If you need to install it, you can check the installation with the same command.

```bash
git --version
```

* Linux

**Debian**, for example **Ubuntu**

```bash
sudo apt update
sudo apt install git-all
```

newer **Fedora** version

```bash
sudo dnf install git-all
```

older **Fedora** version

```bash
sudo yum install git
```

Other versions and more detailed instructions are available [here](https://git-scm.com/download/linux).


* MacOS

You can try typing below command. If you have `git` installed it should print git version, otherwise it should prompt `git` installation.

```bash
git --version
```

If that doesn't work, download `git` installer from [Git website](https://git-scm.com/download/mac)

* Windows

Download `git` installer from [Git website](https://git-scm.com/download/win). I recommended choosing the last option (_Using Git and optional Unix tools form the Windows Command Prompt_) during _Adjusting your PATH environment_ step of the installer. This will add some commands one can use from command line (git bash).


## Git client
I would recommend setting up an account with one of the Git clients. I talk a bit about the differences between [GitHub](https://github.com/) and [Bitbucket](https://bitbucket.org/product) during the presentation. In general though, either will work well. Personally , I use GitHub (as you can see) and this is the one I can recommend.

## Configuring Git
After installing git, it's always good to configure the defaults. We will discuss those in more detail during the presentation, but to just cover the basics it's good to set up the `user.name` and `user.email`. User email should match the email you have associated with your Git client account.

```bash
git config --global user.name "Jenny Doe"
git config --global user.email jennygoe@example.com
```

### Optional: setting up SSH keys
To make working with remote easier I would recommend setting the ssh key.

#### Creating ssh-key
First, we need to create a key. We can do that by simply typing in ssh-keygen in our console. This will result in 2048 bit RSA key.

```bash
ssh-keygen
```

First we will be asked as to where to save the key?

```bash
~$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/username/.ssh/id_rsa):
```

I keep my keys in the default directory, but like to name them as I use keys for multiple things (connecting to the server, GitHub and more). Remember to put the whole path for the key (or navigate to the directory you want to store your key), otherwise it will be saved in a current directory.

Next, we are asked for a passphrase. If you wish not to have a password protected key (i.e. don't want to prompted for a password every time you use it, just press enter). It is recommended though to encrypt the key so that it cannot be used by someone who shouldn't otherwise have access. For strong passwords I either use my [KeePassXC](https://keepassxc.org/) random generator or use one of the [online tools](https://passwordsgenerator.net/).

```bash
~$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/username/.ssh/id_rsa): /home/username/.ssh/github
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/username/.ssh/github
Your public key has been saved in /home/username/.ssh/github.pub.
The key fingerprint is:
SHA256:sP/uJ20hblyGGlQGf4/iASWXU10cEUwdtVbjk8nbh0g username@think
The key\'s randomart image is:
+---[RSA 2048]----+
|        o.oo..oX@|
|         ==   +.O|
|      . .o..E  O |
|       o.. o +..+|
|      ..S o.o o.o|
|       ...oo+   .|
|        .=.= .   |
|        ..= +    |
|         +++     |
+----[SHA256]-----+
```

There is much more to the ssh-keygen program than what's described above, I definitely recommend giving a manual a read! For example you may wish to increase the number of bits to 4048 by specifying it with `-b 4048`, or add a comment to the key with `-C "dell machine"`. You can access the info about the program by simply typing:

```bash
man ssh-keygen
```

### Adding generated key to Git client
In brief, you need to copy the content of the `.pub` key and paste it in a specific place in your account settings.

To help with copying I recommend `xclip`. With Ubuntu you can install it as follows:

```bash
sudo apt install xclip
```

Then, you can just run the following command:

```bash
cat ~/.ssh/github.pub | xclip -selection c
```

This will copy the content of the public key directly to you clipboard.

You can find full instructions on where to paste the key in either of the documentation [GitHub](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account) and for Bitbucket [Step 3 here](https://support.atlassian.com/bitbucket-cloud/docs/set-up-an-ssh-key/).
