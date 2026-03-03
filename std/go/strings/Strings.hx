package go.strings;

import go.GoInt;

@:go.TypeAccess({ name: "strings", imports: ["strings"] })
extern class Strings {
	static function toUpper(s:String):String;
    static function toLower(s:String):String;
    static function index(s:String, substr:String):GoInt;
}
