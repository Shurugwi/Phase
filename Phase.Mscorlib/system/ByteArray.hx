package system;

abstract ByteArray(js.html.Uint8Array) 
{
	public inline function new(length:Int32) this = new js.html.Uint8Array(length.ToHaxeInt());
	
	@:from public static inline function fromArray(a:Array<Byte>):ByteArray return cast new js.html.Uint8Array(untyped a);
	@:from public static inline function fromFixedArray(a:FixedArray<Byte>):ByteArray return cast new js.html.Uint8Array(untyped a.ToHaxeArray());
	
	public var Length(get, never):Int32;
	public inline function get_Length() : Int32 return this.length;
	
	@:op([]) public inline function get(index:Int32):Byte return this[index.ToHaxeInt()];
	@:op([]) public inline function set(index:Int32, val:Byte):Byte return this[index.ToHaxeInt()] = val.ToHaxeInt();
	
	public inline function iterator() : Iterator<Byte> return new ByteArrayIterator(this);
	
	public inline function ToEnumerable() : system.collections.generic.IEnumerable<Byte> return new ByteArrayEnumerable(this);

	public static inline function empty(size:Int32) return new ByteArray(size);
}