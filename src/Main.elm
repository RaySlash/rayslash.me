module Main exposing (main)

import Browser exposing (Document)
import Browser.Navigation as Nav
import Components exposing (navbar)
import Html exposing (div)
import Html.Attributes exposing (class, classList)
import Pages.Blog exposing (blogView)
import Pages.Contact exposing (contactView)
import Pages.Home exposing (homeView)
import Types exposing (..)
import Url exposing (Url)
import Url.Parser exposing (Parser, map, oneOf, parse, s, top)


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }


route : Parser (Route -> a) a
route =
    oneOf
        [ map Home top
        , map Contact (s "contact")
        , map Blog (s "blog")
        ]


parseRoute : Url.Url -> Route
parseRoute url =
    case parse route url of
        Just matchedRoute ->
            matchedRoute

        Nothing ->
            NotFound


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( Model key url (parseRoute url) Projects Light
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( { model | route = parseRoute url }, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            ( { model | url = url }
            , Cmd.none
            )

        ToggleHomeRoute homeroute ->
            case homeroute of
                Projects ->
                    ( { model | homeroute = Projects }, Cmd.none )

                Communities ->
                    ( { model | homeroute = Communities }, Cmd.none )

                Work ->
                    ( { model | homeroute = Work }, Cmd.none )

                Misc ->
                    ( { model | homeroute = Misc }, Cmd.none )

        ToggleColorMode mode ->
            case mode of
                Light ->
                    ( { model | colormode = Light }, Cmd.none )

                Dark ->
                    ( { model | colormode = Dark }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Document Msg
view model =
    { title = "Ray"
    , body =
        [ div
            [ classList
                [ ( "container", True )
                , ( "darkmode", model.colormode == Dark )
                ]
            ]
            [ navbar model
            , case model.route of
                Home ->
                    homeView model

                Contact ->
                    contactView model

                Blog ->
                    blogView model

                NotFound ->
                    homeView model
            ]
        ]
    }
