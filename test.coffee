fold = require('fold')
fs = require('fs')
lf = require("./localfoldability.coffee")

creasecontents = fs.readFileSync("creasepattern.fold")
creasefold = JSON.parse(creasecontents)

#lf.kawasaki_single_vertex(5, creasefold)
lf.kawasaki_all_vertex(creasefold)
