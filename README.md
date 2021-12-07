# Netroid - Nethunter on Homescreen

![alt text](images/nethunter-logo-gray-trans.png "Nethunter Logo")

## How to Install Netroid
1. Install Nethunter Rootless
2. Install Termux:Widget on **Termux Pack** folder
3. Open Termux, then run this command on your terminal
```bash
bash setup.sh 
```
## How to Install Nethunter Rootless
1. Install Nethunter-Store app from [Nethunter Store](https://store.nethunter.com/)
2. Install Termux and Nethunter-KeX client from Nethunter-Store app
3. Open Termux and type :
   ```sh
   termux-setup-storage
   pkg install wget
   wget -O install-nethunter-termux https://offs.ec/2MceZWr
   chmod +x install-nethunter-termux
   ./install-nethunter-termux
   ```
## Netroid Custom Commands
+ **addsc** - Add custom Nethunter command and create shortcut to run it
+ **delsc** - Delete custom Nethunter command
+ **update** - Update Nethunter, in case you forgot how to do it
## Notes
+ You have to change shortcut icons by yourself
+ Custom Icons available on 'Netroid Icons' folder
+ I recommend you to use 3rd party launcher like Nova launcher, Lawnchair launcher, Hyperion launcher, Etc.

## To-do list
- [x] Fixing script
- [ ] Automatically add shortcuts to homescreen and change icon
- [ ] Custom icon packs
- [ ] Run GUI aplication from shortcuts
