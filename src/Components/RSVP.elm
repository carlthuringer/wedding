module Components.RSVP exposing (view)

import Html exposing (..)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "RSVP" ]
        , text "RSVP page coming soon"
        ]
