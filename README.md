# Casa Lar Emaus
This project is used to manage projects, donations and volunteers of the NGO Casa Lar Emaus. As a visitor, you can see the organizations projects, volunteer, donate items or money. The manager of the NGO is able to access a dashboard to update the data that is shown to visitors and see the requests made in the application (related to projects or donations).

## Getting started
1) Make sure that you have git properly set up in your machine and you have access to Github
2) Open the terminal and clone this project to your machine

```
git clone https://github.com/belisabettega/casalaremaus
```

3) Install a package manager, such as Homebrew (if you use mac)
4) Use rbenv to install the right Ruby version. You can find info about rbenv [here](https://github.com/rbenv/rbenv)
5) You'll also need to have Ruby installed in your machine and running the 2.6.6 version by default
```
rbenv install 2.6.6
rbenv global 2.6.6
```
6) Install Rails 6.0.3.7 (Never do sudo gem install rails even if the terminal tells you so)
```
gem install rails -v 6.0
```
7) If you don't have bundler and yarn installed, you need to run these commands
```
gem install bundler
nvm install 14.15.0
npm install --global yarn
```
8) After that, run the following commands to made all the dependencies available to your application
```
bundle install
yarn install
```
## Licensing
[MIT License](https://choosealicense.com/licenses/mit/#)

Copyright (c) 2021 CasaLarEmaus
