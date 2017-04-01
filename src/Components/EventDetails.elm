module Components.EventDetails exposing (..)

import Html exposing (..)
import Html.Attributes exposing (href)
import Messages exposing (Msg)


registryCrateAndBarrel : Html Msg
registryCrateAndBarrel =
    let
        url =
            "https://www.crateandbarrel.com/gift-registry/carl-thuringer-and-nicole-cammarata/r5602334"
    in
        li [] [ a [ href url ] [ text "Crate and Barrel" ] ]


registryAmazon : Html Msg
registryAmazon =
    let
        url =
            "https://www.amazon.com/wedding/nicole-cammarata-carl-thuringer-munster-june-2017/registry/BO8AQWOKRS64"
    in
        li [] [ a [ href url ] [ text "Amazon Gift Registry" ] ]


view : Html Msg
view =
    div []
        [ h1 [] [ text "Event Details" ]
        , table []
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
        , section []
            [ h3 [] [ text "Gift Registries" ]
            , ul [] [ registryCrateAndBarrel, registryAmazon ]
            ]
        ]
