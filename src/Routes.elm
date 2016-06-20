module Routes exposing (..)

import Route exposing (..)


type Sitemap
    = HomeR ()
    | PartyR ()
    | NotFoundR
    | TravelAndAccomodationR ()
    | GalleryR ()
    | ContactR ()
    | RSVPR ()
    | EventDetailsR ()
    | OurStoryR ()


homeR : Route Sitemap
homeR =
    HomeR := static ""


partyR : Route Sitemap
partyR =
    PartyR := static "party"


travelAndAccomodationR : Route Sitemap
travelAndAccomodationR =
    TravelAndAccomodationR := static "travel-and-accomodation"


galleryR : Route Sitemap
galleryR =
    GalleryR := static "gallery"


contactR : Route Sitemap
contactR =
    ContactR := static "contact"


rsvpR : Route Sitemap
rsvpR =
    RSVPR := static "rsvp"


eventDetailsR : Route Sitemap
eventDetailsR =
    EventDetailsR := static "event-details"


ourStoryR : Route Sitemap
ourStoryR =
    OurStoryR := static "our-story"


sitemap : Router Sitemap
sitemap =
    router [ homeR, partyR, travelAndAccomodationR, galleryR, contactR, rsvpR, eventDetailsR, ourStoryR ]


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

        TravelAndAccomodationR () ->
            reverse travelAndAccomodationR []

        GalleryR () ->
            reverse galleryR []

        ContactR () ->
            reverse contactR []

        RSVPR () ->
            reverse rsvpR []

        EventDetailsR () ->
            reverse eventDetailsR []

        OurStoryR () ->
            reverse ourStoryR []

        NotFoundR ->
            Debug.crash "Cannot route to Not Found"
