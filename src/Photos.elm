module Photos exposing (..)

type alias SrcPath = String
type alias SrcSet = String
type alias Photos = List (SrcPath, SrcSet)

getSrc : (SrcPath, SrcSet) -> SrcPath
getSrc (path, _) =
    path

photos : List (SrcPath, SrcSet)
photos =
    [("assets/CN-10.jpg", "assets/CN-10.jpg 100w")
    ,("assets/CN-11.jpg", "assets/CN-11.jpg 100w")]


