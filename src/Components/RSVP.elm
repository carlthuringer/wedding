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
          -- <iframe id="RSVPifyIFrame" style="width: 100%; border: none; overflow: hidden;" onload="window.parent.scrollTo(0,0)" allowtransparency="true" src="http://carlandnicole.app.rsvpify.com/?embed=1&amp;js=1" frameborder="0" scrolling="no"></iframe>
          -- , node "script"
          --     [ type' "text/javascript"
          --     , src "http://app.rsvpify.com/embed/87219"
          --     ]
          --     []
        ]
