if (process.env.NODE_ENV !== 'production') {
  require('dotenv').config()
}
const path = require('path')
const express = require('express')
const routes = require('./routes')
const methodOverride = require('method-override')
const app = express()
const port = process.env.PORT || 3080
const cors = require('cors')

app.use(express.urlencoded({ extended: true }))
app.use('/upload', express.static(path.join(__dirname, 'upload')))
app.use(methodOverride('_method'))
app.use(express.json())

app.use(
  cors({
    origin: '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
    credentials: true,
    preflightContinue: false
  })
)

const startApolloServer = require('./graphql/apolloServer')
startApolloServer(app).then(() => {
  console.log('Apollo Server started')
}).catch(err => {
  console.error('Error starting Apollo Server:', err)
})


app.use(routes)
app.get('/', (req, res) => res.send('Hello Kitty - Users/Tweets Done'))
app.listen(port, () => console.log(`Example app listening on port ${port}!`))

module.exports = app
