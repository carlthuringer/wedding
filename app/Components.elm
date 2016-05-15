module Components where

import Components.Home as Home
import Components.Party as Party
import Components.NotFound as NotFound
import Components.Venue as Venue

views =
  { home = Home.view
  , party = Party.view
  , venue = Venue.view
  , notFound = NotFound.view }
