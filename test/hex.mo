import H "../src/hex";

let xs : [Nat8] = [255, 0];
let cs : Text   = "FF00";

assert(H.encode(xs) == cs);
switch (H.decode(cs)) {
    case (#ok(x))  assert(x == xs);
    case (#err(m)) assert(false);
}