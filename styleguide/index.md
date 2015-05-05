---
layout: styleguide
title: "Chime Starter Style Guide"
---

# About this Guide

This is a living style guide based on the live CSS of this site. By building the style guide as a part of the site itself, we'll never need to worry that the style guide falls out of date with the existing site design as documentation tends to do. This style guide is meant for as reference for designers, developers, as well as anyone else interested in the design and front-end concepts we use to build the backbone of government websites.

# CSS Architecture

1. The CSS foundation of this site is built with the **Sass** preprocessor langauge.
1. The **Bourbon** library is used for auto browser prefixing and the **Neat** library is used for the grid framework. Bourbon and Neat are open-source products from **Thoughtbot**.
1. The CSS organization and naming conventions are based loosely on **SMACSS** guidelines.
1. Media queries are built **mobile first**.
1. Hard coded magic numbers are avoided and, if necessary, defined in the `_variables.scss` file.
1. Spacing units are as much as possible defined as `rem` or `em` units so they scale appropriately with text size.
1. Browser compatility is defined by...

# Colors

This style guide automatically pulls colors from the `_variables.scss` file as long as the color variable is prefixed with `$color-`.

# Layout Systems

## Grid Layout

The grid layout system is a basic grid system used to build site pages where they layout is largely rectangular blocks of content (e.g., homepages and navigation pages). Content in the grid layout is placed with modular **grid items** which live inside **grid boxes**. Grid items require width classes to define what percentage of the screen they should take up. Width classes include:

- `.width-one-half`
- `.width-one-third`
- `.width-two-thirds`
- `.width-one-fourth`
- `.width-three-fourths`
- `.width-one-six`
- `.width-five-sixths`

Generally, fractional widths of all grid items within a grid box should add up to one complete row. If a grid box needs to contain more than one row, the class `.end-row` is required on the last item of each row.

On mobile devices, all grid items default to 100% width.

### Example Grid Box

<div class="preview">
	<div class="grid-box grid-box-example">
		<div class="grid-item width-one-third">One Third</div>
		<div class="grid-item width-two-thirds">Two Thirds</div>
	</div>
</div>

### Example Grid Box with Multiple Rows

<div class="preview">
	<div class="grid-box grid-box-example">
		<div class="grid-item width-one-whole">One Whole</div>
		<div class="grid-item width-one-half">One Half</div>
		<div class="grid-item width-one-half end-row">One Half</div>
		<div class="grid-item width-one-third">One Third</div>
		<div class="grid-item width-two-thirds end-row">Two Thirds</div>
		<div class="grid-item width-one-fourth">One Fourth</div>
		<div class="grid-item width-three-fourths">Three Fourths</div>
	</div>
</div>


## Float Layout

The float layout system is used in articles where most of the content consists of text. It utilizes width and alignment classes that can be applied to block elements such as `<aside>` and `<figure>` within `<article>` elements. 

1. **Width classes** are based on a fraction of the page and include denominators of half, third, fourth, and sixth. Block elements default to 100% of the article width. Width classes include:
	- `.width-one-half`
	- `.width-one-third`
	- `.width-two-thirds`
	- `.width-one-fourth`
	- `.width-three-fourths`
	- `.width-one-six`
	- `.width-five-sixths`
1. **Alignment classes** allow you to float elements to the right or left. If an element is not floated, it defaults to center alignment. Alignment classes include:
	- `.align-left`
	- `.align-right`

### Examples
<div class="preview">
	<aside class="width-one-half align-right">
		<p>This aside takes up one-half of the page width and is right aligned.</p>
	</aside>
	<p class="is-peripheral">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores ipsa voluptatem consequuntur, mollitia soluta, quasi ducimus voluptate vitae eum nulla ad aliquid, saepe reprehenderit. Dolorem, voluptates, corrupti? Labore, rem, incidunt? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maiores quas, adipisci cum voluptate vero necessitatibus animi iure similique? Illo, impedit reiciendis cumque saepe ut quaerat odio dolorum sapiente. Delectus.</p>
</div>
<div class="preview">
	<aside class="width-one-third align-left">
		<p>This aside takes up one-third of the page width and is left aligned.</p>
	</aside>
	<p class="is-peripheral">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores ipsa voluptatem consequuntur, mollitia soluta, quasi ducimus voluptate vitae eum nulla ad aliquid, saepe reprehenderit. Dolorem, voluptates, corrupti? Labore, rem, incidunt? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maiores quas, adipisci cum voluptate vero necessitatibus animi iure similique? Illo, impedit reiciendis cumque saepe ut quaerat odio dolorum sapiente. Delectus.</p>
