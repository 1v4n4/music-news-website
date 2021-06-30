# DO - Music news website

"Do" is a music news website with a homepage for highlighted articles, five category pages (Cover story, News, Interviews, Live, Reviews), and a few others.
There are six articles on a homepage, the most popular one (the article which users voted the most), and five latest articles from all categories.
Each category page has four of the most recent articles, along with their images, titles (truncated if needed), author's name, a preview of text, the number of votes, and a Read more link.
If logged in, the user can vote for articles from this and few other pages. Visitors can vote only once for each article, but it is not forbidden to support their creations.
Authors can edit and delete their articles, but not other people's.
![Screenshot1](https://user-images.githubusercontent.com/65791349/123562058-8c1d2880-d7ac-11eb-883e-4f0228e46630.png)
![Screenshot3](https://user-images.githubusercontent.com/65791349/123602255-d926ec00-d7f8-11eb-9072-80d6698e2984.png)
![screenshot2](https://user-images.githubusercontent.com/65791349/123602284-de843680-d7f8-11eb-96ee-bd32d81693ad.png)

## Live demo
[Do on Heroku](https://glacial-spire-65889.herokuapp.com)

## Built With

- Ruby 3.0.1
- Rails 6.1.3.2
- PostgreSQL 1.1
- Node.js 12.22.1
- Yarn 1.22.5
- Bootstrap
- CSS
- HTML

## Getting Started
### To get a local copy run the following steps:

- [Copy this link](https://github.com/1v4n4/music-news-website.git)
- Open your terminal or command line
- Run `git clone` and Paste the link
- Open the folder with your code editor
- Run `bundle install` to install all dependencies
- Run `yarn install` to install yarn
- Run `rails webpacker:install`
- Run `rails db:create` to create the database tables
- Run `rails db:migrate` to migrate the database
- Run `rails db:seed` to seed the database with default values for article's categories
- Run `rails server` to open the local server
- You can follow the nav links to create a user account, to add articles, or vote

## Gems needed

- Rails Rspec
To run the tests, run `rspec` command in the root folder.

- CarrierWave
 For uploading pictures run `gem install carrierwave` and `rails generate uploader`.

## Ruby Linter
Run `rubocop`

## Run CSS Linter
Run `npx stylelint "**/*.scss"`

## Author
👤 **Ivana Novaković-Leković**

- GitHub: [@githubhandle](https://github.com/1v4n4)
- Twitter: [@twitterhandle](https://twitter.com/codeIv1)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/1v4n4/)


## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/1v4n4/music-news-website/issues).

## Acknowledgments
The design of this project is based on an idea by [Nelson Sakwa](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version)
Sample articles and pictures are taken from websites NME, Kerrang!, Guardian, Rolling Stone, Spin, and Loudwire.

## License
MIT

## Show your support

Give a ⭐️ if you like this project!

