# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(
  [
    {
      title: 'Man must explore, and this is exploration at its greatest',
      content: 'Problems look mighty small from 150 miles up',
      author: 'Jury',
      likes: 22,
      published_at: Time.now
    },
    {
      title: 'I believe every human has a finite number of heartbeats. I don\'t intend to waste any of mine.',
      content: nil,
      author: 'Jury',
      likes: 10,
      published_at: Time.now - 1.week
    },
    {
      title: 'Science has not yet mastered prophecy',
      content: 'We predict too much for the next year and yet far too little for the next ten.',
      author: nil,
      likes: 44,
      published_at: Time.now - 2.week
    },
    {
      title: 'Failure is not an option',
      content: 'Many say exploration is part of our destiny, but it’s actually our duty to future generations.',
      author: 'Jury',
      likes: 9,
      published_at: Time.now - 13.week
    }
  ]
)
