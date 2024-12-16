module Types exposing (..)

import Browser
import Browser.Navigation as Nav
import Url


type alias Model =
    { key : Nav.Key
    , url : Url.Url
    , route : Route
    , colormode : ColorMode
    }


type Msg
    = LinkClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | ToggleColorMode ColorMode


type ColorMode
    = Light
    | Dark


type Route
    = Home
    | Contact
    | Blog
    | NotFound


type ButtonVariant
    = Primary
    | Secondary
    | Destructive
    | Disabled
