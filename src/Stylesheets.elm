port module Stylesheets exposing (..)

import Css.File exposing (CssFileStructure, CssCompilerProgram)
import Stylesheets.Main


port files : CssFileStructure -> Cmd msg


fileStructure : CssFileStructure
fileStructure =
    Css.File.toFileStructure
        [ ( "main.css", Css.File.compile [ Stylesheets.Main.css ] ) ]


main : CssCompilerProgram
main =
    Css.File.compiler files fileStructure
