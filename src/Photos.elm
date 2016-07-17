module Photos exposing (..)

type alias SrcPath = String
type alias SrcSet = String
type alias Photos = List (SrcPath, SrcSet)

photos : List (SrcPath, SrcSet)
photos =
    [("assets/CN-10.jpg", "assets/CN-10.jpg 100w")]

getSrc : (SrcPath, SrcSet) -> SrcPath
getSrc (path, _) =
    path

