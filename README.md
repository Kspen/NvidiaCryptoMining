# Nvidia Crypto Mining Scripts

This is a small collection of crude but effective scripts that I use for crypto mining with Nvidia GPUs.  The script most people
have been asking for is GPU-watch.sh, which will help you maintain cooler average temperatures and likely
prolong the life of your GPU fans.  You will want to manually check nvidia-smi to fine tune the settings in *GPU-watch*.

## Scripts
- **stop-X.sh** : Shutdown X -- rarely used but comes in handy sometimes.
- **X11-vnc-view.sh** : Prompts for password then starts up x11vnc so that I can remotely use existing X11 session with vncviewer.
- **start.sh** : Main script, launches the following scripts in order of appearance:
    - **CPU-start.sh** : Sets each CPU scaling_governor setting to "performance mode" (ran as root).
    - **GPU-start.sh** : Sets each GPU's power level, fan speed, and overclock settings (ran as root).
    - **start-mining.sh** : This executes the actual mining software.
- **GPU-watch.sh** : This checks each GPU's temperature every 10 seconds and adjusts fan speed accordingly.

## Usage
- Configure *start-mining.sh* to execute your mining software, including your wallet or pool information (whatever the software requires.)
- Configure *GPU-watch.sh*, providing number of cards and fan speed/temp settings.
- exec *start.sh*
- In a separate command-line window, exec *GPU-watch.sh*.
- In a third command-line window, you can monitor your cards with nvidia-smi.
