# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Yt.configure do |config|
  config.api_key = ''
end

users = User.create!([
  {full_name: "Chris", email: "chris@gmail.com", password: "123"},
  {full_name: "Chinh", email: "chinh@gmail.com", password: "123"},
  {full_name: "Ben", email: "ben@gmail.com", password: "123"},
  {full_name: "Ori", email: "ori@gmail.com", password: "123"}])

Category.create!(
                  [{name: "Comedy"},
                  [{name: "Education"},
                  [{name: "Kids"},
                  [{name: "Cooking"},
                  [{name: "Enteraniment"},
                  [{name: "Gaming"},
                    ])

SubCategory.create!([
                                      {category_id: 1, name: "Comedy Central"},
                                      {category_id: 1, name: "Comedy Times"},
                                      {category_id: 1, name: "Laugh Factory"},
                                      {category_id: 1, name: "Smosh"},
                                      {category_id: 1, name: "Fail Army"},
                                      {category_id: 1, name: "College Humor"},
                                      {category_id: 2, name: "Household Hacker"},
                                      {category_id: 2, name: "Discovery"},
                                      {category_id: 2, name: "National Geographic"},
                                      {category_id: 2, name: "Howcast"},
                                      {category_id: 2, name: "Vsauce"},
                                      {category_id: 2, name: "BBC Earth"},
                                      {category_id: 3, name: "Hobby Kids TV"},
                                      {category_id: 3, name: "The Kids Club"},
                                      {category_id: 3, name: "Kids TV"},
                                      {category_id: 3, name: "All 4 Tube Kids"},
                                      {category_id: 3, name: "We Are Busy Beavers"},
                                      {category_id: 3, name: "VideoGyan"}

                                    ])

SubCategory.create!([
                                      {category_id: 4, name: "Munchies"},
                                      {category_id: 4, name: "Rosanna Pansino"},
                                      {category_id: 4, name: "Gordon Ramsay"},
                                      {category_id: 4, name: "Cookies Cupcakes & Cardio"},
                                      {category_id: 4, name: "How to Cook That"},
                                      {category_id: 4, name: "Laura in the Kitchen"},
                                      {category_id: 4, name: "My Cupcake Addiction"},
                                      {category_id: 4, name: "Sanjeev Kapoor Khazana"},
                                      {category_id: 4, name: "Simple Cooking Channel"},
                                      {category_id: 5, name: "Conan"},
                                      {category_id: 5, name: "SNL"},
                                      {category_id: 5, name: "Ellen"},
                                      {category_id: 5, name: "Movieclip Trailer"},
                                      {category_id: 5, name: "TMZ"},
                                      {category_id: 5, name: "Ray William Johnson"},
                                      {category_id: 5, name: "Miranda Sing"},
                                      {category_id: 5, name: "RocketJump"},
                                      {category_id: 5, name: "Jimmy Fallon"},
                                      {category_id: 5, name: "Jimmy Kimmel Live"},
                                      {category_id: 6, name: "Rooster Teeth"},
                                      {category_id: 6, name: "DanTDM"},
                                      {category_id: 6, name: "The Game Theorist"},
                                      {category_id: 6, name: "PopularMMO"},
                                      {category_id: 6, name: "PewDiePie"},
                                      {category_id: 6, name: "Faze Rug"},
                                      {category_id: 6, name: "VanossGaming"},
                                      {category_id: 6, name: "Markiplier"}

                                    ])

##Comedy##
# Pull videos from commedy central and store in our database
channel = Yt::Channel.new id:  'UCUsN5ZwHx2kILm84-jPDeXw'

array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 1, sub_category_id: 1}}
array.each {|data| Video.create!(data)}


# Comedy Time
channel = Yt::Channel.new id:  'UCUg9Iv_KnZwTulS0cEi_mJQ'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 1, sub_category_id: 2}}
array.each {|data| Video.create!(data)}

# Laugh Factory
channel = Yt::Channel.new id:  'UCxyCzPY2pjAjrxoSYclpuLg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 1, sub_category_id: 3}}
array.each {|data| Video.create!(data)}

# SMOSH
channel = Yt::Channel.new id:  'UCY30JRSgfhYXA6i6xX1erWg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 1, sub_category_id: 4}}
array.each {|data| Video.create!(data)}

# Fail Army
channel = Yt::Channel.new id:  'UCPDis9pjXuqyI7RYLJ-TTSA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 1, sub_category_id: 5}}
array.each {|data| Video.create!(data)}

# College Humor
channel = Yt::Channel.new id:  'UCPDXXXJj9nax0fr0Wfc048g'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 1, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

##Education##

# HouseholdHacker - UCI4I6ldZ0jWe7vXpUVeVcpg
channel = Yt::Channel.new id:  'UCI4I6ldZ0jWe7vXpUVeVcpg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 2, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# Discovery - UCqOoboPm3uhY_YXhvhmL-WA
channel = Yt::Channel.new id:  'UCqOoboPm3uhY_YXhvhmL-WA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 2, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# National Geographic - UCpVm7bg6pXKo1Pr6k5kxG9A
channel = Yt::Channel.new id:  'UCpVm7bg6pXKo1Pr6k5kxG9A'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 2, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# Howcast - UCSpVHeDGr9UbREhRca0qwsA
channel = Yt::Channel.new id:  'UCSpVHeDGr9UbREhRca0qwsA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 2, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# Vsauce - UC6nSFpj9HTCZ5t-N3Rm3-HA
channel = Yt::Channel.new id:  'UC6nSFpj9HTCZ5t-N3Rm3-HA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 2, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# BBC Earth - UCwmZiChSryoWQCZMIQezgTg
channel = Yt::Channel.new id:  'UCwmZiChSryoWQCZMIQezgTg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 2, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

##Kids##

# HobbyKidsTV - UCc-2P5tCezbxegb7gxp6EXg
channel = Yt::Channel.new id:  'UCc-2P5tCezbxegb7gxp6EXg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 3, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# The Kids Club - UC_pZxiIq8BRJwG55Wt83WOw
channel = Yt::Channel.new id:  'UC_pZxiIq8BRJwG55Wt83WOw'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 3, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# Kids TV - UC7Pq3Ko42YpkCB_Q4E981jw
channel = Yt::Channel.new id:  'UC7Pq3Ko42YpkCB_Q4E981jw'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 3, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# All 4 Tube Kids - UCAsMIu8JRvINkUa09iyS2Cw
channel = Yt::Channel.new id:  'UCAsMIu8JRvINkUa09iyS2Cw'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 3, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# We Are Busy Beavers - UCbt63GNsB5wet6NO3dmhssA
channel = Yt::Channel.new id:  'UCbt63GNsB5wet6NO3dmhssA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 3, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

# VideoGyan - UCs0upBDG-dCAxy8_VDPE5XA
channel = Yt::Channel.new id:  'UCs0upBDG-dCAxy8_VDPE5X'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 3, sub_category_id: 6}}
array.each {|data| Video.create!(data)}

