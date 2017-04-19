FOLD = require('fold')

lf = exports

lf.kawasaki_single_vertex = (v, fold) ->
	#Takes the index of a single vertex as input, checks the adjacent edges and things, and 
	#returns the foldability of that vertex
	
	vertex_coords = fold.vertices_coords
	adjvertices = FOLD.convert.sort_vertices_vertices(fold)[v] 
	len = adjvertices.length
	#console.log(len)
	anglesum = 0
	for i in [0..len-1]
		j = (i+1)%len
		#console.log(j)
		angle = FOLD.geom.interiorAngle(vertex_coords[adjvertices[j]],vertex_coords[v],vertex_coords[adjvertices[i]])
		#console.log(angle)
		if i%2 is 0
			anglesum += angle
		else
			anglesum -= angle

	#console.log(anglesum)
	if anglesum is 0
		console.log("Vertex ", v, " satisfies the Kawasaki criterion")
		return true
	console.log("Vertex ", v, " does NOT satisfy the Kawasaki criterion")
	return false
		 
		
	
lf.kawasaki_all_vertex = (fold) ->
	#Checks Kawasaki condition on every vertex of a crease pattern

	vertex_coords = fold.vertices_coords
	vertex_num = vertex_coords.length
	flag = true
	for i in [0..vertex_num-1]
		if lf.kawasaki_single_vertex(i, fold) is false
			flag = false
	if flag is true
		console.log("Every vertex in this crease pattern satisfies the Kawasaki criterion")
		return true
	else
		console.log("Not every vertex in this crease pattern satisfies the Kawasaki criterion")
		return false
	
		
lf.maekawa_single_vertex = (v, fold) ->
	#Given an MV assignment, checks Maekawa condition on this vertex
	
	edge_assignment = fold.edge_assignment
	m = 0
	v = 0
	for e in fold.edges_vertices:
		[u,w] = e
		console.log(u, w)
		if u === v ||= w === v:
			if edge_assignment[e] is "B":
				console.log("Vertex ", v, " satisfies the Maekawa condition")
				return true
			if edge_assignment[e] is "M":
				m += 1
			if edge_assignment[e] is "V":
				v += 1
		
	if m-v === 2 ||= v-m === 2:
		console.log("Vertex ", v, " satisfies the Maekawa condition")
		return true
	false
	
	

	
	
