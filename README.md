# PushOS
**Pushistik Operating System**


`PushOS` is a `xfce4` installer on `Termux` with additional theme and icons.
To install `PushOS`, type this commands in `Termux`:
```
$ apt update
$ apt upgrade
$ pkg install git
$ git clone https://github.com/Pushistik365/PushOS
$ cd PushOS/
$ chmod +777 install-pushos.sh
$ ./install-pushos.sh
```
This will install `xfce4` with additions and `tigervnc` server.
To start `PushOS`, type:
```
$ pushos-start
```
This will start VNC server and XFCE. Connect to VNC server in any VNC Viewer. Address: `localhost:1`, password: `123456`.
To stop, type:
```
$ pushos-stop
```
This will kill VNC server.
**Note:** VNC server starts with geometry _1380x720_. If you want to start VNC server with custom geometry, type `$ vncserver -geometry WIDTHxHEIGHT`.

If you want to feel real PushOS:
1. Set the _X-Aero Sky_ theme in Window Manager settings.
2. Set the _Cobalt_ icons in Appearance settings.
3. Set the _Aerodrop_ mouse pointers in Mouse settings..
4. Set the background to _pushos-bg_ (in `.backgrounds` folder).
5. Set the terminal background to _pushos-terminal-bg_ (in `.backgrounds` folder).
6. Set the Applications menu icon to _pushos-apps_ (in `.icons` folder).
