let
  lib = import <nixpkgs/lib>;

  list = [
    1
    ((x: x) null)
    (builtins.elemAt list 0 + 10)
  ];

  infiniteArray = [ 0 ] ++ infiniteArray;

  infiniteNestedList' = n:
    {
      head = n;
      tail = infiniteNestedList' (n + 1);
    };

  infiniteNestedList = infiniteNestedList' 1;

  customElemAt = nestedList: i:
    if i == 0 then
      nestedList.head
    else
      customElemAt nestedList.tail (i - 1);

  badDoubleList = list:
    if list == [] then
      []
    else
      [ (2 * lib.head list) ]
      ++ badDoubleList (lib.tail list);

  betterDoubleList = list:
    let
      recurse = index:
        if index >= lib.length list then
          []
        else
          [ (2 * lib.elemAt list index) ]
          ++ recurse (index + 1);
    in
    recurse 0;

  realDoubleList = map (x: 2 * x);

  testList = builtins.genList (i: i) 1000000;

  summedResult = lib.foldl' (acc: el: builtins.trace "evaluating element ${toString el}" (acc + el)) 0 testList;

  # testList = [ 1 2 3 ]
  # summedResult = ((0 + 1) + 2) + 3

in
  summedResult
/*
Sources of thunks/laziness in Nix:
- Let bindings
- List elements
- Attribute set values
- (minor others)
*/


/*

1. Create `list` as a thunk

a. list:
  - Expr: "[ ... ]"
  - Env:
    - list: Points to a.

2. Evaluate `list`
  - "list" is a variable -> Look up the var in the env
  - Turns out it's a thunk -> Evaluate the thunks expr
  - "[ ... ]" is a list literal -> Turns into a list of that size
  - Literal numbers don't have to create thunks
  - b. Create thunk for the third element
    - Expr: "builtins.elemAt list 0 + 10"
    - Env:
      - list: Points to a.
  - [ 1 2 (b.) ]

3. Select index #2
  - Take the third element from the
  - (b.) is a thunk, evaluate the expression of the thunk (with the corresponding env)
  - "builtins.elemAt list 0 + 10" is a `+` operation -> eval lhs then rhs, then compute the result
    - Evaluate "builtins.elemAt list 0" is a function application -> eval the function, try to create thunks for the arguments, then call it
      - Function is the builtin `elemAt`
      - Arguments don't need thunks (variables and integers)
      - Call the builtin  (skip detail) -> turns into 1
    - "10" is just 10
    - Add 1 + 10 -> 11
    */

/*
Nix values:
Atomic values like ints, bools, floats, null, path, string -> Don't need thunks, they can only be fully evaluated
Lists are evaluated up to their list length
Attribute sets are evaluated up to their attribute names
Functions are evaluated to themselves

(thunks, unevaluated code, will turn into a value above
*/

/*
Nix expressions:
- Literal ints, bools, nulls, paths
- Literal attribute sets and lists "[ ... ]" "{ ... }"
- Function application `f a`
- Function declaration `x: x`
- `or`
- `||` `&&` +, -, /
*/




