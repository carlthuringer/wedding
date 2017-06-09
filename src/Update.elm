module Update exposing (Model, Flags, update, init)

import Ports exposing (pushPath)
import Task
import Routes exposing (Sitemap)
import Messages exposing (Msg(..))
import Window


type alias Model =
    { route : Sitemap
    , contact : String
    , window : Window.Size
    }


type alias Flags =
    { path : String }


init : Flags -> ( Model, Cmd Msg )
init { path } =
    let
        newModel =
            { route = Routes.match path
            , contact = ""
            , window = { width = 0, height = 0 }
            }
    in
        ( newModel, Task.perform WindowResize (Window.size) )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RouteTo route ->
            ( model, pushPath (Routes.doRoute route) )

        NoOp ->
            ( model, Cmd.none )

        PathChanged path ->
            let
                routeUpdate =
                    Routes.match path

                modelUpdate =
                    { model | route = routeUpdate }
            in
                ( modelUpdate, Cmd.none )

        ContactChange text ->
            let
                modelUpdate =
                    { model | contact = text }
            in
                ( modelUpdate, Cmd.none )

        WindowResize size ->
            let
                modelUpdate =
                    { model | window = size }
            in
                ( modelUpdate, Cmd.none )
