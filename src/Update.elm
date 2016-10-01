module Update exposing (Model, Flags, update, init)

import Ports exposing (pushPath, rsvpResizer)
import Task
import Routes exposing (Sitemap)
import CountDown exposing (init)
import Messages exposing (Msg(..))
import Window

type alias Model =
    { countDown : CountDown.Model
    , route : Sitemap
    , contact : String
    , window : Window.Size
    }


type alias Flags =
    { path : String }

rsvpifyCmd : Sitemap -> Cmd Msg
rsvpifyCmd route =
    if route == Routes.RSVPR () then
        rsvpResizer "#RSVPifyIFrame"
    else
        Cmd.none

init : Flags -> ( Model, Cmd Msg )
init { path } =
    let
        newModel =
            { countDown = CountDown.init
            , route = Routes.match path
            , contact = ""
            , window = { width = 0, height = 0 }
            }

        initCommands =
            [ Task.perform (\_ -> NoOp) WindowResize (Window.size)
            , rsvpifyCmd(Routes.match path)
            ]

    in
        ( newModel, Cmd.batch initCommands )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        TimeUpdate timeInt ->
            let
                setCountdown =
                    { model | countDown = CountDown.update timeInt model.countDown }
            in
                ( setCountdown, Cmd.none )

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
                ( modelUpdate, rsvpifyCmd routeUpdate )

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
