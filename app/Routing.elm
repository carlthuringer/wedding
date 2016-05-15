module Routing where

import Hop
import Hop.Types exposing (Router, PathMatcher, Location, newLocation)
import Hop.Matchers exposing (match1, match2)

type Route
  = HomeRoute
  | PartyRoute
  | VenueRoute
  | NotFoundRoute

matcherHome : PathMatcher Route
matcherHome = match1 HomeRoute "/"

matcherParty : PathMatcher Route
matcherParty = match1 PartyRoute "/party"

matcherVenue : PathMatcher Route
matcherVenue = match1 VenueRoute "/venue"

matchers : List (PathMatcher Route)
matchers =
  [ matcherHome
  , matcherParty
  , matcherVenue ]

router : Router Route
router = Hop.new
  { matchers = matchers
  , notFound = NotFoundRoute }

type alias Model =
  { location: Location
  , route: Route }

init : Model
init =
  { location = newLocation
  , route = HomeRoute }

-- view : Model ->
view model views =
  case model.route of
    HomeRoute -> views.home
    PartyRoute -> views.party
    VenueRoute -> views.venue
    NotFoundRoute -> views.notFound
