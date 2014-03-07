import std.stdio;

class Set(T) {

    bool[T] dict;

    this(T[] list) {
        foreach(t; list){
            dict[t] = true;
        }
    }

    bool contains(T t){
        auto p = t in dict;
        if (p) { return true; }
        else { return false; }
    }

    //alias dict this;
}

class Encoder {
    this() {
        
    }

    void analyze(string data) {
        // first pass

    }
    string encode(string data) {
        return "asdasd";

    }
}

class HuffmanEncoder : Encoder {

    int[char] alphabet;
    double[char] weights;
    ulong data_len;

    this() {
        super();
    }

    override void analyze(string data) {
        // first pass
        data_len = data.length;
        foreach(c; data) {
            alphabet[c]++;
        }
        foreach(c; alphabet.byKey()){
            weights[c] = cast(double)alphabet[c] / data_len;
        }
    }
}

void main(string args[]) {

    string data = "A quick brown fox jumps over the lazy something.";
    bool[string] dict;
    auto p = "asd" in dict;
    writeln(p);
    auto encoder = new HuffmanEncoder();
    encoder.analyze("1234123adfasdf.");
    writeln(encoder.weights);

}
