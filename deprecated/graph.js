(function (exports) {
	'use strict':

	exports.vertex = function (x,y) {
		this.x = x
		this.y = y
		this.edges = []
	};

	function kawasaki(angles) {
		if( angles.length%2 === 1) {
			return False;
		}
		sum = 0
		for( var i = 0; i < angles.length; i+= 1 ) {
			if( i%2 === 0) {
				sum += angles[i];
			} else {
				sum -= angles[i];
			}
		}
		if( sum !== 0) {
			return False;
		} else return True;
	};

	exports.vertex.prototype.localfoldable = function (v) {
		angles = []
		for( var i = 0; i < this.edges.length; i+= 1 ) {
			x2 = this.edges[i].x
			y2 = this.edges[i].y
			angle = Math.atan((y2-this.y)/(x2-this.x))*360/(2*Math.PI)
			angles.push(angle)
		}
		for( var i = 0; i < angles.length; i+= 1 ) {
			angles[i] = angles[i]-angles[(i-1)%angles.length]
		}
		
		if( kawasaki(angles) === True) {

		
		

