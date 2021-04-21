# New Computer Dev Environment Setup

**Before you begin, make sure you are at the root of the users folder!**
```
pwd
result: /Users/sandricoprovo
```

## Setup Steps - Automated Script

## Setup Steps - Manual
1. **Install Apple command line tools for git and homebrew**
```
xcode-select --install
```

2. **Clone dotfiles repo into new hidden directory**
```
git clone https://github.com/sandricoprovo/dotfiles-sandricoprovo.git ~./dotfiles
```

3. **Create symlinks in the Home directory by running the following commands**
```
ln -s /Users/sandricoprovo/.dotfiles/.zshrc /Users/sandricoprovo/.zshrc
ln -s /Users/sandricoprovo/.dotfiles/.gitconfig /Users/sandricoprovo/.gitconfig
ln -s /Users/sandricoprovo/.dotfiles/.prettierrc.js /Users/sandricoprovo/.prettierrc.js
ln -s /Users/sandricoprovo/.dotfiles/.prettierignore /Users/sandricoprovo/.prettierignore
ln -s /Users/sandricoprovo/.dotfiles/.starship.toml /Users/sandricoprovo/.starship.toml
```

4. **Install homebrew & software inside the Brewfile**
```
/bin/bash -c "$(curl -fsSl https://raw.githubusercontent/com/Homebrew/install/HEAD/install.sh)"
brew bundle --file ~/.dotfiles/Brewfile
```

## More TODOs
1. Install starship prompt
2. Install Alfred spotlight replacement
3. Install Visual Studio Code