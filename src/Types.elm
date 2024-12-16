module Types exposing (..)

import Browser
import Browser.Navigation as Nav
import Url


type alias Model =
    { key : Nav.Key
    , url : Url.Url
    , route : Route
    , homeroute : HomeRoute
    , colormode : ColorMode
    }


type Msg
    = LinkClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | ToggleHomeRoute HomeRoute
    | ToggleColorMode ColorMode


type ColorMode
    = Light
    | Dark


type Route
    = Home
    | Contact
    | Blog
    | NotFound


type HomeRoute
    = Projects
    | Work
    | Communities
    | Misc


type ButtonVariant
    = Primary
    | Secondary
    | Destructive
    | Disabled
