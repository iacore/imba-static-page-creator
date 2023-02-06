import {homePage} from './site/homePage'
import express from 'express'
const app = express()
app.get(/.*/) do(req, res) res.end(String(homePage))
imba.serve app.listen(process.env.PORT or 3000)