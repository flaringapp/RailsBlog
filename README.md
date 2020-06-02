# README

Simple blog written with Ruby on Rails

Check out [demo video on YouTube](https://youtu.be/z0W84ZOGJkY) 

![Preview image](https://i.ibb.co/hCW8dmf/image.png)

P.S. commits are spammed with cache files :no_mouth:. I just forgot to use gitignore. And used RubyMine. So yes. It's JetBrains. Tons of cache files :dizzy_face:

**Note!**

Select image fields are dumb - UI is not updated after picking image - so don't be confused about it  

**Entities:**

* User { id, email, nickname, avatar, description }
* Post { id, image, message }
* Like { id, userId, postId }

**Pages:**

* Home (actually no design, simply 2 buttons)
* Login that supports entering either email or nickname (and password of course :grin:)
* Registration page with email, password, nick, avatar, description
* Feed with posts
* Create post

**Fetures:**

* Each form has validation (made by redirection tho, so forms are cleared if smth is invalid :confused:)
* Active storage used for saving images
* Authorization, registration
* Likesssss :+1:
* Simple and kinda minimalistic design

**Known issues:**

* SVG not supported

Hope you enjoy it :yum:
