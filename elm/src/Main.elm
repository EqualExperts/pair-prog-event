module Main exposing (Board, life)


type alias Board =
    List (List Bool)


life : Board -> Board
life b =
    b
