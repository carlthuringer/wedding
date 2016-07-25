module Photos exposing (..)

type alias SrcPath = String
type alias SrcSet = String
type alias Photos = List (SrcPath, SrcSet)

getSrc : (SrcPath, SrcSet) -> SrcPath
getSrc (path, _) =
    path

photos : List (SrcPath, SrcSet)
photos =
    [("/assets/320/CN.jpg", "/assets/320/CN.jpg 320w,/assets/700/CN.jpg 700w,/assets/1250/CN.jpg 1250w")
    ,("/assets/320/CN-11.jpg", "/assets/320/CN-11.jpg 320w,/assets/700/CN-11.jpg 700w,/assets/1250/CN-11.jpg 1250w")
    ,("/assets/320/CN-4.jpg", "/assets/320/CN-4.jpg 320w,/assets/700/CN-4.jpg 700w,/assets/1250/CN-4.jpg 1250w")
    ,("/assets/320/CN-33.jpg", "/assets/320/CN-33.jpg 320w,/assets/700/CN-33.jpg 700w,/assets/1250/CN-33.jpg 1250w")
    ,("/assets/320/CN-7.jpg", "/assets/320/CN-7.jpg 320w,/assets/700/CN-7.jpg 700w,/assets/1250/CN-7.jpg 1250w")
    ,("/assets/320/CN-37.jpg", "/assets/320/CN-37.jpg 320w,/assets/700/CN-37.jpg 700w,/assets/1250/CN-37.jpg 1250w")
    ,("/assets/320/CN-41.jpg", "/assets/320/CN-41.jpg 320w,/assets/700/CN-41.jpg 700w,/assets/1250/CN-41.jpg 1250w")
    ,("/assets/320/CN-49.jpg", "/assets/320/CN-49.jpg 320w,/assets/700/CN-49.jpg 700w,/assets/1250/CN-49.jpg 1250w")
    ,("/assets/320/CN-72.jpg", "/assets/320/CN-72.jpg 320w,/assets/700/CN-72.jpg 700w,/assets/1250/CN-72.jpg 1250w")
    ,("/assets/320/CN-85.jpg", "/assets/320/CN-85.jpg 320w,/assets/700/CN-85.jpg 700w,/assets/1250/CN-85.jpg 1250w")]


