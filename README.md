# linux-custom-commands
reccomended way of using:
1. create directory ~/custom_commands
2. clone here
3. put all the the linux-custom-commands files (including hidden files!) directly under ~/custom_commands and remove linux-custom-commands
4. install stuff like sudo apt install sshpass
5. go to ~/.bashrc and add the following at the very end of the file:

     #added for the custom commands thing, credit goes for https://medium.com/devnetwork/how-to-create-your-own-custom-terminal-commands-c5008782a78e
     source ~/custom_commands/.my_custom_commands.sh
     
6. add an empty line at the end of the file
