module Pages.Home exposing (..)

import Components exposing (..)
import Html exposing (Html, a, button, div, h3, img, li, p, text, ul)
import Html.Attributes exposing (alt, class, classList, href, src)
import Html.Events exposing (onClick)
import Types exposing (..)


homeNavbar : Model -> Html Msg
homeNavbar model =
    div [ class "homenav" ]
        [ homeNavButton model Projects "Projects"
        , homeNavButton model Communities "Communities"
        , homeNavButton model Work "Work Experience"
        , homeNavButton model Misc "Misc"
        ]


homeNavButton : Model -> HomeRoute -> String -> Html Msg
homeNavButton model route label =
    button
        [ classList
            [ ( "homenav-item", True )
            , ( "homenav-active-item", model.homeroute == route )
            ]
        , onClick (ToggleHomeRoute route)
        ]
        [ text label ]


showCard : String -> String -> String -> Html msg
showCard title description sourceuri =
    div [ class "showcard" ]
        [ card
            (div [ class "showcard-header" ]
                [ h3 [ class "showcard-title" ] [ text title ]
                , a [ href sourceuri ] [ img [ src "../../assets/icons/github.svg", alt "View Source" ] [] ]
                ]
            )
            (p [ class "showcard-description" ] [ text description ])
            (div [] [])
        ]


workCard : String -> String -> List (Html msg) -> Html msg
workCard title company desc =
    div [ class "showcard workcard" ]
        [ card
            (div [ class "workcard-header" ]
                [ h3 [ class "showcard-title" ] [ text title ]
                , p [ class "workcard-designation" ] [ text ("@" ++ company) ]
                ]
            )
            (ul [ class "workcard-list" ] desc)
            (div [] [])
        ]


projectView : Html msg
projectView =
    div [ class "home-content" ]
        [ showCard "Work Experience Tracker App"
            "A social-media like application that allows students and teachers to collaborate about their work experiences in classes."
            "https://github.com/techschoolballarat"
        , showCard "NixOS Desktop Configuration"
            "A declarative configuration written in Nix for multiple systems"
            "https://github.com/RaySlash/nixos-config"
        , showCard "NixCats Book"
            "A companion guide that aims to fill the gap when it comes to configuring neovim declaratively using nix"
            "https://rayslash.github.io/nixcats-book/"
        , showCard "Personal Portfolio"
            "A web application build using various tools, frameworks and languages. This outputs currrent website."
            "https://github.com/RaySlash/rayslash.me"
        , showCard "Android custom ROMs"
            "Multiple android ROMs device kernel trees which are developed and maintained according to community and personal needs."
            "https://github.com/rayslash?tab=repositories&q=android_"
        ]


worksView : Html msg
worksView =
    div [ class "home-content" ]
        [ workCard "Lead Developer"
            "BallaratTechSchool"
            [ li []
                [ text "Manage team of 5 in development to create a robust web application." ]
            , li [] [ text "Find and implement system architecture to deploy as necessary." ]
            ]
        , workCard "UI/UX and Lua Developer"
            "NXTLVL Roleplay-Fivem Server"
            [ li [] [ text "Create custom design for loading screen and web components in GTA V FiveM server" ]
            , li [] [ text "Use lua to add scripts to handle user inputs and server triggers." ]
            ]
        , workCard "Junior Technician"
            "Kandathinkara Agencies"
            [ li [] [ text "Build and install computer systems for businesses and individuals" ]
            , li [] [ text "Periodic visits to clients to check status and do occasional repairs" ]
            ]
        ]


miscView : Html msg
miscView =
    div [ class "home-content" ]
        [ showCard "Random Ideas" "Some big ideas yet to explore" "mewo"
        ]


communitiesView : Html msg
communitiesView =
    div [ class "home-content" ]
        [ showCard "hid-tmff2" "An open-source linux kernel driver for Thrustmaster Wheel devices (T300RS). Major contributions from myself include inclusion and categorizing of documents." "https://github.com/Kimplul/hid-tmff2"
        , showCard "nixpkgs" "A repository for nix derivations for all kinds of packages. There are over 80,000 packages available. I am a maintainer of few packages such as yofi, hid-tmff2 etc." "https://github.com/NixOS/nixpkgs"
        ]


homeView : Model -> Html Msg
homeView model =
    div
        [ class "content-container"
        ]
        [ div [ class "hero" ]
            [ heroCard
            , img [ class "hero-image", src "./assets/images/hero.png", alt "Profile Image" ] []
            ]
        , homeNavbar model
        , case model.homeroute of
            Projects ->
                projectView

            Work ->
                worksView

            Communities ->
                communitiesView

            Misc ->
                miscView
        ]
