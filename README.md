# paper-template

This is a template repository to initialize research paper projects.
The indented use is the following

1. Upon starting to write a research paper, clone the repository.
2. Write and collaborate on the main branch.
3. When submitting, checkout to the needed style, and [rebase][] your
   modifications.
4. Enjoy.

## Why

This serves the dual purpose of setting up a clean writing environment
with useful macros and sane packages, with the guarantee that migrating to
the style of a specific journal or conference will be *less* painful.

## Supported Styles

Currently, the following styles are available:

- [lipics][]
- [lmcs][]
- [IEEETran][]
- [MSC][]


[lipics]: https://github.com/dagstuhl-publishing/styles/tree/master
[lmcs]: https://lmcs.episciences.org/
[IEEETran]: https://www.ieee.org/conferences/publishing/templates.html
[MSC]: https://www.cambridge.org/core/journals/mathematical-structures-in-computer-science/information/author-instructions

## How

The repository contains one branch per LaTeX style, with the custom
"patches" to make them compatible with everyday LaTeX writing.
Every branch follows the same file organisation, so that [rebasing][rebase]
does not introduce unnecessary conflicts.

```
├── globals
│   ├── colorscheme.tex
│   ├── knowledges.kl
│   ├── macros.tex
│   ├── mathdefs.tex
│   ├── metadata.tex
│   ├── packages.tex
│   └── papers.bib
├── LICENSE
├── paper-name.tex
└── README.md
```

: The general file hierarchy.

The template does not impose a particular way of organising content, but
encourages users to write macros, import packages, and define metadata in
files placed in the `globals` directory.

| File Name | Description |
| --------- | ----------- |
| `colorscheme.tex` | Defines specific colours used in the paper, using `xcolor` |
| `packages.tex` | Imports the LaTeX packages used in the document, with specific options |
| `macros.tex` | User-defined custom macros for content or document creation |
| `mathdefs.tex` | User-defined custom macros for mathematical writing |
| `papers.bib` | Bibliographic entries for the given paper |
| `knowledge.kl` | [Knowledges][] used in the document |


## Provided Macros and Environments

The repository comes with pre-defined semantic environments: Theorem,
Lemma, Corollary, Fact, Definition, Proposition, Example, Remark,
Exercise, Claim, Tool, and Conjecture.

However, custom mathematical macros are bound to cause conflict with
user defined macros, and are left to the discretion of the users.

## How to contribute

You can fork the repository and add a branch with your favourite
conference/journal. In the `tests/` folder of the `master` branch, you
will find a list of LaTeX snippets that **must** compile without any
modification in every style of the repository. This check has not been
automated yet.

You can also find below a whishlist of things I will never develop
but could be quite useful

- Continuous Integration of the repository to check compatibility
  between the styles
- A uniform convention for macros in `metadata.tex`, so that
  authors and affiliations become cross platform.
- A formalised (using [JSON Schema][]) input for the authors,
  affiliations, and document metadata in general,
  together with a migration script that produces the
  `metadata.tex` file for given templates.
- A [Makefile][] containing usual build processes
  and export targets (for submissions to [arXiv][]).

[Knowledges]: https://www.ctan.org/pkg/knowledge
[JSON Schema]: https://json-schema.org/
[Makefile]: https://fr.wikipedia.org/wiki/Make
[arXiv]: https://arxiv.org/
[rebase]: https://git-scm.com/docs/git-rebase
