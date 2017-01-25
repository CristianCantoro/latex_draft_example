# LaTeX DRAFT Watermark Example

A simple working example to show how to add a "draft" annotation to a paper written with LaTeX.

## Usage

More info on [my blog](https://balist.es/blog/2017/01/26/git-latex-gitinfo-draft-watermark/).

### Setup

To use this example you need to create some git hooks in your repo.
Clone the repo and launch the setup script:
```bash
~$ git clone https://github.com/CristianCantoro/latex_draft_example.git
~$ cd latex_draft_example
latex_draft_example$ ./setup.sh
```
this will simply copy the files from `latex_draft_example/.hooks/`
in `latex_draft_example/.git/`.

### Commands and Options

Play around with the `\draft` command, you can use \draft{long}` if you want to display
the latest commit date _and time_ in the DRAFT stamp.

You can use the command `\iftoggle` with the global toggle `IsDraft` to change what is
visualized when in "draft mode" or not.

For example the following:
```TeX
\iftoggle{isDraft}{Draft}{Final}
```
will visualize the test "Draft" when the command `\draft` is used and "Final" otherwise.

### Compile

```bash
latex_draft_example$ make
```

### Cleaning

To clean the temporary file and the target PDF file you can use the cleaning script:
```bash
latex_draft_example$ ./clean
```
