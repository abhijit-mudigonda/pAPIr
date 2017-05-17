ds = exports

class Element
	constructor: (@value, @next, @prev) ->
		
class ds.Deque
	constructor: () ->
		@head = null
		@tail = null
		@length = 0
	head_push: (x) ->
		if @head is null
			@head = new Element(x,null,null)
			@tail = @head
		else
			el = new Element(x,null,@head)
			@head.next = el
			@head = el
		@length += 1
	head_pop: () -> 
		x = @head.value
		@head = @head.prev
		@length -= 1
		return x

	tail_push: (x) ->
		if @tail is null
			@tail = new Element(x,null,null)
			@head = @tail
		else
			el = new Element(x,@tail,null)
			@tail.prev = el
			@tail = el
		@length += 1
	tail_pop: () ->
		x = @tail.value
		@tail = @tail.next
		@length -= 1 
		return x
	print: () ->
		curr = @tail
		for i in [0..@length-1]
			console.log(curr.value)
			curr = curr.next



