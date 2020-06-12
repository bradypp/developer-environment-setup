sudo apt-get update
sudo apt -y upgrade
sudo apt-get install curl

# Installing build essentials
sudo apt-get install -y build-essential libssl-dev

# Git - a version control system
sudo apt-get update
sudo apt install git-all

# Zsh
sudo apt-get -y install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo npm install -g spaceship-prompt

# Update config files
cp ./root/.gitconfig ~/.gitconfig
cp ./root/.zshrc ~/.zshrc
source ~/.zshrc

# Nodejs and NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
nvm install --lts

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install --no-install-recommends yarn

# Snap
sudo apt install snapd

# CLIs & Packages
sudo npm install -g nodemon
sudo npm install -g grunt-cli
sudo npm install -g gulp-cli
sudo npm install -g gatsby-cli
sudo npm install -g netlify-cli
sudo snap install --classic heroku
