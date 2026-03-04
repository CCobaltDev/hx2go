import runtime.HxDynamic;
class Wee {

    public var waa: Float;

    public function new (_w: Float) {
        waa = _w;
    }

}

class Waa extends Wee {}

@:analyzer(ignore)
class Test {

    static function main() {
        var arr: Dynamic = [1, 2, 3];
        var x: Dynamic = 5;

        Sys.println(arr);
        Sys.println(arr[0] * x);
    }

}