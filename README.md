# 📚 Swip'eat web app

Swip'eat is a Tinder-like app for food lovers who wants to discover new meals around them with a fun user experience. You can easily swipe photos of meals, keep them in your favorites list and book a table in the restaurant to taste it. We wanted to focus on showing the meals instead of the restaurants like others booking app do (TheFork, TripAdvisor...).  

This app has been developed during Le Wagon's Bootcamp in the last two weeks by a team of 4 developers including me. We pitched it during the DemoDay (last day of the bootcamp) in front of external people. 

Here are some screenshots: 

![Mockup Swipeat](https://user-images.githubusercontent.com/107474450/211295185-0d596142-47e1-4d34-8334-027a8b99bc40.png)

## Main Features

- User authentication (with [Devise](https://github.com/heartcombo/devise) gem)
- Tinder-like swipe animation with Javascript (with the [HammerJS](https://hammerjs.github.io/) package)
- Filter by food categories in the homepage (with [Tom Select](https://tom-select.js.org/) package)
- A complete user journey to create a favorites list, book a meal, ask questions to the restaurant owner and leave reviews on the meals already eaten.
- All the user's favorites displayed on a map (with [Mapbox](https://www.mapbox.com/) API)

## Getting Started in local
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_own_mapbox_api_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server with javascript
```
dev
```

## Built With

- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members

- [Antoine Berson](https://github.com/AntSonOne)
- [Aimeric Marchau](https://github.com/Aimeric33)
- [Charlène Nicol](https://github.com/Clerehna)
- [Georges Ryssen](https://github.com/georgesryssen)
