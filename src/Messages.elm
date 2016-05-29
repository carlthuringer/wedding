module Messages exposing (Msg(..))

import Routes exposing (Sitemap)


type Msg
    = NoOp
    | TimeUpdate Int
    | RouteTo Sitemap
    | PathChanged String
