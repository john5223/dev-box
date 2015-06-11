set -e

### Variables
ROOT_FOLDER=~/dev-box/
REPOSITORY=https://github.com/john5223/dev-box.git

# Installing dependencies
echo "Installing dependencies..."
pacman -S ansible git --noconfirm

echo "Cloning ansible-devel repository..."
if [ ! -d "$ROOT_FOLDER" ]; then
    git clone "$REPOSITORY" "$ROOT_FOLDER" --recursive
    cd "$ROOT_FOLDER"
else
    cd "$ROOT_FOLDER"
    git pull && git submodule init && git submodule update && git submodule status
fi

# Proceeding with orchestration
echo "Starting orchestration..."
ansible-playbook orchestrate.yml -i inventory --connection=local
#ansible-playbook awesome.yml -i inventory --connection=local -e "username=$USERNAME"
ansible-playbook i3.yml -i inventory --connection=local

echo "Configuration completed!"
echo "The following command is *mandatory*:"
echo "$ passwd $USERNAME"

echo ""
echo "You can also install the following packages:"
echo "$ yaourt -S firefox-developer google-chrome"
echo "$ yaourt -S awesome-themes-git"
echo "$ yaourt -S downgrade"
echo "$ yaourt -S ttf-ms-fonts"
echo "$ yaourt -S watchman"
echo "$ yaourt -S mbpfan-git # (optional for Macbook laptops)"
