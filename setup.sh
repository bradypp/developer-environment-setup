# Installing essentials
sudo apt-get update
sudo apt -y upgrade
sudo apt-get install -y build-essential libssl-dev
sudo apt-get install curl

# Git
sudo apt install git-all

# Zsh
sudo apt-get -y install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Nodejs and NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
nvm install --lts

# Update config files
cp ./root/.gitconfig ~/.gitconfig
cp ./root/.zshrc ~/.zshrc
source ~/.zshrc

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install --no-install-recommends yarn

# Snap
sudo apt install snapd

# CLIs & Packages
npm i -g nodemon
npm i -g grunt-cli
npm i -g gulp-cli
npm i -g gatsby-cli
npm i -g netlify-cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

# Cleanup
sudo apt autoremove
