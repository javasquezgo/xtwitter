# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(user_name: "user2", full_name: "User Two", password: "passw+-+12abB12wdwwdword456")
User.create(user_name: "johndoe", full_name: "John Doe", password: "pass+-+12abB12wdwwdwword123")
User.create(user_name: "user1", full_name: "User One", password: "passw+-+12abB12wdwwdword123")
User.create(user_name: "janedoe", full_name: "Jane Doe", password: "let+-+12abB12wdwwdwmein")
User.create(user_name: "bobsmith", full_name: "Bob Smith", password: "secu+-+12abB12wdwwdwrepassword")
User.create(user_name: "alicesmith", full_name: "Alice Smith", password: "123+-+12abB12wdwwdw456")
User.create(user_name: "michaelbrown", full_name: "Michael Brown", password: "pas+-+12abB12wdwwdwsword456")
User.create(user_name: "sarahtaylor", full_name: "Sarah Taylor", password: "sa+-+12abB12wdwwdwrah123")
User.create(user_name: "davidlee", full_name: "David Lee", password: "davi+-+12abB12wdwwdwd456")
User.create(user_name: "oliviaclark", full_name: "Olivia Clark", password: "oli+-+12abB12wdwwdwvia789")
User.create(user_name: "emilywong", full_name: "Emily Wong", password: "emil+-+12abB12wdwwdwy+-+12abB12wdwwdwpass")
User.create(user_name: "danielkim", full_name: "Daniel Kim", password: "dan+-+12abB12wdwwdwiel777")
User.create(user_name: "johndoe", full_name: "John Doe", password: "passwo+-+12abB12wdwwdwrd123", created_at: Time.now, updated_at: Time.now)
User.create(user_name: "janedoe", full_name: "Jane Doe", password: "letme+-+12abB12wdwwdwin", created_at: Time.now, updated_at: Time.now)
User.create(user_name: "bobsmith", full_name: "Bob Smith", password: "secur+-+12abB12wdwwdwepassword", created_at: Time.now, updated_at: Time.now)
User.create(user_name: "alicesmith", full_name: "Alice Smith", password: "123+-+12abB12wdwwdw456", created_at: Time.now, updated_at: Time.now)
User.create(user_name: "michaelbrown", full_name: "Michael Brown", password: "pass+-+12abB12wdwwdwword456", created_at: Time.now, updated_at: Time.now)

=begin
Tweet.create(content: "Este es el primer tweet.", created_at: Time.now, updated_at: Time.now, user_id: 1)
Tweet.create(content: "¡Hola, Twitter!", created_at: Time.now, updated_at: Time.now, user_id: 2)
Tweet.create(content: "Esto es un retweet.", created_at: Time.now, updated_at: Time.now, user_id: 3)
Tweet.create(content: "Citando un tweet.", created_at: Time.now, updated_at: Time.now, user_id: 4)
Tweet.create(content: "Respondiendo a un tweet.", created_at: Time.now, updated_at: Time.now, user_id: 5)
Tweet.create(content: "Otro tweet interesante.", created_at: Time.now, updated_at: Time.now, user_id: 1)
Tweet.create(content: "Twitter es increíble.", created_at: Time.now, updated_at: Time.now, user_id: 2)
Tweet.create(content: "Probando retweets.", created_at: Time.now, updated_at: Time.now, user_id: 3)
Tweet.create(content: "Una cita interesante.", created_at: Time.now, updated_at: Time.now, user_id: 4)
Tweet.create(content: "Último tweet del día.", created_at: Time.now, updated_at: Time.now, user_id: 5)

Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 1, user_id: 1)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 2, user_id: 2)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 3, user_id: 3)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 4, user_id: 4)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 5, user_id: 5)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 1, user_id: 2)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 2, user_id: 3)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 3, user_id: 4)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 4, user_id: 5)
Like.create(created_at: Time.now, updated_at: Time.now, tweet_id: 5, user_id: 1)

Bookmark.create(user_id: 1, tweet_id: 1, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 2, tweet_id: 2, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 3, tweet_id: 3, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 4, tweet_id: 4, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 5, tweet_id: 5, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 1, tweet_id: 6, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 2, tweet_id: 7, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 3, tweet_id: 8, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 4, tweet_id: 9, created_at: Time.now, updated_at: Time.now)
Bookmark.create(user_id: 5, tweet_id: 10, created_at: Time.now, updated_at: Time.now)

Retweet.create(user_id: 1, tweet_id: 1, reply_text: "¡Gran tweet!", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 2, tweet_id: 2, reply_text: "Totalmente de acuerdo.", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 3, tweet_id: 3, reply_text: "Me encanta esto.", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 4, tweet_id: 4, reply_text: "Compartiendo este contenido.", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 5, tweet_id: 5, reply_text: "¡Definitivamente vale la pena retweetear!", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 1, tweet_id: 6, reply_text: "Interesante perspectiva.", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 2, tweet_id: 7, reply_text: "Gracias por compartir.", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 3, tweet_id: 8, reply_text: "Esto es increíble.", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 4, tweet_id: 9, reply_text: "Totalmente inspirador.", created_at: Time.now, updated_at: Time.now)
Retweet.create(user_id: 5, tweet_id: 10, reply_text: "¡No puedo dejar de retweetear esto!", created_at: Time.now, updated_at: Time.now)

Hashtag.create(name: "rubyonrails")
Hashtag.create(name: "webdevelopment")
Hashtag.create(name: "programming")

