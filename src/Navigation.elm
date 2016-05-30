module Navigation exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Common.View exposing (link)
import Routes exposing (Sitemap(..))
import Messages exposing (Msg)


view : Html Msg
view =
    nav []
        [ div [ class "container" ]
            [ ul [ classList [ ( "nav", True ), ( "navbar-nav", True ) ] ]
                [ li [] [ link (HomeR ()) "Home" ]
                , li [] [ link (PartyR ()) "Party" ]
                , li [] [ link (VenueR ()) "Travel and Accomodation" ]
                ]
            ]
        ]
