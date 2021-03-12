# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Serving Markdown Slides Using Reveal.js on Slides.com, Heroku, or Locally

## Slide Decks ToC
There are multiple ways to create slides for your students using preexisting content or GA templates. Here are your options:
1. [Display Jupyter Notebooks in Slideshow format](slides-with-notebooks.md)
1. [Serve Markdown Slides Using Reveal.js on Slides.com, Heroku, or Locally](./slides-with-reveal.md).
1. **Deliver Markdown Slides using Presentations.ga**.
1. [Use Standard Slide Deck Templates (e.g. Powerpoint and Google Slides)](./creating-files.md)

---

We provide markdown slides for our part time tech courses. These files can easily be hosted on [presentations.generalassemb.ly](https://presentations.generalassemb.ly), with a link that can be sent to all students.

With this method, you'll create simple slides using our markdown template below, then host them through GA's presentation server (still in beta). This method is great for quickly generating slides as long as you don't care about making use of the entire range of Reveal.js features; it supports embedded code editors, and for most cases, should be enough.

**Method 1: Instructions**
1. Using our markdown template, create a *private* [github gist](https://gist.github.com/) with slides for a given lesson. Name the gist: `your-slide-deck-title.md`.
2. Append the `id` of your gist at the end of the following url: [`presentations.generalassemb.ly/`](https://presentations.generalassemb.ly).
3. Share the link with your class!
4. For more help, see the [built-in instructions](https://presentations.generalassemb.ly),  or [the example documentation here](https://gist.github.com/bswinnerton/b7c282fae7217918a935).
  - Note: This is written, but easy to overlook - when you update a gists, you'll need to write `/reload` at the end of the URL to load the new version.
