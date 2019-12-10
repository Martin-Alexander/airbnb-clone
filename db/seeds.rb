User.destroy_all
Flat.destroy_all

martin = User.create!(
  full_name: "Martin Alexander",
  remote_profile_picture_url: "https://res.cloudinary.com/dr6nzroni/image/upload/v1575929184/paris_by0zxn.jpg",
  email: "martin@email.com",
  password: "123456"
)

mg = User.create!(
  full_name: "Marie Gabrielle",
  remote_profile_picture_url: "https://res.cloudinary.com/dr6nzroni/image/upload/v1575929199/mg_tdhkju.jpg",
  email: "billybob@email.com",
  password: "123456"
)

adam = User.create(
  full_name: "Adam Caglessi",
  remote_profile_picture_url: "https://i.ytimg.com/vi/-F4qw1jNazc/hqdefault.jpg",
  email: "imitalian@email.com",
  password: "123456"
)

roberta = User.create(
  full_name: "Roberta Su",
  remote_profile_picture_url: "https://asset.barrons.com/public/resources/images/ON-CL455_Zhouqu_G_20180308134858.jpg",
  email: "imchinese@email.com",
  password: "123456"
)

mgs_flat = Flat.create!(
  description: "Cozy flat in the heart of Old Montreal",
  long_description: "This is a really good flat. I like it a lot and when you see it I think that you’ll like it to. There is really nothing wrong with it. It’s very nice, please come over and book it. It would be really cool if you were to do so. There are some many details about this flat that I could go on and on about. I have some many things to say and I am taking the time right now to list them all out for you. I hope you enjoy your stary it’s very nice of you to have considered visiting this page and considering booking this amazing flat of mine. Thanks so much, take care and have a great time doing whatever it is you’re doing.",
  latitude: 45.4967209,
  longitude: -73.562127,
  address: "720 Rue Saint Maurice, Montréal, QC",
  remote_main_photo_url: "https://res.cloudinary.com/dr6nzroni/image/upload/v1575928948/150739464_sqs1yd.jpg",
  user: mg
)

FlatTag.create(flat: mgs_flat, tag_type: "Pets Allowed")
FlatTag.create(flat: mgs_flat, tag_type: "Family Friendly")
FlatTag.create(flat: mgs_flat, tag_type: "Single Bedroom")

Review.create!(
  title: "An all around great flat",
  content: "I have to say that I was really impressed by this flat. It had all of the things that a flat should. I would recommend it to anyone who is looking for a flat. My favourite thing about the flat was the windows and floors and walls.",
  stars: 5,
  user: roberta,
  flat: mgs_flat
)

Review.create!(
  title: "Greate, but neighbours were noisy",
  content: "I had a really great time because of this flat. It was really cool and I liked it. A great flat. I really liked it. Thanks so much!",
  stars: 4,
  user: adam,
  flat: mgs_flat
)