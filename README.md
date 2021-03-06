# viki-twitter

This is a simple MVP twitter clone application project written on ruby on rails. The project test basic concepts of MVC application architecture. It involves, installation and configuration of ruby on rails, use of models, controllers, associations, views, routers and database. It also tests implementation of rspec in intergrated and unit tests

![twitter](https://user-images.githubusercontent.com/42869046/124349640-d3664780-dbf8-11eb-83fc-570c644bfed1.JPG)

## Built With

- Ruby

## Live Demo

[Live Demo Link](https://vikita-twitter.herokuapp.com/)

## Getting Started

- Ensure you have rails installed by running `rails -v`. Otherwise run `gem install rails`
- Click on the `Code` green button
- By the right end of the read-only input containing the repository link click the clipboard icon to copy the link
- In your local PC, open your terminal in the folder you would like to clone the repository into
- Clone the repository with the command: `git clone (copied link)`; like so: `git clone https://github.com/vikitaotiz/viki-twitter.git`
- After the clone, type in the command `cd viki-twitter` to access the app directory on the terminal
- Then run `bundle install` to install all the required dependencies
- Then run `npm install` to avoid this error 'Webpacker::Manifest::MissingEntryError in posts#index'
- Run `rails db:create db:migrate`
- Run `rails server` to spin up a development server
- Once the server is up, open this link 'http://127.0.0.1:3000' on your browser

### Tests

#### Unit tests

- Navigate into the app directory, `cd viki-twitter`
- Then run `rails db:migrate db:test:prepare`
- Then run `rspec --format doc`. This will display detailed information about models and test results.

#### Integration tests

- Run `rails test`

### Features

- User can login/signup.
- User can see landing page.
- User can see the other users to follow.
- User can follow users.
- User can create and post tweets.
- User can see others tweets if he or she follows them.
- User can comment on his/her or other users' tweets.
- User can like/dislike his/her or other users' tweets.
- User can go to profile page.
- User can see profile details.
- User can upload profile and cover images.

## Authors

:bust_in_silhouette: **Victor Otieno**

- GitHub: [@githubhandle](https://github.com/vikitaotiz)
- Twitter: [@twitterhandle](https://twitter.com/victoro29641869)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/victor-otieno-22ba7773/)

## :handshake: Contributing

Contributions, issues, and feature requests are welcome!
Feel free to contribute

## Show your support

Give a ?????? if you like this project!
