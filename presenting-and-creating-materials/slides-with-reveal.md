# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Serving Markdown Slides Using Reveal.js on Slides.com, Heroku, or Locally

## Slide Decks ToC
There are multiple ways to create slides for your students using preexisting content or GA templates. Here are your options:
1. [Display Jupyter Notebooks in Slideshow format](slides-with-notebooks.md)
1. **Serve Markdown Slides Using Reveal.js on Slides.com, Heroku, or Locally**.
1. [Deliver Markdown Slides using Presentations.ga](./slides-with-presentations).
1. [Use Standard Slide Deck Templates (e.g. Powerpoint and Google Slides)](./creating-files.md)

---

We provide markdown slides for our part time tech courses. These files can be translated into Reveal.js format with GA-Brand styling and hosted a variety of different ways.

### Creating On-Brand Reveal and Pandoc Files

No matter which hosting option below you choose, you'll need to first follow these steps. Using our version of pandoc, you can convert your Markdown lesson plans into [Reveal.js](https://github.com/hakimel/reveal.js/) pages (and other formats, if you need).

1. Clone the [`pandoc`](./pandoc) directory.
   - **Importantly**, this contains on-brand GA assets, so **use this directory**, not the official directory on pandoc.org.

2. [Install pandoc](https://pandoc.org/installing.html) as a global program. If you prefer not to install globally, you can install locally and modify the `pandoc.sh` script to reference the appropriate location (or just be sure to reference the correct path when converting files).

3. Copy the Markdown for a slidedeck into the `pandoc` directory.
   - As you work through your slides, please **do not** modify slide color and formatting - it's currently on brand. If you discover any formatting glitches, please submit a pull request against this repository or submit an issue.
    - Tips on editing the markdown:
        - Slides are separated by `---` - **exactly** three dashes.
        - Keep an empty line above the first bullet to register as bullets vs the same line.
        - **All** slide titles are `##` - don't use any other headings, anywhere.

        - Create your speaker's notes using this format in the Markdown:

        ```
        <aside class="notes">

        This is my note.

        - It can contain Markdown
        - like this list

        </aside>
        ```

        Note that the class of `notes` and the `aside` tag are required for the notes to be parsed properly.
        
        
4. **Extremely Important Note:** To toggle the speaker view, you'll need to be on `http://nagale.com/ga-test/example.html?instructor`, and give the students the link `http://nagale.com/ga-test/example.html` - note the `?instructor` difference!
    - To see the notes, hit `s` when the slideshow is being presented. Much like other presentation software, this will open a new window with the current slide, upcoming slide, speaker's notes, and a timer. Here's an [example](http://nagale.com/ga-test/dictionariestest.html#/dictionaries) of a deck in action, hosted on a personal shared server. When you hit `s`, you'll see a window like this:

    ![](https://i.imgur.com/LgScFwU.png)
    You can use the small window for navigation or the larger one; whichever suits your needs. Try it with the link above!

5. Depending on which hosting method you will use, the `pandoc` command is different. Jump to:
  - [Serving slides locally](#option-local)
  - [Serving slides on Heroku](#option-heroku)
  - [Serving slides on Slides.com](#option-slides-com)
      - *Note: The ability to edit custom CSS in Slides.com relies upon having a Pro account.*

- *Optionally, read through the [reveal.js framework documentation](https://github.com/hakimel/reveal.js/) to explore configuration options, slideshow settings, and more.*Note that if you want to display math using Mathjax, you'll need to install this as a dependency.*

---


<a id='option-local'></a>

### Option 1: Locally-Hosted or Self-Hosted Slides Using GA Templates

1. After following the pandoc instructions above, generate HTML using pandoc (for example, `./pandoc.sh name_of_your.md > name_of_your.html`)

2. After generating the html, you can self-host the slides like [this](http://nagale.com/ga-test/variablestest.html#/intro-to-programming-with-variables) by copying the generated HTML file and the `css`, `js`, `lib`, and `plugin` directories to your webserver.

      - Note: The `css`, `js`, `lib`, and `plugin` directories can be copied directly from the pandoc directory, even though there will be unused files. This way you don't have to sift through files and can quickly get your slides up on a hosted solution as well as served locally. These directories are also provided in the top-level `deployment` directory of this repo; they are the same and you can copy from either.

      - For example, if your generated file is `variables.html`, your directory structure should look like this:
      
       ```
        - css
        - js
        - lib
        - plugin
        - variables.html
       ```

3. You can test this locally with: `python -m SimpleHTTPServer 8000` and access your localhost via your HTML's filename.
      - To continue the example, you would visit `http://localhost:8000/variables.html` to view your finished presentation.


4. If you have multiple slide decks to present, you can use an index page for easier access to all your decks. Inside this repository, you'll find a top-level folder named `deployment`. Within that folder, you'll find an `index.html` file with its accompanying `ga-title.css` file and other supporting files for your presentations (note: the `css`, `js`, `lib`, and `plugin` directories are the same as in the `pandoc` directory). Here, you can place your output of the pandoc conversion to HTML. The resulting structure will resemble this:

    ```
    - css
    - images
    - js
    - lib
    - plugin
    - example.html <provided as an example lesson linked from index.html>
    - ga-title.css
    - index.html <modify this to link to your html files>
    - <your lesson>.html
    - <another lesson>.html
    ```

  After doing the pandoc conversion from Markdown to HTML, place your file in this folder and modify `index.html` to reference that file. You'll be able to use `index.html` as a landing page to help you easily find all of your decks.
  
Either way, don't forget about speaker view - see step 4 under "Creating On-Brand Reveal and Pandoc Files" above.
  
---

<a id='option-heroku'></a>

### Option 2: Heroku Hosted Slides Using GA Templates

1. If you don't already have a free [Heroku account](https://signup.heroku.com/), go ahead and sign up for one and follow the instructions for installing the CLI.
2. Back in your terminal, you can test that your Heroku CLI has been installed by `which heroku` and it should return something similar to `/usr/local/bin/heroku`.
3. Create a new git repository. Copy the contents of the top-level `deployment` directory to this repo. This will be what Heroku references; it already has all on-brand CSS, etc, needed.   
5. Now, you can create a new Heroku instance and deploy it. [Here](https://devcenter.heroku.com/articles/git) is some more information on how to deploy using git to Heroku.

Now, you have a dummy Heroku site! Great job. Now we'll replace the example lessons:

1. If you're planning on hosting just a single lesson (unlikely):

    - After following the pandoc instructions above, you can then run the shell script as such: `./pandoc.sh name_of_your.md > index.php`. (Don't worry about the `.php` extension... that's just a trick for Heroku's deployment system.)
    
    - Delete the `index.html` file in your new `deployment` repo and replace it with your new `index.php`. After commiting this to your repo, do `git push heroku master` to update Heroku. Check your site!

1. If you're planning on hosting many lessons, such as the unit or course (very likely):

    - Rename the existing `index.html` in your new repo to `index.php` to utilize the same trick for Heroku's deployment system.
    
    - For each lesson, generate HTML using pandoc (for example, `./pandoc.sh name_of_your.md > name_of_your.html`).
    
    - Your repo needs to be a flat structure, and your lessons will be `.html` files. As you build your lessons, update `index.php` to point to them. Refer to section <a href='#option-local'>Local</a>, step 4,  for instructions and examples of using the `deployment` folder to organize your materials for deployment.

Either way, don't forget about speaker view - see step 4 under "Creating On-Brand Reveal and Pandoc Files" above.

---


<a id='option-slides-com'></a>

### Option 3: Slides.com Hosted Slides Using GA Templates

*Note: the ability to edit custom CSS in Slides.com relies upon having a Pro account.*

Slides.com provides a robust way to import the output of our `pandoc.sh` command.

1. Create a new deck.
1. After following the pandoc instructions above, generate a reveal.js file using pandoc (for example, `./pandoc.sh name_of_your.md > name_of_your.js`)
1. Use the "import" button on the left and select the markup that was created in our `pandoc.sh` step.
1. Access the CSS editor and paste in the `pandoc/css/theme/ga.css` theme CSS.
1. Note one limitation: the JS that we've created for you will not be reflected, so you will want to make tweaks in the GUI for the presentation.
