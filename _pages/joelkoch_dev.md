---
title: joelkoch.dev
layout: JoelKoch.Dev.PageLayout
image: /images/joelkoch_dev.webp
summary: Thoughts about the website you're looking at.
content: true
on_home: true
---

# What is it?
My personal website, where you can find my resume, ways to contact me, and stuff I've been working on.

![joelkoch.dev banner](/images/joelkoch_dev_banner.webp "joelkoch.dev banner")

# Why did I do it?
Well, I should have a website, so I have a place where I can write about the things I'm doing.
Also, it's a place to practice my frontend and design skills, I feel like I should be more proficient in these areas.

# What did I learn?
I've worked with static site generators before (Hugo and Eleventy).
When I found out about [Tableau](https://github.com/elixir-tools/tableau), a static site generator written in Elixir, I wanted to create my website with it.

Overall it was a nice experience, although there are some more rough edges in particular in comparison to Eleventy (as you would expect looking at the age, popularity and number of contributors on GitHub).
One thing I like about using a less popular static site generator, in particular in Elixir, is that the code base is so small, I can just look at the code and figure things out.
I switched the templating engine to `HEEx` as I was more likely to encounter that at my job than `Temple`.

Then, I went ahead and built the first version using `TailwindCSS`.
It was alright but I felt like my understanding and approach was lacking.
I was stacking divs on each other and cluttering everything with styles to make it somehow look like I wanted to.
At the end, it would have worked because my website is small enough, but I was a bit dissatisfied with my skills.

Inspired by many [Kevin Powell videos](https://youtube.com/@KevinPowell), I wanted to write plain, modern CSS for the second version of the website.
I even read all [MDN Guides](https://developer.mozilla.org/en-US/docs/Learn) to get a better understanding of HTML, CSS and JavaScript.

I don't want to deal with vendor prefixing or making sure that my CSS works in a browser version from 5 years ago.
Some time ago, I've read about [Lightning CSS](https://lightningcss.dev/) in a [blog post about tailwindcss 4.0](https://tailwindcss.com/blog/tailwindcss-v4-alpha).
It takes care of all that, so it felt like a perfect tool to write plain, modern CSS.

I also started digging into how I can enhance my approach to web design and I'm infinitely thankful that I found this talk by Andy Bell.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/5uhIiI9Ld5M?si=eKzZ1C5UCn4mkWCs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

After watching the recording, I found out that I had [cube.fyi](https://cube.fyi) bookmarked a while ago.
I started learning more about CUBE CSS, found [every-layout.dev](https://every-layout.dev) and [smolcss.dev](https://smolcss.dev) which gave me more insights into how I feel I should work.

I used to consider the layout first when I built websites and tried to create it by stacking divs and flex boxes.
As a result, I never felt in control, things were shifting around, it was annoying.

Now, I'm starting with structuring the markup in a semantically correct way.
Then, I create the layout I want with layout composition as shown in [every-layout.dev](https://every-layout.dev).
I don't need any media breakpoints to build responsive layouts, it feels awesome and I only wrap things in a `div` when I really have to.

I feel like I can still improve a lot in regard of styling, but I think I will tackle that in the future.

To sum it up:
- I found a working CSS methodology for me ([CUBE CSS](https://cube.fyi))
- I should care more about writing semantic HTML
- I should have a CSS reset, again thank you Andy Bell for [yours](https://piccalil.li/blog/a-more-modern-css-reset/)
- I finally learned what exactly bundling, minifying, and transpiling means (although I had a rough idea)
- I found out how to create a [matching color scheme](https://developer.chrome.com/blog/css-relative-color-syntax)
- I practiced accessibility

Yes, my website is still small, I could have hacked this together and probably would have been faster.
Nevertheless, it was fun, and I feel in full control over the site now, with a static site generator I understand and a CSS methodology I can finally make sense of.
