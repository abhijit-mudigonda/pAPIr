FOLD = require('fold')
ch = require("./convex_hull.coffee")

simple_fac = exports

simple_fac.main = (fold) ->
	#Given a graph and a paper, if the graph is simple-fold-and-cuttable
	#returns the folded state 

	#graph_vertices, graph_edges are G
	#paper_vertices, paper_edges are P
	
	

	#STEP 1 - Fold down to convex hull
		#Step 1a) Compute convex hull points
		#Step 1b) Fold down to the convex hull
			#Do this by just doing all the epsilon crimps
	#STEP 2 - Find feasible folds that hit a non-endpoint vertex/edge
		#Step 2a) Go through graph_vertices and graph_edges. For each one,
			 #fold about it and check to see if the new graph is a 
			 #subset of the old (so check if new graph vertices
			 #overlap new ones

			 #another way is to transform point by point
			 #by writing the transformation matrix
		#Step 2b) If you find a fold that you can make, MAKE IT!
	#STEP 3 -- Terminal edge folds
		#Step 3a) 


