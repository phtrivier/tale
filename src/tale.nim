type Room = object
  content: string
  prompt: string

proc show(room: Room): void =
  echo "|"
  echo "| " & room.content
  echo "|"

proc prompt(room: Room): string =
  echo "> " & room.prompt
  stdout.write "> "

  var f : File
  discard f.open(0, fmRead)
  return readLine(f)

proc main() =
  echo "-------------------"
  echo "This is Tale v0.1.0"
  echo "-------------------"

  let r = Room(content: "You see an empty room.",
               prompt: "Do you want to go out ? [y/N]")

  let o = Room(content: "You're out.",
               prompt: nil)

  show(r)
  discard prompt(r)

  echo "|"
  echo "| " & o.content
  echo "|"


  echo "Thanks for playing !"
  echo "--------------------"

main()
