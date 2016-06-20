module Messages exposing (Msg(..))

import Routes exposing (Sitemap)
import Window


type Msg
    = NoOp
    | TimeUpdate Int
    | RouteTo Sitemap
    | PathChanged String
    | ContactChange String
    | WindowResize Window.Size