</div>


# Elements

This section pertains to the styling of basic HTML elements.

## Inline

<div class="preview">
	<p>This is <i>italicized text</i></p>
	<p>This is <em>emphasized text</em></p>
	<p>This is <b>bold text</b></p>
	<p>This is <strong>strong text</strong></p>
	<p>This is <a href="#">linked text</a></p>
	<p>This is <code>preformatted code</code></p>
	<p>This is <mark>highlighted text</mark></p>

</div>

## Headings

<div class="preview">
	<h1>Heading Level 1</h1>
	<h2>Heading Level 2</h2>
	<h3>Heading Level 3</h3>
	<h4>Heading Level 4</h4>
	<h5>Heading Level 5</h5>
	<h6>Heading Level 6</h6>
</div>

## Lists

<div class="preview">
	<ol>
		<li>Ordered list item</li>
		<li>Ordered list item</li>
		<li>Ordered list item</li>
	</ol>
</div>

<div class="preview">
	<ul>
		<li>Unordered list item</li>
		<li>Unordered list item</li>
		<li>Unordered list item</li>
	</ul>
</div>

## Tables

<div class="preview">
	<table>
	  <thead>
	    <tr>
	      <th>Row 1</th>
	      <th>Row 2</th>
	      <th>Row 3</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td>item 1</td>
	      <td>item 2</td>
	      <td>item 3</td>
	    </tr>
	    <tr>
	      <td>item 1</td>
	      <td>item 2</td>
	      <td>item 3</td>
	    </tr>
	    <tr>
	      <td>item 1</td>
	      <td>item 2</td>
	      <td>item 3</td>
	    </tr>
	  </tbody>
	</table>
</div>


## Blockquotes

<div class="preview">
	<blockquote>The blockquote element represents a section that is quoted from another source. Blockquotes are also sometimes referred to in publishing as 'pullquotes'.</blockquote>	
</div>

## Asides

<div class="preview">
	<aside>
		<p>Asides, or callouts, are used to block off a specific portion of text that is periperal to the main body text. They can contain headings as well.</p>
	</aside>
</div>

<div class="preview">
	<aside class="width-one-half align-right">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero perferendis placeat error nemo, atque accusantium?</p>
	</aside>
	<p class="is-peripheral">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores ipsa voluptatem consequuntur, mollitia soluta, quasi ducimus voluptate vitae eum nulla ad aliquid, saepe reprehenderit. Dolorem, voluptates, corrupti? Labore, rem, incidunt? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maiores quas, adipisci cum voluptate vero necessitatibus animi iure similique? Illo, impedit reiciendis cumque saepe ut quaerat odio dolorum sapiente. Delectus.</p>
</div>

## Figures

<div class="preview">
	<figure>
		<img src="http://placehold.it/800x600/eeeeee/333333" alt="Placeholder Image">
		<figcaption>This is an image figure with a caption</figcaption>
	</figure>
</div>

<div class="preview">
	<figure class="width-one-half align-right">
		<img src="http://placehold.it/800x600/eeeeee/333333" alt="Placeholder Image">
		<figcaption>This is an image figure with a caption</figcaption>
	</figure>
	<p class="is-peripheral">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores ipsa voluptatem consequuntur, mollitia soluta, quasi ducimus voluptate vitae eum nulla ad aliquid, saepe reprehenderit. Dolorem, voluptates, corrupti? Labore, rem, incidunt? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maiores quas, adipisci cum voluptate vero necessitatibus animi iure similique? Illo, impedit reiciendis cumque saepe ut quaerat odio dolorum sapiente. Delectus.</p>
</div>

## Forms

### Text Input Fields
<div class="preview">
	<label for="">Input Type Text</label>
	<input type="text" name="input-type-text">

	<label for="">Input Type Email</label>
	<input type="email" name="input-type-email">

	<label for="">Input Type Password</label>
	<input type="password" name="input-type-password">

	<label for="">Input Type URL</label>
	<input type="url" name="input-type-url">

	<label for="">Input Type Tel</label>
	<input type="tel" name="input-type-tel">

	<label for="">Input Type Number</label>
	<input type="number" name="input-type-number">

	<label for="">Input Type Search</label>
	<input type="search" name="input-type-search">

