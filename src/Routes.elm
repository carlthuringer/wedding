module Routes exposing (..)

import Route exposing (..)


type Sitemap
    = HomeR ()
    | PartyR ()
    | NotFoundR
    | VenueR ()
    | GalleryR ()


homeR =
    HomeR := static ""


partyR =
    PartyR := static "party"


venueR =
    VenueR := static "venue"

galleryR =
    GalleryR := static "gallery"

sitemap =
    router [ homeR, partyR, venueR, galleryR ]


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

        VenueR () ->
            reverse venueR []

        GalleryR () ->
            reverse galleryR []

        NotFoundR ->
            Debug.crash "Cannot route to Not Found"
