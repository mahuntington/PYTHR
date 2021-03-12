# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Presenting Jupyter Notebooks as On-Brand Slides

## Slide Decks ToC
There are multiple ways to create slides for your students using preexisting content or GA templates. Here are your options:
1. **Display Jupyter Notebooks in Slideshow format**
1. [Serve Markdown Slides Using Reveal.js on Slides.com, Heroku, or locally](slides-with-reveal.md)
1. [Deliver Markdown Slides using Presentations.ga](./slides-with-presentations).
1. [Use Standard Slide Deck Templates (e.g. Powerpoint and Google Slides)](./creating-files.md)

---

We provide Jupyter notebooks for all of our Data Science materials. You can format these into slides a few different ways.

- [Jupyter with RISE (on GA brand)](#option-rise)
- [Serving slides locally](#option-local)
- [Jupyter + Reveal.js + Apache](#option-apache)

---


<a id='option-rise'></a>
### Option 1: Jupyter with RISE

Using RISE will allow you to present slides using on-brand CSS and styling. RISE is straightforward and works with reveal.js.

By installing the [RISE Jupyter extension](https://rise.readthedocs.io/en/stable/index.html), you can easily toggle into [Reveal.js](https://revealjs.com/) mode as a slideshow.

1. Follow the [installation instructions](http://rise.readthedocs.io/en/stable/installation.html) to install RISE.

    _Note: only installation Miniconda on macOS has been tested internally. You may encounter some issues, so please submit a pull request against this document to help others if you have any trouble._

1. The [usage documentation](http://rise.readthedocs.io/en/stable/usage.html) for RISE is comprehensive. Using RISE is fairly straightforward, however, so here are the base steps to not only make your notebook Reveal.js-compatible, but get it GA-branded.

    1. Once RISE is installed, make a copy of `pandoc/css/theme/ga.css` in the same directory as your notebook and name it the same as your notebook but with the `css` extension.

    1. Restart any running notebook servers.

    1. You will see a new menu option in the Notebook menu submenu labeled *Slideshow*: `View -> Cell Toolbar -> Slideshow`. Toggle this option and each cell will now have a dropdown in the upper-right corner.

    1. Use this dropdown to select the `slide` option for a normal slide, the `fragment` option for a fragment that appears on the same slide as you move forward, or a `subslide` that will appear below the slide as you advance. The `subslide` type is useful for optional information.

    1. Use `Option-r` (macOS) or `Alt-r` to enter and leave the slideshow presentation.

    1. When presented in this manner, the code editors will function. Run the code with `shift-enter`.

1. It is possible to export the slideshow in a standalone fashion to provide to students after class.

    1. Use the `File -> Download as` option to download the Markdown file.
    1. Follow the [Option 3](#option-3) instructions to convert the rendered HTML file into GA-branded slides by running the pandoc converter on the HTML file.

    **Note:** The code editors will be static code images instead of functional editors. However, you can choose to edit the HTML to embed repl.it iframes if you'd like to maintain the inline-editing experience.

---


<a id='option-local'></a>
### Option 2: Displaying Slides Locally

In short, you'll use the following command: `jupyter nbconvert [this_notebook.ipynb] --to slides --post serve`. You can read more about that [here](https://medium.com/@mjspeck/presenting-code-using-jupyter-notebook-slides-a8a3c3b59d67). For more of a walkthrough, continue reading:

---

<a id='option-apache'></a>
### Option 3: Jupyter + Reveal.js + Apache

One of the easiest and best ways to generate slides from your notebooks is to use Reveal.js. Check out the following examples:

- [IPython notebooks - Using NBConvert](https://ipython.org/ipython-doc/1/interactive/nbconvert.html)
- [How to Make Slides w IPython](http://www.damian.oquanta.info/posts/make-your-slides-with-ipython.html)

When finished with these instructions, go back and get `pandoc/css/theme/ga.css` to style your slides.

#### Here's how to Get Started
1. [Apache Setup for Reveal.js](part-1)
2. [Preparing Slides with Jupyter + Reveal.js](#part-2)

---

<a id='part-1'></a>
##### Apache Setup for Reveal.js

In order to get the "presenter mode" to work correctly with Reveal.js slides, you need to setup a basic virtual environment on your local machine in order to serve notes correctly.

- There may be other steps required to provide the presenter mode. When in doubt, consult the official documentation.

###### On OSX

On OSX, the default Apache config files are in `/etc/apache2`. What you will need to do is add a site config file to the Apache config. In the example below, we'll refer to a sample cohort as `dat-sf-1` <--- replace with your own cohort title.

**File: /etc/apache2/sites/dat-sf-1.localhost.conf**

_An example_

```apache2                                                       
<VirtualHost *:80>
  ServerName dat-sf-1.localhost
  ServerAlias dat-sf-1.localhost
  DocumentRoot /var/www/htdocs/dat-sf-1.localhost/htdocs

</VirtualHost>

<Directory "/var/www/htdocs/dat-sf-1.localhost/htdocs">
  Options +Indexes
  AllowOverride All
</Directory>
```

Configuration notes:

- `ServerName` and `ServerAlias` should be configured to use the domain you setup in your local hosts file.
- `DocumentRoot` defines the document root apache will serve files for this domain (ie: your slides files)
- `<Directory>` elements define the location of your file (slides)
- Directory options `+Indexes` and `AllowOverride All` allow for the listing of directories and for the use of [.htaccess](https://httpd.apache.org/docs/current/howto/htaccess.html) files that will real configuration variables from if you add this file to your directory.  

###### Hosts File

Add this entry to your `/etc/hosts` file, to resolve your local domain to your local ip `127.0.0.1`:

```
127.0.0.1       dat-sf-1.localhost
```

_Feel free to update the domain entry to whatever you like but make sure you match it correctly to your Apache config above. Entries to this file take hold immediately_

---

<a id='part-2'></a>
###### Preparing Slides with Jupyter and Reveal.js

Creating slides with Jupyter's iPython notebook isn't bad at all. Some of the benefits of this format is that students can run and follow along, code can be consolidating, and instructors can control which frames get exported as slides.

When exporting slides, the following features can be controlled using the "Slideshow" view from `**View > Cell Toolbar > Slideshow**`:

![](https://snag.gy/5pdNL6.jpg)

The "slideshow" cell types include:
- **Slide**
- **Subslide**
- **Fragment**
- **Skip**
- **Notes**

###### Slide

A *slide* cell type is the most common type.  The default slide type is "None" so you will have to set this manually when authoring new slides.

###### Subslide

A **subslide** belongs to the previously defined slide nearest the subslide.  Subslides are accessed via the *down key* when presenting.  See the reveal.js website for the demo of how subslides work.  Generally, slides are sequenced from left to right (using the arrow keys), and subslides (as they relate to slides), can be navigated vertically as they are defined below slides.  Defining a new **slide** type will break out of **subslides** when defined after.

###### Fragment

Use a **fragment** when you want a subsection to appear in a slide (defined prior to a **fragment**), that is revealed after navigating forward.  This is useful when you may want to present a question, ask for answers, then revealing the answer on the same slide (the slide that is defined preceding the fragment).

###### Skip

Skip will omit the cell from the slide deck upon rendering.

###### Notes

Notes will not display on the slide deck, but will display in the prompter window available when viewing the slide deck -- **hotkey "s"**.

---


###### Converting Notebooks

After authoring your notebook with the slideshow settings with chosen celltypes etc, you can easily create these notebooks using this command from terminal:

```bash

jupyter nbconvert [the name of your .ipynb file] --to slides

```

However, in order to use the prompter view, you will have to setup a local web instance.  Previously, we created an Apache virtual domain on our local machine, and appended a host entry in our `/etc/hosts` file called `dat-sf-1.localhost`, then linked it to our local working copy of our student repo.

In the case for this use case, we use a local copy of the reveal.js library so we end up using this command to update the references in the output slides, to use the local copy of reavel.js:

```bash

jupyter nbconvert [the name of your .ipynb file] --to slides --reveal-prefix /reveal.js

```

###### Useful Hotkeys

- **f** - Go fullscreen.
- **s** - Presenter mode.  Use with a split screen display to view a previous of your slides, and any notes defined after a **slide** type cell.  Super handy!


###### References

[Apache Setup For Reveal.js](Apache-Setup-for-Reveal.js)