</div>

### Checkboxes and Radio Buttons

<div class="preview">
	<label for="">Input Type Checkbox</label>
	<input type="checkbox" name="input-type-checkbox"> Value 1<br>
	<input type="checkbox" name="input-type-checkbox"> Value 2<br>
	<input type="checkbox" name="input-type-checkbox"> Value 3<br>

	<label for="">Input Type Radio</label>
	<input type="radio" name="input-type-radio"> Value 1<br>
	<input type="radio" name="input-type-radio"> Value 2<br>
	<input type="radio" name="input-type-radio"> Value 3<br>
</div>

### Selection Input Types

<div class="preview">
	<label for="">Input Type Range</label>
	<input type="range" name="input-type-range">


	<label for="">Input Type File</label>
	<input type="file" name="input-type-file">
	<input type="file" name="input-type-file">

	<label for="">Input Type Color</label>
	<input type="color" name="input-type-color">


	<label for="">Input Type Date</label>
	<input type="date" name="input-type-date">

	<label for="">Input Type Datetime Local</label>
	<input type="datetime-local" name="input-type-datetime-local">

	<label for="">Input Type Month</label>
	<input type="month" name="input-type-month">

	<label for="">Input Type Time</label>
	<input type="time" name="input-type-time">

	<label for="">Input Type Week</label>
	<input type="week" name="input-type-week">
</div>

### Buttons
<div class="preview">
	<label for="button-type-button">Buttons</label>
	<button type="button">Button</button>
	<button type="reset">Reset</button>
	<button type="submit">Submit</button>

	<label for="button-type-submit">Input Buttons</label>
	<input type="button" name="input-type-button" value="Button">
	<input type="reset" name="input-type-reset">
	<input type="submit" name="input-type-submit">
	<input type="submit" name="input-type-submit" disabled="">
</div>


# Site Patterns

These patterns are reusable blocks of code meant for developers and designers to build site templates.

## Global Header

This is the header that appears at the top of every page.

<div class="preview">
	<header class="global-header">
		<div class="grid-box">
			<div class="grid-item width-one-half">
				<h1><a href="/">City of Oakland</a></h1>
			</div>
			<div class="grid-item width-one-half">
				{% unless page.role == 'homepage' %}
				<form class="site-search">
				    <input type="search" placeholder="e.g., pay a parking ticket">
				    <input type="submit" value="Search">
				</form>
				{% endunless %}
			</div>
		</div>
	</header>	
</div>



## Global Footer

This is the footer that appears at the bottom of every page.

<div class="preview">
	<footer class="global-footer">
		&copy; 2015 City of Oakland
	</footer>

</div>

## Breadcrumbs

Breadcrumbs offer a contextual cue to where the user is in the site hierarchy. They are especially useful when users arrive at a page from a different website (e.g, Google) and provide a sense of context to where they are and allows them to quickly navigate to a different context if necessary.

<div class="preview">
	<nav class="nav-breadcrumbs">
	    <span class="nav-breadcrumbs-item"><a href="#">City</a></span>
	    <span class="nav-breadcrumbs-item"><a href="#">Service</a></span>
	    <span class="nav-breadcrumbs-item"><a href="#">Subservice</a></span>
	    <span class="nav-breadcrumbs-item">Article Name</span>
	 </nav>
</div>

## Slab Section

Slab are used to separate logical chunks of content within a page. They are a foundational building block of content meant to be customized for specific usages. Each instance of a slab section should have a second class of `site-section-instance` where custom styles can be applied. 

Common uses of slab sections would to be include a header and custom layout of elements using the grid box layout. Custom background colors or images can also be applied to slab sections as they are full-bleed by default.

<div class="preview">
	<section class="section-slab section-slab-example">
		<h2>Slab Section Title</h2>
		<div class="grid-box">
			<div class="grid-item width-one-third">
				<aside>Grid Item</aside>
			</div>
			<div class="grid-item width-one-third">
				<aside>Grid Item</aside>
			</div>
			<div class="grid-item width-one-third">
				<aside>Grid Item</aside>
			</div>
		</div>
	</section>
</div>

## Search Site Form

A default combinaton of a seach type input and a custom submit button used to globally search the site.

<div class="preview">
	<form class="site-search">
	    <input type="search" placeholder="e.g., pay a parking ticket">
	    <input type="submit" value="Search">
	</form>
</div>

# Templates

## Home

## Service

## Subservice

## Article