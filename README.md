# WSL-Setup

## Usage

Get [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?hl=en-US&gl=US).

1. [Install wsl](https://learn.microsoft.com/en-us/windows/wsl/install).

   ```sh
   wsl.exe --install Ubuntu-24.04
   ```

2. Make a disk partition in Windows to keep Linux in its own separate partition.

3. Export the installed WSL into the new partition.

   Open PowerShell with admin privileges. Replace `D:\` with your partition's letter.

   ```sh
   wsl --shutdown
   mkdir D:\wsl_export
   wsl --export Ubuntu-24.04 "D:\wsl_export\ubuntu-ex.tar"
   wsl --unregister Ubuntu-24.04
   wsl --import Ubuntu-24.04 "D:\wsl_export\ubuntu" "D:\wsl_export\ubuntu-ex.tar" --version 2
   wsl --setdefault Ubuntu-24.04
   ```

   Make changes to the `oh-my-zsh` plugins as you see fit. Restart the terminal.

4. Open WSL Ubuntu. Run:

   ```sh
   wget https://raw.githubusercontent.com/ss26/wsl-setup/refs/heads/main/init.sh
   chmod +x init.sh
   bash init.sh
   ```

5. **(For StarShip terminal theme)** Make a new directory: `mkdir ~/.config` and get the Starship config file and add it to this directory.

   ```sh
   wget https://raw.githubusercontent.com/ss26/wsl-setup/refs/heads/main/starship.toml
   mv starship.toml ~/.config
   ```

6. Finally, restart the terminal.

Thanks to [@theRubberDuckiee](https://github.com/theRubberDuckiee) for the `starship.toml` file! I modified this for use in Ubuntu.
