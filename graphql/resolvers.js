require('dotenv').config()
const { User, Tweet, Like, Reply, Followship } = require('../models')
const { GraphQLError } = require('graphql')

const jwt = require('jsonwebtoken')
const bcrypt = require('bcryptjs')

const resolvers = {
  Query: {
    users: async () => await User.findAll(),
    user: async (_, { id }) => await User.findByPk(id),
    tweets: async () => await Tweet.findAll(),
    tweet: async (_, { id }) => await Tweet.findByPk(id),
    likes: async () => await Like.findAll(),
    like: async (_, { id }) => await Like.findByPk(id),
    replies: async () => await Reply.findAll(),
    reply: async (_, { id }) => await Reply.findByPk(id),
    followships: async () => await Followship.findAll(),
    followship: async (_, { id }) => await Followship.findByPk(id),
  },
  Mutation: {
    signin: async (_root, { account, password }, _context) => {
      try {
        const user = await User.findOne({ where: { account } })
        const validate = await bcrypt.compare(password, user.password)
        if (!validate) {
          throw new GraphQLError('帳號或密碼輸入錯誤!')
        }
        const userData = user.toJSON()
        delete userData.password
        const token = jwt.sign(userData, process.env.JWT_SECRET, { expiresIn: '30d' }) 

        return {
          token,
          user: userData
        }
      } catch (err) {
        console.error(err)
        throw new GraphQLError(err.message)
      }
    },
    createUser: async (_, { account, email, password, name, avatar, introduction, banner, role }) => {
      const hashedPassword = await bcrypt.hash(password, 10)
      const userRole = role || 'user'
      const user = await User.create({ account, email, password: hashedPassword, name, avatar, introduction, banner, role: userRole })
      return user
    },
    createTweet: async (_, { description, userId }) => {
      try {
        const tweet = await Tweet.create({ description, userId })
        return tweet
      } catch(err) {
        console.error(err)
        throw new GraphQLError(err.message)
      }
    },
    createLike: async (_, { userId, tweetId }) => {
      const like = await Like.create({ userId, tweetId })
      return like
    },
    createReply: async (_, { comment, userId, tweetId }) => {
      const reply = await Reply.create({ comment, userId, tweetId })
      return reply
    },
    createFollowship: async (_, { followerId, followingId }) => {
      const followship = await Followship.create({ followerId, followingId })
      return followship
    }
  },
  User: {
    tweets: async (user) => await Tweet.findAll({ where: { userId: user.id } }),
    likes: async (user) => await Like.findAll({ where: { userId: user.id } }),
    replies: async (user) => await Reply.findAll({ where: { userId: user.id } }),
    followers: async (user) => await Followship.findAll({ where: { followingId: user.id } }),
    following: async (user) => await Followship.findAll({ where: { followerId: user.id } })
  },
  Tweet: {
    user: async (tweet) => await User.findByPk(tweet.userId),
    likes: async (tweet) => await Like.findAll({ where: { tweetId: tweet.id } }),
    replies: async (tweet) => await Reply.findAll({ where: { tweetId: tweet.id } })
  },
  Like: {
    user: async (like) => await User.findByPk(like.userId),
    tweet: async (like) => await Tweet.findByPk(like.tweetId)
  },
  Reply: {
    user: async (reply) => await User.findByPk(reply.userId),
    tweet: async (reply) => await Tweet.findByPk(reply.tweetId)
  },
  Followship: {
    follower: async (followship) => await User.findByPk(followship.followerId),
    following: async (followship) => await User.findByPk(followship.followingId)
  }
}

module.exports = resolvers
