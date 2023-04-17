 CLONE

First of all clone this repo into your HOME directory with this command:

```
cd ~ && git clone git@github.com:ChewyToast/bash_config.git .bash_config
```

 SETUP

Run this two commands to create the main files in yoru HOME directory:

```
echo "source ~/.bashrc" >> ~/.bash_profile
```

```
echo "source ~/.bash_config/.bashrc" >> ~/.bashrc
```

To configure the user input you will need to move the .inputrc file with this command:

```
mv ~/.bash_config/.inputrc ~/
```

Thats all, enjoy your new bash configuration
