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

// PAGES BELOW

#[component]
fn Home(cx: Scope) -> Element {
    render! (
        div {
            Navbar {}
            Dashboard {}
        }
    )
}

#[component]
fn Blog(cx: Scope) -> Element {
    // let mut dropdown_collapsed = use_state(cx, || false);

    render!(
        div {
            Navbar {}
            p {
                class: "page-title",
                "My Blogs"
            }
            button {
                // onclick: move |_| {
                //     **dropdown_collapsed = !**dropdown_collapsed;
                //     if **dropdown_collapsed {
                //         render!(
                //             div {
                //                 class: "dropdown-list",
                //                 Link {
                //                     to: "https://google.com"
                //                 }
                //                 Link {
                //                     to: "https://facebook.com"
                //                 }
                //                 Link {
                //                     to: "https://instagram.com"
                //                 }
                //             }
                //         )
                //     } else {
                //         render!(
                //             div {}
                //         )
                //     }
                // },
                class: "sort-btn",
                "(Sorted by recent)"
            }
        }
    )
}