##Cooking##

# Munchies - UCaLfMkkHhSA_LaCta0BzyhQ
channel = Yt::Channel.new id:  'UCaLfMkkHhSA_LaCta0BzyhQ'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# Rosanna Pansino - UCjwmbv6NE4mOh8Z8VhPUx1Q
channel = Yt::Channel.new id:  'UCjwmbv6NE4mOh8Z8VhPUx1Q'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# Gordon Ramsay - UCIEv3lZ_tNXHzL3ox-_uUGQ
channel = Yt::Channel.new id:  'UCIEv3lZ_tNXHzL3ox-_uUGQ'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# Cookies Cupcakes and Cardio - UCg-YSRB6TsIq-c5PUZ0F1Jg
channel = Yt::Channel.new id:  'UCg-YSRB6TsIq-c5PUZ0F1Jg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# How to Cook That - UCsP7Bpw36J666Fct5M8u-ZA
channel = Yt::Channel.new id:  'UCsP7Bpw36J666Fct5M8u-ZA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# Laura in the Kitchen - UCNbngWUqL2eqRw12yAwcICg
channel = Yt::Channel.new id:  'UCNbngWUqL2eqRw12yAwcICg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# My Cupcake Addiction - UCxytOEPP99jj8mqVGAO7haQ
channel = Yt::Channel.new id:  'UCxytOEPP99jj8mqVGAO7haQ'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# Sanjeev Kapoor Khazana - UCmoX4QULJ9MB00xW4coMiOw
channel = Yt::Channel.new id:  'UCmoX4QULJ9MB00xW4coMiOw'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

