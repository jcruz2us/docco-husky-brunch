sysPath = require 'path'

child_process = require 'child_process'

module.exports = class DoccoRunner
	brunchPlugin: yes

	constructor: (@config) ->
		null

	compile: (data, path, callback) ->
		child_process.exec  "node_modules/docco-husky-brunch/node_modules/.bin/docco-husky app", (error, stdout, stderr) ->
			console.log "exec error: " + error  if error isnt null