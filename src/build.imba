import {homePage} from './site/homePage'
const fs = require("fs-extra")
const childProcess = require("child_process")
const exec = require("util").promisify(childProcess.exec)


def runBuild

	# run imba build command on the page file (this is necessary to generate css from that file)
	await exec "imba build --web -M --base '/' {__dirname}/site/homePage.imba"
	
	# SSR the html template and index.html into the dist folder
	if await fs.pathExists("{__dirname}/../dist")
		fs.writeFile "{__dirname}/../dist/index.html", String(homePage)


runBuild()