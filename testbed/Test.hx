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
        var arr: Dynamic = [5, 10, 20];

        Sys.println(arr);
        arr[2] = arr[0] * arr[1];
        Sys.println(arr);
        arr[10] = 100;
        Sys.println(arr);

        var obj: Dynamic = {
            foo: {
                bar: {
                    array: arr
                }
            }
        }

        Sys.println(obj.foo.bar.array[10]);
        obj.foo.bar.array[5] = 3;

        var arr_typed: Array<Dynamic> = obj.foo.bar.array;
        Sys.println(obj.foo.bar.array);
        Sys.println(arr_typed);
    }

typedef IntArray = Array<Int>;
