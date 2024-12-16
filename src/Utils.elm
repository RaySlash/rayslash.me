module Utils exposing (..)

import Browser.Dom exposing (setViewport)
import Random exposing (Generator)
import Task
import Types exposing (..)


routeToHref : Route -> String
routeToHref route =
    case route of
        Home ->
            "/"

        Contact ->
            "/contact"

        Blog ->
            "/blog"

        NotFound ->
            "home"


routeToString : Route -> String
routeToString route =
    case route of
        Home ->
            "home"

        Contact ->
            "contact"

        Blog ->
            "blog"

        NotFound ->
            "home"


sendMsg : msg -> Cmd msg
sendMsg msg =
    Task.succeed msg
        |> Task.perform identity


getRandomNumber : Int -> Int -> Generator Int
getRandomNumber min max =
    Random.int min max


getCombinedColorGenerator : ( Generator Int, Generator Int, Generator Int ) -> Generator ( Int, Int, Int )
getCombinedColorGenerator ( redGen, greenGen, blueGen ) =
    Random.map3 (\r g b -> ( r, g, b )) redGen greenGen blueGen


getRandomDarkColor : ( Generator Int, Generator Int, Generator Int )
getRandomDarkColor =
    let
        red =
            Random.int 128 255

        green =
            Random.int 128 255

        blue =
            Random.int 128 255
    in
    ( red, green, blue )


getRandomLightColor : ( Generator Int, Generator Int, Generator Int )
getRandomLightColor =
    let
        red =
            Random.int 0 127

        green =
            Random.int 0 127

        blue =
            Random.int 0 127
    in
    ( red, green, blue )
