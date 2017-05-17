fold = require('fold')
fs = require('fs')
lf = require("./localfoldability.coffee")

creasecontents = fs.readFileSync("../creasepattern.fold")
creasefold = JSON.parse(creasecontents)

mvcontents = fs.readFileSync("single_vertex.fold")
mv = JSON.parse(mvcontents)


lf.kawasaki_single_vertex(5, creasefold)
lf.kawasaki_all_vertex(creasefold)

lf.maekawa_all_vertex(mv)

lf.crimpable_single_vertex(0,mv)

