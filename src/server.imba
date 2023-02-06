import {home} from './site/pages'
import express from 'express'
const app = express()
app.get(/.*/) do(req, res) res.end(String(home))
imba.serve app.listen(process.env.PORT or 3000)