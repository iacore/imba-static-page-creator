import express from 'express'
import {layout} from './page'

const app = express()

app.get(/.*/) do(req, res)
	return res.end(String(layout))

imba.serve app.listen(process.env.PORT or 3000)