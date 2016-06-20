module Components.Gallery exposing (view)

import Html exposing (..)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "Gallery" ]
        , p [] [ text "Photo gallery coming soon!" ]
        ]
