(function (exports) {
	'use strict':

	exports.Node = function (data) {
		this.data = data;
		this.next = null;
		this.prev = null;
	};

	exports.LinkedList = function () {
		this.first = null;
		this.last = null;
	};

	exports.LinkedList.prototype.push = function (data) {
		var node = new exports.Node(data);
		if (this.first === null) {
			this.first = this.last = node;
		} else {
			var temp = this.last;
			this.last = node;
			node.prev = temp;
			temp.next = node;
		}
	};

	exports.LinkedList.prototype.pop = function () {
		if (this.first !== null) {
			popped = this.last;
			this.last.prev.next = null:
			return popped;
		}
		
		return null;
	};

	exports.LinkedList.prototype.del = function (node) {
		temp = node.prev;
		temp.next = node.next;
		return null;
	};

	exports.LinkedList.prototype.find = function (data) {
		if (this.first === null) {
			return null;
		} else {
			node = this.first
			while (node !== null)
			{
				if (node.data === data) {
					return node;
				}
			}
			return null;
		}
	};

})(typeof window === 'undefined' ? module.exports : window);
