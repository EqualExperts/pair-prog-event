module Main exposing (life)


type alias Board =
    List (List Bool)


life : Board -> Board
life b =
    b
