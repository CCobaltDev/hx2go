@:analyzer(ignore)
class Test {

    public static function main() {
        var arr = [1, 2, 3];

//        for (x in arr.iterator()) {
//            Sys.println(x);
//        }

        for (x in arr.keyValueIterator()) {
            Sys.println(x);
        }
    }

}