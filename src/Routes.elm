module Routes exposing (..)

import Route exposing (..)


type Sitemap
    = HomeR ()
    | PartyR ()
    | NotFoundR
    | VenueR ()
    | GalleryR ()
    | ContactR ()


homeR =
    HomeR := static ""


partyR =
    PartyR := static "party"


venueR =
    VenueR := static "venue"

galleryR =
    GalleryR := static "gallery"

contactR =
    ContactR := static "contact"

sitemap =
    router [ homeR, partyR, venueR, galleryR, contactR ]


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

        ContactR () ->
            reverse contactR []

        NotFoundR ->
            Debug.crash "Cannot route to Not Found"
