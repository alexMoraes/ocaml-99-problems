open Exercises

exception IndexOutOfBounds of string

let solution_to_string l = String.concat ", " (List.map Int.to_string l)

let rec range fromInt toInt =
  if fromInt = toInt then
    [fromInt]
  else
    fromInt :: range (fromInt + 1) toInt

let pick index list =
  let rec aux i = function
    | [] -> raise (IndexOutOfBounds "Empty list")
    | h :: t ->
        if i = 0 then
          (h, t)
        else
          let p, r = aux (i - 1) t in
          (p, h :: r)
  in
  if index > List.length list - 1 then
    raise (IndexOutOfBounds ("index too large: " ^ Int.to_string index))
  else
    aux index list

let lottoSelect draws max =
  let numbers = range 1 max in
  let rec aux d m l =
    if d = 0 then
      []
    else
      let p, r = pick (Random.int m) l in
      p :: aux (d - 1) (m - 1) r
  in
  if draws > max then
    raise (IndexOutOfBounds "Too many draws")
  else
    aux draws max numbers

let () =
  Random.self_init () ;
  let r = lottoSelect 6 49 in
  Output.print solution_to_string r
