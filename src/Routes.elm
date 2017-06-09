module Routes exposing (..)

import Route exposing (..)


type Sitemap
    = HomeR
    | PartyR
    | NotFoundR
    | GalleryR
    | OurStoryR


homeR : Route Sitemap
homeR =
    HomeR := static ""


partyR : Route Sitemap
partyR =
    PartyR := static "party"


galleryR : Route Sitemap
galleryR =
    GalleryR := static "gallery"


ourStoryR : Route Sitemap
ourStoryR =
    OurStoryR := static "our-story"


sitemap : Router Sitemap
sitemap =
    router [ homeR, partyR, galleryR, ourStoryR ]


match : String -> Sitemap
match =
    Route.match sitemap
        >> Maybe.withDefault NotFoundR


doRoute : Sitemap -> String
doRoute r =
    case r of
        HomeR ->
            reverse homeR []

        PartyR ->
            reverse partyR []

        GalleryR ->
            reverse galleryR []

        OurStoryR ->
            reverse ourStoryR []

        NotFoundR ->
            Debug.crash "Cannot route to Not Found"
