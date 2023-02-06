# This function defines an html page layout, it accepts a function which
# returns the page content (usually a single custom tag)

export def layout pageContent
	<html lang="en">
		<head>
			<title> "Cool App"
			<style src="*">
		<body>
			<pageContent()>

