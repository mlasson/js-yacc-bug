let content =
  try Sys.argv.(1) with _ -> ""

let () =
  Printf.printf "input: %S\n" content;
  let lexer = Lexer.token in
  let n = Parser.root lexer (Lexing.from_string content) in
  Printf.printf "%d\n" n;
  print_endline "success"
