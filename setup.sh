# Installing essentials
sudo apt-get update
sudo apt -y upgrade
sudo apt-get install -y build-essential libssl-dev
sudo apt-get install curl

# Git
sudo apt install git-all

# Nodejs and NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install --lts

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install --no-install-recommends yarn

# Snap
sudo apt install snapd

# Visual Studio Code
sudo apt install software-properties-common apt-transport-https wget
https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# Ruby & Ruby Gems
sudo apt-get install ruby-full build-essential zlib1g-dev
gem install jekyll sass bundler jekyll-minifier jekyll-sitemap

# CLIs & Packages
npm i -g nodemon
npm i -g sass
npm i -g grunt-cli
npm i -g gulp-cli
npm i -g gatsby-cli
npm i -g netlify-cli
npm i -g vercel
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

# Cleanup
sudo apt autoremove

# Zsh
sudo apt-get -y install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Update config files
cp ./root/.gitconfig ~/.gitconfig
cp ./root/.zshrc ~/.zshrc
source ~/.zshrc
