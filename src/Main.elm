port module Main exposing (main)

import Browser exposing (Document, UrlRequest)
import Browser.Navigation as Nav
import Components exposing (heroCard, navbar, projectView)
import Css exposing (color, rgb)
import Html.Styled exposing (Html, button, div, img, text, toUnstyled)
import Html.Styled.Attributes exposing (alt, class, css, src)
import Url exposing (Url)


type Msg
    = LinkClicked UrlRequest
    | UrlChanged Url
    | ToggleColorMode ColorMode


type ColorMode
    = Light
    | Dark


type alias Model =
    { key : Nav.Key
    , url : Url.Url
    , colormode : ColorMode
    }


port sendRandomColor : ( Int, Int, Int ) -> Cmd msg


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


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( Model key url Light
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            ( { model | url = url }
            , Cmd.none
            )

        ToggleColorMode mode ->
            case mode of
                Light ->
                    ( { model | colormode = Light }, Cmd.none )

                Dark ->
                    ( { model | colormode = Dark }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


homeNavbar : Html Msg
homeNavbar =
    div [ class "homenav" ]
        [ button [ class "homenav-item" ] [ text "Projects" ]
        , button [ class "homenav-item" ] [ text "Work" ]
        , button [ class "homenav-item" ] [ text "Communities" ]
        , button [ class "homenav-item" ] [ text "Background" ]
        , button [ class "homenav-item" ] [ text "Fun" ]
        ]


view : Model -> Document Msg
view model =
    { title = "Ray"
    , body =
        List.map toUnstyled
            [ div
                [ class "container"
                , css [ color (rgb 255 255 255) ]
                ]
                [ navbar
                , div
                    [ class "content-container"
                    ]
                    [ div [ class "hero" ]
                        [ heroCard
                        , img [ class "hero-image", src "../public/images/hero.png", alt "Profile Image" ] []
                        ]
                    , homeNavbar
                    , projectView
                    ]
                ]
            ]
    }
