# here is where ill create some seed data to work with and test associations


# Create 3 users

cameron = User.create(name: "Cameron", email: "Camnn3@yahoo.com", password: "password")
shalyse = User.create(name: "Shalyse", email: "Shalyse@yahoo.com", password: "password1")
vanessa = User.create(name: "Vanessa", email: "Vnewman@yahoo.com", password: "password2")

# Create a couple tweets

Tweet.create(content: "We are streaming today!", user_id: cameron.id)

# Using AR data

cameron.tweet.create(content: "It's cold outside")
shalyse.tweet.create(content: "I really cant stay!")

# .create should already have the users associated in the database

vanessas_tweet = vanessa.tweet.build(content: "Hope you are having a good day!")
vanessas_tweet.save

# .build doesnt stay to the database so we have to save it 