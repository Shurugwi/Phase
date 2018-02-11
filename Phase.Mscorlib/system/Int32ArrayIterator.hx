package system;

class Int32ArrayIterator
{
	private var _array:js.html.Int32Array;
	private var _i:Int;
		
	public function new(array:js.html.Int32Array) 
	{
		_array = array;
		_i = 0;
	}

	public function hasNext() return _i < _array.length - 1;
	public function next() 
	{
		return _array[_i++];
	}
}