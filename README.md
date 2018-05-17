Grading environment with specific Python version in path.

Includes following extra packages:

 * [Python grader-utils](https://github.com/aalto-letech/python-grader-utils)

Tags
----

Images are tagged with Python and grading-base versions in format `<python>-<grading-base>`.
Version tag can also include `uN` meaning _update N_ where N is an increasing number.
The update part is used to indicate updates to the image, where software versions did not change.
For an example, `3.5-2.0u1` includes Python 3.5 on top of grading-base 2.0 and has one update after first release.


Utility commands
----------------

* `graderutils [arguments]`

    Executes `graderutils.main` python module using `capture` wrapper (check [grading-base](https://github.com/apluslms/grading-base)).
    Provided arguments are passed to the python module.
    If there is no arguments, then the module is executed with `/exercise/test_config.yaml` is the first argument.
    In other words, if you define graderutils configuration in `test_config.yaml`, you only need to have `graderutils` in config.yaml `cmd` field.

* `unittest-capture`

    Wrapper around `capture` and `unittest` python module.
    Does execute `err-to-out` if there is no errors.

* `unittest-testcase [-t title] [-p points] [-s skip] [unittest arguments]`

    Wrapper around `testcase` and `unittest` python module.
    Arguments are passed to `testcase` and unittest arguments for the python module.
    Check `testcase` documentation in [grading-base](https://github.com/apluslms/grading-base).
