#![allow(non_snake_case)]
use dioxus::prelude::*;
use dioxus_free_icons::{
    icons::{fa_brands_icons, fa_regular_icons},
    Icon,
};
use log::Level;
use rayslash_me;

fn main() {
    let log_config = wasm_logger::Config::new(Level::Info);
    wasm_logger::init(log_config);
    console_error_panic_hook::set_once();
    log::info!("starting app");

    dioxus::prelude::launch(app);
}

fn app() -> Element {
    rsx! {
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
fn Navbar() -> Element {
    rsx!(
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
fn Dashboard() -> Element {
    let wave = emojis::get_by_shortcode("wave").unwrap();

    rsx!(
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
fn Home() -> Element {
    rsx! (
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
                        div {
                            class: "contactform",
                            input {
                                class: "formitems contactform-name",
                                name: "Name",
                                alt: "Enter your name",
                                placeholder: "Enter your name",
                                required: "true",
                                minlength: "3",
                                maxlength: "30",
                                size: "10",
                                "Name"
                            }
                        }
                        div {
                            class: "contactform",
                            input {
                                class: "formitems contactform-email",
                                name: "Email",
                                alt: "Enter your email address",
                                placeholder: "Enter your email address",
                                minlength: "3",
                                maxlength: "30",
                                size: "10",
                                "Mail Address"
                            }}
                        div {
                            class: "contactform",
                            input {
                                class: "formitems contactform-message",
                                name: "Message",
                                alt: "Enter the message",
                                placeholder: "Enter the message",
                                required: "true",
                                minlength: "10",
                                maxlength: "500",
                                size: "50",
                                "Message"
                            }}
                    }
                }
            }
        }
    )
}

#[component]
fn Blog() -> Element {
    let mut dropdown_collapsed = use_signal(|| false);
    let mut active_sort = use_signal(|| 0);

    rsx!(
        div {
            Navbar {}
            p {
                class: "page-title",
                "My Blogs"
            }

            div {
                class: "sorting-area",
            button {
                onclick: move |_| {
                    let collapsed = !*dropdown_collapsed.read();
                    dropdown_collapsed.set(collapsed);
                },
                class: "sort-btn",
                if *active_sort.read() == 0 {
                    "Sort by: Recent"
                }
                if *active_sort.read() == 1 {
                    "Sort by: Feeback"
                }
                if *active_sort.read() == 2 {
                    "Sort by: Name"
                }
            }

            if *dropdown_collapsed.read() {
                {
                    rsx! {
                        div {
                            class: "dropdown-list",
                            button {
                                onclick: move |_| {
                                    let collapsed = !*dropdown_collapsed.read();
                                    dropdown_collapsed.set(collapsed);
                                    active_sort.set(0);
                                },
                                "Recent"
                            }
                            button {
                                onclick: move |_| {
                                    let collapsed = !*dropdown_collapsed.read();
                                    dropdown_collapsed.set(collapsed);
                                    active_sort.set(1);
                                },
                                "Feeback"
                            }
                            button {
                                onclick: move |_| {
                                    let collapsed = !*dropdown_collapsed.read();
                                    dropdown_collapsed.set(collapsed);
                                    active_sort.set(2);
                                },
                                "Name"
                            }
                        }
                    }
                }
            } else {
                {
                    rsx! {
                        div {}
                    }
                }
            }
            }

            rayslash_me::blog::PostMinimal {}
            rayslash_me::blog::PostMinimal {}
            rayslash_me::blog::PostMinimal {}
            rayslash_me::blog::PostMinimal {}
        }
    )
}
