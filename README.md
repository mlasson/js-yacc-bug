# ocamlyacc runtime bug with js_of_ocaml

# Native execution
```
$ dune exec ./main.exe "a"
input: "a"
Fatal error: exception Stdlib.Parsing.Parse_error

$ dune exec ./main.exe "aa"
input: "aa"
0
success

$ dune exec ./main.exe "aaa"
input: "aaa"
Fatal error: exception Stdlib.Parsing.Parse_error
```

# Js_of_ocaml:
```
$ node main.js "a"
input: "a"
Fatal error: exception Stdlib.Parsing.Parse_error

$ node main.js "aa"
input: "aa"
0
success

$ node main.js "aaa"
input: "aaa"
<loop forever ...>
```
