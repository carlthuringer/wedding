module Components where

import Components.Home as Home
import Components.Party as Party
import Components.NotFound as NotFound

views =
  { home = Home.view
  , party = Party.view
  , notFound = NotFound.view }
