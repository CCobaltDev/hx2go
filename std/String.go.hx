import go.strings.Strings;
import go.Syntax;

@:coreType
@:keep
extern class String {

    // TODO: this extern is incomplete - https://api.haxe.org/String.html

    var length(default, null):Int;

    function new(): Void;

    inline function toUpperCase():String {
        return Strings.toUpper(this);
    }
    inline function toLowerCase():String {
        return Strings.toLower(this);
    }

    inline function charAt(index:Int):String {
        return "".toLowerCase() + Syntax.code("string(([]rune)({0})[{1}])", this, index);
    }
    inline function charCodeAt(index:Int):Null<Int> {
        // "".toLowerCase required to make sure import is used
        return ("".toLowerCase() == "" ? 0 : 0) + Syntax.code("([]rune)({0})[{1}]", this, index);
    }
    inline function indexOf(str:String, ?startIndex:Int):Int {
        final s = if (startIndex != null) {
            Syntax.code("string(([]rune)({0})[{1}:])", this, startIndex);
        }else{
            this;
        }
        return Strings.index(this, str);
    }
    inline function lastIndexOf(str:String, ?startIndex:Int):Int {
        return 0;
    }
    inline function split(delimiter:String):Array<String> {
        return [];
    }
    inline function substr(pos:Int, ?len:Int):String {
        return "";
    }
    inline function substring(startIndex:Int, ?endIndex:Int):String {
        return "";
    }
    inline function toString():String {
        return this;
    }
    @:pure inline static function fromCharCode(code:Int):String {
        return "";
    }

}