User.create(user_name: "john_doe", full_name: "John Doe", password: "password123")
User.create(user_name: "jane_doe", full_name: "Jane Doe", password: "password456")
User.create(user_name: "bob_smith", full_name: "Bob Smith", password: "password789")
User.create(user_name: "mary_jones", full_name: "Mary Jones", password: "passwordabc")
User.create(user_name: "peter_parker", full_name: "Peter Parker", password: "passworddef")
User.create(user_name: "susan_davis", full_name: "Susan Davis", password: "passwordghi")
User.create(user_name: "david_smith", full_name: "David Smith", password: "passwordjkl")
User.create(user_name: "lisa_johnson", full_name: "Lisa Johnson", password: "passwordmno")
User.create(user_name: "michael_brown", full_name: "Michael Brown", password: "passwordpqr")
User.create(user_name: "sarah_williams", full_name: "Sarah Williams", password: "passwordstu")

Tweet.create(content: "This is my first tweet!", user_id: 1)
Tweet.create(content: "Just had an amazing meal.", user_id: 2)
Tweet.create(content: "Excited for the weekend!", user_id: 3)
Tweet.create(content: "Watching a great movie.", user_id: 4)
Tweet.create(content: "Listening to my favorite song.", user_id: 5)
Tweet.create(content: "Visiting an art gallery today.", user_id: 6)
Tweet.create(content: "Fashion show tonight!", user_id: 7)
Tweet.create(content: "Starting a new fitness routine.", user_id: 8)
Tweet.create(content: "Business meeting in progress.", user_id: 9)
Tweet.create(content: "Health is wealth!", user_id: 10)

Follower.create(user_id: 1, followers: 2, following: 3)
Follower.create(user_id: 2, followers: 3, following: 1)
Follower.create(user_id: 3, followers: 1, following: 2)
Follower.create(user_id: 4, followers: 2, following: 1)
Follower.create(user_id: 5, followers: 1, following: 3)
Follower.create(user_id: 6, followers: 3, following: 2)
Follower.create(user_id: 7, followers: 2, following: 3)
Follower.create(user_id: 8, followers: 1, following: 2)
Follower.create(user_id: 9, followers: 3, following: 1)
Follower.create(user_id: 10, followers: 1, following: 3)
Follower.create(user_id: 1, followers: 15, following: 2)

Quote.create!(
    user_id: 1,
    tweet_id: 1,
    content: "Estoy de acuerdo con tu post."
  )
  
  Quote.create!(
    user_id: 2,
    tweet_id: 3,
    content: "Estoy totalmente en contra."
  )

  Quote.create!(
    user_id: 3,
    tweet_id: 2,
    content: "Creo que tu punto de vista es muy interesante."
  )
  
  Quote.create!(
    user_id: 4,
    tweet_id: 4,
    content: "Nunca lo había visto desde esa perspectiva."
  )
  
  Quote.create!(
    user_id: 1,
    tweet_id: 5,
    content: "Totalmente de acuerdo contigo."
  )
  
  Quote.create!(
    user_id: 2,
    tweet_id: 6,
    content: "Tu opinión me hace reflexionar."
  )

  Quote.create!(
    user_id: 5,
    tweet_id: 8,
    content: "Estoy de acuerdo contigo, es un tema muy importante."
  )
  
  Quote.create!(
    user_id: 3,
    tweet_id: 10,
    content: "Tu perspectiva me ha ayudado a entender mejor el tema."
  )
  
  Quote.create!(
    user_id: 2,
    tweet_id: 12,
    content: "No puedo evitar pensar en esto constantemente."
  )
  
  Quote.create!(
    user_id: 4,
    tweet_id: 14,
    content: "Tus palabras me inspiran a seguir adelante."
  )
  
  Quote.create!(
    user_id: 1,
    tweet_id: 16,
    content: "Eres una fuente constante de inspiración."
  )
  
  Quote.create!(
    user_id: 6,
    tweet_id: 18,
    content: "Gracias por compartir tus pensamientos con nosotros."
  )
  
  Quote.create!(
    user_id: 7,
    tweet_id: 20,
    content: "Este es un tema que merece más atención."
  )
  
  Quote.create!(
    user_id: 8,
    tweet_id: 22,
    content: "Completamente de acuerdo, es fundamental comprenderlo."
  )
  
  Quote.create!(
    user_id: 9,
    tweet_id: 24,
    content: "Tus palabras son un faro en medio de la oscuridad."
  )
  
  Quote.create!(
    user_id: 10,
    tweet_id: 26,
    content: "No puedo evitar pensar en esto constantemente."
  )
    
  Tweet.create!(
    content: "¡Hola, mundo!",
    user_id: 1
  )
  
  Tweet.create!(
    content: "Hoy es un día maravilloso.",
    user_id: 2
  )
  
  Tweet.create!(
    content: "Estoy emocionado por lo que viene.",
    user_id: 3
  )
  
  Tweet.create!(
    content: "Disfrutando de un buen libro.",
    user_id: 4
  )
  
  Tweet.create!(
    content: "La vida es bella.",
    user_id: 5
  )
  
  Tweet.create!(
    content: "Aprovechando al máximo cada momento.",
    user_id: 6
  )
  
  Tweet.create!(
    content: "Compartiendo ideas y conocimientos.",
    user_id: 7
  )
  
  Tweet.create!(
    content: "Agradecido por todo lo que tengo.",
    user_id: 8
  )
  
  Tweet.create!(
    content: "Siempre buscando aprender algo nuevo.",
    user_id: 9
  )
  
  Tweet.create!(
    content: "Dando lo mejor de mí en todo lo que hago.",
    user_id: 10
  )
=end  