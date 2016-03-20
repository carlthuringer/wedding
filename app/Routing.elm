module Routing (router, init, Route (..), Model) where

import Hop
import Hop.Types exposing (Router, PathMatcher, Location, newLocation)
import Hop.Matchers exposing (match1, match2)


type Route
  = HomeRoute
  | NotFoundRoute

matcherHome : PathMatcher Route
matcherHome = match1 HomeRoute "/"

matchers : List (PathMatcher Route)
matchers =
  [ matcherHome ]

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
