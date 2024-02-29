---
title: 'My Advancing Front-end Experience'
description: 'Reflecting on my ongoing study on UI libraries'
pubDate: 'Feb 29 2024'
heroImage: '/blog-reactjs.jpg'
---

> __ABSTRACT:__ This blog post is a reflection on my ongoing study on UI libraries and my journey towards learning them.

## Introduction

In the modern era of front-end development and virtual DOMs, ReactJS is a powerful and versatile tool for building user interfaces. It is a popular choice for building web applications and has become a popular choice for building mobile apps as well. I am currently learning ReactJS and other UI libraries out there that have been developed to have better developer experiences. I have currently looked at these UI libraries and have been using them to make my projects.

- [React.js](https://react.dev)
- [Next.js](https://nextjs.org)
- [Dioxus](https://dioxuslabs.com)
- [Astro](https://astro.build)

### React

The concept that React was built on felt very fascinating to me as it introduced the functional programming aspect into UI designing like PHP did. I never really liked the PHP world even though I tried it out a bit. That is where React came into play. This was much more readable to me as a beginner because of use of simple JavaScript syntax without much changes. I had to go through the excellent documentation that they had on [react.dev](https://react.dev/learn), which made me understand basic concepts of React such as components, props, state, lifecycle methods etc.

### Next.js

I have learnt that these UI libraries abstract a great deal of the complexity for better developer experience. In fact, In my personal website project I did in NextJS was surprisingly mixed with TypeScript, TSX, JavaScipt, React, CSS, TailwindCSS etc. This made an overwhelming experience where I had to walk around in different languages more than I wished to, even though the TypeScript part is optional. I felt like it would be a nice addition to my project as I knew a bit of Typescript to begin with.

It was very easy to deploy NextJS on Vercel and setup everything using the GUI. This somehow felt very unintuitive to me as I was not learning much from the experience as I was with React as its just a superset on top of React.

### Dioxus

Rust is my go-to language for any problem as I understood it more simply by spending more time writing code in it. Once I had clear view of what I want to explore, I went in to do some work in Dioxus which is a rust library that compiles my Rust code into native code for almost any platform, even for the web using _WebAssembly_. This was an exciting but a path with heavy roadblocks due to limited availability of documentation. Although, I managed to sneak in the discord channel and ask a few noob questions on how dioxus works and how can I use it to tailer it for my development needs. The people and community were very welcoming and I was getting good response with answers I am seeking for from the maintainers of Dioxus themselves. This raised the expection I had for the library and the community behind it and they still are a great bunch of people.
Choosing dioxus made things bit rough as I was following the _v0.4.3_ initially to learn which was getting deprecated by the upcoming _v0.5.0_. This led me to go overboard to learn the alpha software as it was deprecating `useState()` in favour for `useSignal()`. Rather than it being burden, I felt it more like a challenge as it was exciting to understand how I can use Rust and WebAssembly to create UI that I need to generate. The choice to use RSX instead of JSX was also an excellent choice as it was much easier to write. I might write about Dioxus alone someday, even make a tutorial on "How to write Dioxus"". See the snippet below:

```js
// JSX
<div className='' >
  Hello World!
</div>
```

```js
// RSX
div {
  className: '',
  "Hello World!"
}
```

### Astro

I wanted to develop a personal blog portfolio which would contain information about me that uses Markdown `.md/.mdx` files as each blog post. Astro was the best renowed choice I have found so far for my personal blog. This website is currently built using Astro. Coming from React, Dioxus etc. I felt mucha t peace as it was simple to use. All I needed was to create html like files that have an extension of `.astro` which can have front-matter , style tag that is independent to the file and much more. I now could easily understand the setup and folder structure of Astro.

I picked the main blog template and added a few global CSS options to make it unique and darker. The makdown files were in the directory `src/content/blog` which also had front-matter in them that contained information such as Blog Title, Author, Date, and Tags. This was amazing to setup and mostly effortless as I typically learnt not much from it rather used a viable product to easily create, manage and update my blog. See snippet for how I can write the markdown file:

```mdx
---
title: "My Blog"
date: "2022-01-01"
---

Hello World!
```

## Bucket-list

Even though I have familiarity with a few of these UI libraries, I still have a lot of things I want to learn and explore. Thus, I would like to try out and learn about a few more librabries/languages that surround UI development. I am lsiting out the ones that I am currently interested in. This might change in future. Thanks for reading. Cheers!

- [SolidJS](https://www.solidjs.com)
- [Angular](https://www.angular.io)
- [HTMX](https://htmx.org)
- [Mithril](https://mithril.js.org)
- [VueJS](https://www.vuejs.org)
- [Svelte](https://svelte.dev)
- [Elm](https://elm-lang.org)
