module Routes exposing (..)

import Route exposing (..)


type Sitemap
    = HomeR ()
    | PartyR ()
    | NotFoundR



-- | VenueR ()


homeR =
    HomeR := static ""


partyR =
    PartyR := static "party"

sitemap =
  router [ homeR, partyR ]

match : String -> Sitemap
match =
  Route.match sitemap
       >> Maybe.withDefault NotFoundR

doRoute : Sitemap -> String
doRoute r =
    case r of
        HomeR () ->
            reverse homeR []

        PartyR () ->
            reverse partyR []

        NotFoundR ->
          Debug.crash "Cannot route to Not Found"
