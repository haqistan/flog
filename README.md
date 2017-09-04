# flog - MultiMarkdown-based static site/blog generator

[MultiMarkdown](https://github.com/fletcher/MultiMarkdown-5) is an
extended version of [Markdown](https://daringfireball.net/projects/markdown/).
Its key addition is simple `key: value` style metadata at the start
of the file, separated from the markdown content by a blank line.  It
also adds extended table handling, footnotes and other niceties.
In practice you can generate web sites and very nice looking PDF
files using `LaTeX` with little effort.

The meta-data facilities are enough to do a static site/blog generator
that includes tags, static pages, featured posts, drafts, various
kinds of structured content (books, papers), etc.  Flog is a tool
written in Perl that does this, with minimal dependencies:

* `Modern::Perl`, which surely must be a requirement everywhere in the civilized perliverse now;
* Time::ParseDate, a part of [Time-modules](http://search.cpan.org/~muir/Time-modules/) from CPAN.

If you want to see an example, the
[haqistan.net web site](https://haqistan.net) is managed using flog.

## Installation from source

The usual:

```
$ perl Makefile.PL
$ make
$ doas make install
```

YMMV.
