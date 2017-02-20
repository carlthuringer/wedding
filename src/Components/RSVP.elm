module Components.RSVP exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "RSVP" ]
        , rsvpifyEmbedGarbage
        ]


rsvpifyEmbedGarbage : Html Msg
rsvpifyEmbedGarbage =
    div []
        [ iframe
            [ id "RSVPifyIFrame"
            , style
                [ ( "width", "100%" )
                , ( "border", "none" )
                , ( "overflow", "hidden" )
                ]
            , attribute "onload" "window.parent.scrollTo(0,0)"
            , attribute "allowtransparency" "true"
            , attribute "frameborder" "0"
            , attribute "scrolling" "no"
            , src "https://carlandnicole.app.rsvpify.com/?embed=1&amp;js=1"
            ]
            []
        ]
