# danielebonetta.info

Personal website. A [Jekyll](https://jekyllrb.com) site published with GitHub
Pages from the `master` branch; the custom domain lives in `CNAME`.

## Preview locally

```
./serve.sh          # build and serve on http://localhost:4000, rebuilds on save
./serve.sh 8080     # same, on another port
./serve.sh --static # serve the last build in _site/ without Jekyll (stale)
```

The first run installs the gems from the `Gemfile` via Bundler. If Jekyll is
missing, `serve.sh` explains what to install rather than failing silently.

## Layout of the repo

```
index.md              one-page homepage (news, ongoing work, teaching, contact)
research.md           background and research statement
teaching.md           courses and student resources
projects.md           open B.Sc. and M.Sc. project topics
contact.md            full contact details
_layouts/default.html the single page template
_config.yml           site metadata and the navigation menu
css/main.scss         stylesheet entry point; imports the partials below
_sass/_tokens.scss    colours, fonts, measure -- change the look here first
_sass/_base.scss      element defaults
_sass/_layout.scss    page frame, header, navigation
_sass/_prose.scss     long-form pages
_sass/_home.scss      homepage sections
serve.sh              local preview helper (excluded from the built site)
```

Adding a page: create `<name>.md` with `layout: default` front matter, then add
an entry under `nav:` in `_config.yml` if it belongs in the menu.

Adding a news item: put a new `<li>` at the top of the `ul.news` list in
`index.md`, keeping the `<span class="when">` / `<span class="what">` shape.

## License

Originally based on the [_researcher_](http://ankitsultana.com/researcher)
template -- [GNU GPL v3](https://github.com/bk2dcradle/researcher/blob/gh-pages/LICENSE).
