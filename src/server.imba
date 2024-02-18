import HomePage from './site/HomePage'
import express from 'express'
const app = express()
app.get(/.*/) do(req, res) res.end(String(HomePage))
imba.serve app.listen(process.env.PORT or 3000)