module Components.NotFound exposing (..)

import Html exposing (Html, text)
import Models exposing (Model)
import Messages exposing (Msg)

view : Model -> Html Msg
view model = text "Where are we"
