module Components.EventDetails exposing (..)

import Html exposing (..)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ table []
            [ tr [] [ td [] [ strong [] [ text "Saturday, June 3, 2017 @ 5 p.m." ] ] ]
            , tr [] [ td [] [ strong [] [ text "Center for Visual and Performing Arts" ] ] ]
            , tr [] [ td [] [ text "1040 Ridge Road" ] ]
            , tr [] [ td [] [ text "Munster, IN 46321" ] ]
            , tr [] [ td [] [ text "219-835-1930" ] ]
            ]
        , p [] [ text "Ceremony starts at 5 p.m." ]
        , p [] [ text "Cocktail hour and reception to follow" ]
        , p [] [ text "Attire: Semi-formal (suit and tie for the gentlemen; cocktail dress, skirt or dress pants and nice top for the ladies)" ]
        , p [] [ text "For your convenience, the ceremony, cocktail hour and reception will all be held at the Center for Visual and Performing Arts." ]
        , p [] [ text "Special requests for dietary restrictions will be happily accommodated." ]
        ]
