module Components exposing (views)

import Html exposing (Html)
import Components.Home as Home
import Components.Party as Party
import Components.NotFound as NotFound
import Components.Venue as Venue
import Models exposing (Model)
import Messages exposing (Msg)

type alias Views =
  { home: Model -> Html Msg
  , party: Model -> Html Msg
  , venue: Model -> Html Msg
  , notFound: Model -> Html Msg
  }

views : Views
views =
  { home = Home.view
  , party = Party.view
  , venue = Venue.view
  , notFound = NotFound.view }
