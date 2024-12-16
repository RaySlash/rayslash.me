module Utils exposing (..)

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
