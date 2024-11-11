port module Main exposing (main)

import Browser
import Components exposing (heroCard, homeNavbar, navbar, projectView)
import Html exposing (Html, div, img)
import Html.Attributes exposing (alt, class, src)
import Random
import Utils exposing (getCombinedColorGenerator, getRandomDarkColor, getRandomLightColor, sendMsg)


type ColorMode
    = LightMode
    | DarkMode


type Msg
    = ToggleColorMode
    | SendColor ( Int, Int, Int )


type alias Model =
    { colormode : ColorMode
    , red : Int
    , green : Int
    , blue : Int
    }


port sendRandomColor : ( Int, Int, Int ) -> Cmd msg


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { colormode = LightMode, red = 0, green = 0, blue = 0 }
    , Cmd.batch [ sendMsg ToggleColorMode ]
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ToggleColorMode ->
            let
                newColorMode =
                    case model.colormode of
                        LightMode ->
                            DarkMode

                        DarkMode ->
                            LightMode

                colorGen =
                    case newColorMode of
                        LightMode ->
                            getCombinedColorGenerator getRandomLightColor

                        DarkMode ->
                            getCombinedColorGenerator getRandomDarkColor
            in
            ( { model | colormode = newColorMode }
            , Random.generate SendColor colorGen
            )

        SendColor ( r, g, b ) ->
            ( { model | red = r, green = g, blue = b }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ navbar
        , div
            [ class "content-container"
            ]
            [ div [ class "hero" ]
                [ heroCard
                , img [ class "hero-image", src "../public/hero.png", alt "Profile Image" ] []
                ]
            , homeNavbar
            , projectView
            ]
        ]
