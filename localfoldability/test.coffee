fold = require('fold')
fs = require('fs')
lf = require("./localfoldability.coffee")

creasecontents = fs.readFileSync("../creasepattern.fold")
creasefold = JSON.parse(creasecontents)

mvcontents = fs.readFileSync("single_vertex_1.fold")
mv = JSON.parse(mvcontents)

sv2contents = fs.readFileSync("single_vertex_2.fold")
sv2 = JSON.parse(sv2contents)

sv3contents = fs.readFileSync("single_vertex_3.fold")
sv3 = JSON.parse(sv3contents)


lf.kawasaki_single_vertex(5, creasefold)
lf.kawasaki_all_vertex(creasefold)

lf.maekawa_all_vertex(mv)

lf.crimpable_single_vertex(0,mv)
lf.crimpable_single_vertex(0,sv2)
lf.crimpable_single_vertex(0,sv3)
