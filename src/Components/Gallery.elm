module Components.Gallery exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ p [] [ text "Photo gallery coming soon!" ]
        ]