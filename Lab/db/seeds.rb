# Seed Users
users_data = [
  { username: "marceline", name: "Marceline Singer", bio: "Cyclist, musician" },
  { username: "finn", name: "Finn Alberts", bio: "Adventurer and hero, defender of good" },
  { username: "pb", name: "Paul Barium", bio: "Scientist, cake lover" },
  { username: "jake", name: "Jake Storm", bio: "Soccer fan, sky diver" }
]
User.create!(users_data)

# Seed MThreads
threads_data = [
  { title: "Did you see the Brazil game?", user_id: 4 },
  { title: "New French bakery opening in the neighborhood tomorrow", user_id: 3 },
  { title: "In search of a new guitar", user_id: 1 }
]
MThread.create!(threads_data)

# Seed Posts
posts_data = [
  { m_thread_id: 1, text: "That last goal was awesome!", user_id: 4 },
  { m_thread_id: 1, text: "Yes, the way the ball swerved... What talent!", user_id: 2 },
  { m_thread_id: 2, text: "I have to try their tarts!", user_id: 3 },
  { m_thread_id: 2, text: "I'm planning to stop by in the morning to try their croissants.", user_id: 2 },
  { m_thread_id: 2, text: "I could go for a chocolate eclair!", user_id: 1 },
  { m_thread_id: 3, text: "I need a new acoustic guitar at a good price.", user_id: 1 }
]
Post.create!(posts_data)