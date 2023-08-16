open Lib

let rec rev = function
  | [] -> []
  | h :: t -> rev t @ [ h ]

let () =
  let r = rev [ "a"; "b"; "c" ] in
  Output.print (String.concat ", ") r