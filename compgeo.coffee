FOLD = require('fold')
ds = require("./data_structures.coffee")
cg = exports


cg.get_lowest_edge(fold) ->
	edges_vertices = FOLD.edges_vertices
	vertices_coords = FOLD.vertices_coords

	max_pos = 0
	for edge,i in edges_vertices
		[u,v] = edge
		x_pos = (vertices_coords[u][0]+vertices_coords[v][0])/2
		if x_pos >= max_pos
			max_edge = i
			max_pos = x_pos
	return max_edge

cg.bf_convex_hull(fold) ->
	#Based on the set of vertex coordinates, returns a binary list
	#1 means it is on the convex hull, 0 interior

	#Start by getting the "lowest" edge, because this is guaranteed to
	#be in the hull. Then, have a function that uses the most recent edge
	#and computes the angles to every other point
	
	#Then, just iterate this, which takes O(nh) time and is nice

	edge = cg.get_lowest_edge(fold)
	
	for v in [0..len(FOLD.

cg.point_linesegment_orientation(a, b, c) ->
	#Checks if a is on the left or right of the directed
	#line segment from b to c

	#returns 1 if it's on the left and 
	#returns -1 if it's on the right
	if FOLD.geom.interiorAngle(a, b, c) > 0
		return 1
	return -1

cg.point_inside_angle(a,b,c,d) ->
	#Checks if a is inside the angle bcd 
	#(on the left of cd and on the right of bc)
	
	if cg.point_linesegment_orientation(a,c,d) is 1 and cg.point_linesegment_orientation(a,b,c) is -1
		return 1
	return 0
	
cg.melkman = (fold) ->
	#Given a polyline, computes the convex hull
	sorted_graph_vertices = FOLD.geom.sortByAngle(fold.graph_vertices)
	Q = new ds.deque
	Q.head_push(sorted_graph_vertices[1])
	Q.head_push(sorted_graph_vertices[0])
	Q.head_push(sorted_graph_vertices[1])

	for i in [3..len(sorted_graph_vertices)-1]
		p = sorted_graph_vertices[i]
		if cg.point_inside_angle(p,Q.
		while cg.point_linesegment_orientation(p,Q.tail.value,Q.tail.next.value) is 1
			Q.tail_pop()
		while cg.point_linesegment_orientation(p,Q.head.value,Q.head.prev.value) is -1
			Q.head.pop()
		Q.head.push(p)
		Q.tail.push(p)
	
	
	

	
	
	
	
	
	

	 
