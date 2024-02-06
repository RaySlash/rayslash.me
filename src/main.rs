#![allow(non_snake_case)]
use dioxus::prelude::*;
use dioxus_free_icons::{
    icons::{fa_brands_icons, fa_regular_icons},
    Icon,
};
use dioxus_router::prelude::*;
use log::LevelFilter;

fn main() {
    dioxus_logger::init(LevelFilter::Info).expect("failed to init logger");
    console_error_panic_hook::set_once();
    log::info!("starting app");

    dioxus_web::launch(app);
}

fn app(cx: Scope) -> Element {
    render! {
        Router::<Route> {}
    }
}

#[derive(Clone, Routable, Debug, PartialEq)]
enum Route {
    #[route("/")]
    Home {},
    #[route("/blog")]
    Blog {},
}

#[component]
fn Navbar(cx: Scope) -> Element {
    render!(
        header {
            div {
                class: "nav-left",
                Link {
                    to: Route::Home {},
                    "Home"
                }
                Link {
                    to: Route::Blog {},
                    "Blog"
                }
            }
            div {
                class: "nav-right",
                Link {
                    to: "https://github.com/rayslash",
                    Icon {
                        height: 20,
                        width: 20,
                        icon: fa_brands_icons::FaGithub,
                    }
                }
                Link {
                    to: "mailto:stevemathewjoy@tutanota.com",
                    Icon {
                        height: 20,
                        width: 20,
                        icon: fa_regular_icons::FaEnvelope,
                    }
                }
            }
        }
    )
}

#[component]
fn Dashboard(cx: Scope) -> Element {
    let wave = emojis::get_by_shortcode("wave").unwrap();

    render!(
        div {
            class: "dashboard",
            p {
                class: "tagline",
                "{wave} Hi, I am"
            }
            p {
                class: "name",
                "Steve Mathew Joy"
            }
            p {
                class: "tagline",
                "Final-Year Student in Bachelors of IT"
            }
            Link {
                class: "uni-link",
                to: "https://federation.edu.au",
                "@ Federation University, Australia"
            }
        }
    )
}

#[component]
fn Home(cx: Scope) -> Element {
    render! (
        div {
            Navbar {}
            Dashboard {}
            div {
                class: "home-contents",
                div {
                    h3 { "Languages & Frameworks" }
                    div {
                        class: "homecontents-langs",
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaRust
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaLinux
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaWindows
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaHtml5
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaCss3
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaJsSquare
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaGitAlt
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaReact
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaPython
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaMarkdown
                        }
                        Icon {
                            width: 30,
                            height: 30,
                            icon: fa_brands_icons::FaAndroid
                        }
                    }
                }
                div {
                    class: "homecontents-projects",
                    h3 { "Projects" }
                    div {
                        class: "projects-container",
                        div {
                            class: "projects-subcontainer",
                            Link {
                                to: "https://github.com/rayslash/oran",
                                "Oran"
                            }
                            p {
                                "An Open-source Text Editor that runs as a CLI.
                                This was built using Rust Programming Language.
                                This helped me have a better foundation in learning
                                how to write terminal UI applications."
                            }
                        }
                        div {
                            class: "projects-subcontainer",
                            Link {
                                to: "https://github.com/rayslash/xmpp-client-rs",
                                "XMPP-client-rs"
                            }
                            p {
                                "An Work-In-Progress client application which uses
                                the XMPP protocol to connect to channels and
                                communicate a user in the network. This is being
                                actively developed."
                            }
                        }
                        div {
                            class: "projects-subcontainer",
                            Link {
                                to: "https://github.com/rayslash/rayslash-me",
                                "rayslash.me"
                            }
                            p {
                                "A Next.JS app that use many frameworks and tools
                                such as ReactJS, TailwindCSS, Typescript etc.
                                This is a full stack application that is served
                                in Vercel's platform. This was mostly a hobby
                                project that helped me gain better understanding
                                in SSR and Routing"
                            }
                        }
                        div {
                            class: "projects-subcontainer",
                            Link {
                                to: "https://github.com/rayslash/shiftoff",
                                "ShiftOff"
                            }
                            p {
                                "An application that was developed in Visual
                                Studio to log timestamps and comments for
                                every project that one works in a coporate
                                environment. This was made in the C# Programming
                                Language. This is one of the first projects that I
                                have started by myself."
                            }
                        }
                    }
                }
                div {
                    class: "homecontents-about",
                    h3 { "About" }
                    p {"I am 24 year old student who is keen about technology and innovations. With time,
                    I have been teaching myself several programming languages and concepts outside of my
                    University. I spend most of my free-time now either programming or gaming. I am in several
                    platforms. Contact me through the form below or by:"}
                    div {
                        class: "contact-links",
                        Link {
                            to: "https://discordapp.com/users/315820641486110720",
                            Icon {
                                width: 30,
                                height: 30,
                                icon: fa_brands_icons::FaDiscord
                            }
                        }
                        Link {
                            to: "https://au.linkedin.com/in/steve-mathew-joy-630637198",
                            Icon {
                                width: 30,
                                height: 30,
                                icon: fa_brands_icons::FaLinkedin
                            }
                        }
                        Link {
                            to: "https://www.facebook.com/steve.mathew.joy",
                            Icon {
                                width: 30,
                                height: 30,
                                icon: fa_brands_icons::FaFacebookSquare
                            }
                        }
                        Link {
                            to: "https://www.twitch.tv/rayslash",
                            Icon {
                                width: 30,
                                height: 30,
                                icon: fa_brands_icons::FaTwitch
                            }
                        }
                        Link {
                            to: "https://www.instagram.com/man.of.mysteries",
                            Icon {
                                width: 30,
                                height: 30,
                                icon: fa_brands_icons::FaInstagram
                            }
                        }
                    }
                }
                div {
                    class: "homecontents-contact",
                    h3 { "Contact Me" }
                    form {
                        class: "contactform",
                        input {
                            id: "contactform-name",
                            alt: "Enter your name",
                            "Name"
                        }
                        input {
                            id: "contactform-email",
                            alt: "Enter your email address",
                            "Mail Address"
                        }
                        input {
                            id: "contactform-message",
                            alt: "Message",
                            "Message"
                        }
                    }
                }
            }
        }
    )
}

#[component]
fn Blog(cx: Scope) -> Element {
    let mut dropdown_collapsed = use_state(cx, || false);

    cx.render(rsx!(
        div {
            Navbar {}
            p {
                class: "page-title",
                "My Blogs"
            }
            button {
                onclick: move |_| {
                    **dropdown_collapsed = !**dropdown_collapsed;
                    if **dropdown_collapsed {
                        render!(
                            div {
                                class: "dropdown-list",
                                Link {
                                    to: "https://google.com"
                                }
                                Link {
                                    to: "https://facebook.com"
                                }
                                Link {
                                    to: "https://instagram.com"
                                }
                            }
                        )
                    } else {
                        render!(
                            div {}
                        )
                    }
                },
                class: "sort-btn",
                "(Sorted by recent)"
            }
        }
    ))
}
