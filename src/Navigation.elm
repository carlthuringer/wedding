module Navigation exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg)
import Common.View exposing (link)
import Routes exposing (Sitemap(..))

view : Html Msg
view =
    nav []
        [ div [ class "container" ]
            [ ul [ classList [ ( "nav", True ), ( "navbar-nav", True ) ] ]
                [ li [] [ link (HomeR ()) "Home" ]
                , li [] [ link (PartyR ()) "Party" ]
                , li [ classList [ ( "active", False ) ] ] [ a [ href "#/venue" ] [ text "Venue" ] ]
                ]
            ]
        ]
