-- module Routing exposing (..)

-- -- import Hop
-- -- import Hop.Types exposing (Router, PathMatcher, Location, newLocation)
-- -- import Hop.Matchers exposing (match1, match2)
-- import Html exposing (Html)
-- -- type Route
-- --   = HomeRoute
-- --   | PartyRoute
-- --   | VenueRoute
-- --   | NotFoundRoute

-- type Msg = NoOp
-- -- matcherHome : PathMatcher Route
-- -- matcherHome = match1 HomeRoute "/"

-- -- matcherParty : PathMatcher Route
-- -- matcherParty = match1 PartyRoute "/party"

-- -- matcherVenue : PathMatcher Route
-- -- matcherVenue = match1 VenueRoute "/venue"

-- -- matchers : List (PathMatcher Route)
-- -- matchers =
-- --   [ matcherHome
-- --   , matcherParty
-- --   , matcherVenue ]

-- -- router : Router Route
-- -- router = Hop.new
-- --   { matchers = matchers
-- --   , notFound = NotFoundRoute }

-- type alias Model =
--   { -- location: Location
--    route: Route }

-- type alias Views =
--   { home: Html(Msg)
--   , party: Html(Msg)
--   , venue: Html(Msg)
--   , notFound: Html(Msg)
--   }

-- init : Model
-- init =
--   { --location = newLocation
--   route = HomeRoute }

-- view : Model -> Views -> Html(Msg)
-- view model views =
--   case model.route of
--     HomeRoute -> views.home
--     PartyRoute -> views.party
--     VenueRoute -> views.venue
--     NotFoundRoute -> views.notFound