# Simple Cooking Channel - UCsWpnu6EwIYDvlHoOESpwYg
channel = Yt::Channel.new id:  'UCsWpnu6EwIYDvlHoOESpwYg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 4, sub_category_id: 9}}
array.each {|data| Video.create!(data)}

##Enterainment##

# Conan - UCi7GJNg51C3jgmYTUwqoUXA
channel = Yt::Channel.new id:  'UCi7GJNg51C3jgmYTUwqoUXA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# SNL - UCqFzWxSCi39LnW1JKFR3efg
channel = Yt::Channel.new id:  'UCqFzWxSCi39LnW1JKFR3efg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# Ellen - UCp0hYYBW6IMayGgR-WeoCvQ
channel = Yt::Channel.new id:  ' UCp0hYYBW6IMayGgR-WeoCvQ'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# Movieclip Trailer - UCi8e0iOVk1fEOogdfu4YgfA
channel = Yt::Channel.new id:  'UCi8e0iOVk1fEOogdfu4YgfA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# TMZ - UCK7IIV6Q2junGSdYK3BmZMg
channel = Yt::Channel.new id:  'UCK7IIV6Q2junGSdYK3BmZMg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# Ray William Johnson - UCGt7X90Au6BV8rf49BiM6Dg
channel = Yt::Channel.new id:  'UCGt7X90Au6BV8rf49BiM6Dg'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# Miranda Sing - UC1OFDlfdRb6ma1ZGZd07gWA
channel = Yt::Channel.new id:  'UC1OFDlfdRb6ma1ZGZd07gWA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# RocketJump - UCDsO-0Yo5zpJk575nKXgMVA
channel = Yt::Channel.new id:  '0Yo5zpJk575nKXgMVA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# Jimmy Fallon - UC8-Th83bH_thdKZDJCrn88g
channel = Yt::Channel.new id:  'Th83bH_thdKZDJCrn88g'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

# Jimmy Kimmel Live - UCa6vGFO9ty8v5KZJXQxdhaw
channel = Yt::Channel.new id:  'UCa6vGFO9ty8v5KZJXQxdhaw'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 5, sub_category_id: 10}}
array.each {|data| Video.create!(data)}

##Gaming##

# Rooster Teeth - UCzH3iADRIq1IJlIXjfNgTpA
channel = Yt::Channel.new id:  'UCzH3iADRIq1IJlIXjfNgTpA'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

# DanTDM - UCS5Oz6CHmeoF7vSad0qqXfw
channel = Yt::Channel.new id:  'UCS5Oz6CHmeoF7vSad0qqXfw'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

# The Game Theorists - UCo_IB5145EVNcf8hw1Kku7w
channel = Yt::Channel.new id:  'UCo_IB5145EVNcf8hw1Kku7w'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

# PopularMMO - UCpGdL9Sn3Q5YWUH2DVUW1Ug
channel = Yt::Channel.new id:  'UCpGdL9Sn3Q5YWUH2DVUW1Ug'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

# PewDiePie - UC-lHJZR3Gqxm24_Vd_AJ5Yw
channel = Yt::Channel.new id:  'UC-lHJZR3Gqxm24_Vd_AJ5Yw'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

# Faze Rug - UCilwZiBBfI9X6yiZRzWty8Q
channel = Yt::Channel.new id:  'UCilwZiBBfI9X6yiZRzWty8Q'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

# VanossGaming - UCKqH_9mk1waLgBiL2vT5b9g
channel = Yt::Channel.new id:  'UCKqH_9mk1waLgBiL2vT5b9g'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

# Markiplier - UC7_YxT-KID8kRbqZo7MyscQ
channel = Yt::Channel.new id:  'UC7_YxT-KID8kRbqZo7MyscQ'
array = []
channel.videos.take(100).each {|video| array << {youtube_id: video.id, title: video.title, description: video.description, thumbnail_url: video.thumbnail_url, embed_url: video.embed_html, category_id: 6, sub_category_id: 8}}
array.each {|data| Video.create!(data)}

