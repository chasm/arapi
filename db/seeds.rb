User.destroy_all
Duty.destroy_all
Tag.destroy_all
Article.destroy_all

users = User.create([
  {
    id: SecureRandom.uuid,
    name: "Sam",
    email: "sammy@munat.com"
  },
  {
    id: SecureRandom.uuid,
    name: "Sally",
    email: "sally@munat.com"
  }
])

tags = Tag.create([
  { id: SecureRandom.uuid, name: "red" },
  { id: SecureRandom.uuid, name: "green" },
  { id: SecureRandom.uuid, name: "blue" }
])

duties = Duty.create([
  { id: SecureRandom.uuid, title: "Lie" },
  { id: SecureRandom.uuid, title: "Cheat" },
  { id: SecureRandom.uuid, title: "Steal" }
])

jobs = Job.create([
  {
    id: SecureRandom.uuid,
    user: users[0],
    duty: duties[0],
    starts_on: Date.today - 7.days,
    ends_on: Date.today + 7.days
  },
  {
    id: SecureRandom.uuid,
    user: users[0],
    duty: duties[1],
    starts_on: Date.today - 6.days,
    ends_on: Date.today + 8.days
  },
  {
    id: SecureRandom.uuid,
    user: users[1],
    duty: duties[1],
    starts_on: Date.today - 5.days,
    ends_on: Date.today + 9.days
  },
  {
    id: SecureRandom.uuid,
    user: users[1],
    duty: duties[2],
    starts_on: Date.today - 4.days,
    ends_on: Date.today + 10.days
  }
])

articles = Article.create([
  {
    id: SecureRandom.uuid,
    title: "The First Article",
    body: "This article has a nice body.",
    user: users[0]
  },
  {
    id: SecureRandom.uuid,
    title: "The Other Article",
    body: "This article has a really nice body.",
    user: users[1]
  }
])

comments = Comment.create([
  {
    id: SecureRandom.uuid,
    body: "A comment on the first article",
    user: users[1],
    article: articles[0]
  },
  {
    id: SecureRandom.uuid,
    body: "A comment on the second article",
    user: users[0],
    article: articles[1]
  }
])

Comment.create([
  {
    id: SecureRandom.uuid,
    body: "A comment on the first comment",
    user: users[0],
    comment: comments[0]
  }
])
