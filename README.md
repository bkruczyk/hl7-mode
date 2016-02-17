`hl7-mode`
==========

Major mode for editing HL7v2 messages.

## Features

* Segment headers and separators highlighting.
* Press <kbd>TAB</kbd> (or <kbd>SHIFT + TAB</kbd>) to go to the next
  (previous) field, component or subcomponent.
* Eldoc integration: display segment header, field, component and
  subcomponent at point in echo area.

## Installation

Drop `hl7-mode.el` in `~/.emacs.d/site-lisp/`, add folowing line to
your init file and restart Emacs.

``` emacs-lisp
(autoload 'hl7-mode "~/.emacs.d/site-lisp/hl7-mode.el" "Major mode for editing HL7v2 messages." t nil)
```

Now you can enable mode with <kbd>M-x hl7-mode RET</kbd> after opening
HL7 message.

You can use `magic-mode` for enabling `hl7-mode` automatically when
you open a file starting with `MSH|^~\&`. Add following line to your
init file and restart Emacs.

``` emacs-lisp
(push '("^MSH|\\^~\\\\\\&" . hl7-mode) magic-mode-alist)
```
