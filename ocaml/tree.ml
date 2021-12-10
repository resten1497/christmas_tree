let rec printCharacters n ch = 
  if n == 0 then ()
  else
    let _ = print_char(ch) in
    printCharacters (n - 1) ch
;;

let drawLeaves nSpaces nLeaves = 
  let _ = printCharacters nSpaces ' ' in 
  let _ = printCharacters nLeaves '*' in 
  ()
;;

let rec drawTree height level = 
  if height == level then () 
  else 
    let _ = drawLeaves (height - level - 1) (level * 2 + 1) in 
    let _ = print_char('\n') in 
    drawTree height (level + 1)
;;

let rec drawPole nSpaces width level = 
  if level == 0 then () 
  else 
    let _ = printCharacters nSpaces ' ' in 
    let _ = printCharacters width '=' in 
    let _ = print_char('\n') in 
    drawPole nSpaces width (level - 1)
;;

drawTree 20 0;;
drawPole 16 7 5;;

