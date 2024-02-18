import HomePage from './site/HomePage'
const fs = require("fs-extra")
const childProcess = require("child_process")
const exec = require("util").promisify(childProcess.exec)

def runBuild

	# run imba build command on the page file (this is necessary to generate css from that file)
	await exec "imba build --web -M -S --base '/' {__dirname}/site/HomePage.imba"
	
	# SSR the html template and index.html into the dist folder
	if await fs.pathExists("{__dirname}/../dist")
		fs.writeFile "{__dirname}/../dist/index.html", String(HomePage)


runBuild()
