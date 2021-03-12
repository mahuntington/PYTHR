# Testing

Welcome to the testing folder. Here, you will find tests to promote quality of content and environment. This is in development.

### Using the Utility

- Clone this repo locally to your machine
- Move into the `/tests` folder using a terminal
- If desired, activate the virtual environment you will be using for this course
- Run `python test_package_versions.py` from the terminal
- A successful result looks as follows (note the OK) at the bottom. NOTE: the _number_ of tests may differ as the curriculum evolves. The important metric is that _all tests pass_:

```
$ python test_package_versions.py
test_flask (__main__.TestPkgVersions) ... ok
test_matplotlib (__main__.TestPkgVersions) ... ok
test_notebook (__main__.TestPkgVersions) ... ok
test_numpy (__main__.TestPkgVersions) ... ok
test_pandas (__main__.TestPkgVersions) ... ok
test_requests (__main__.TestPkgVersions) ... ok

----------------------------------------------------------------------
Ran 6 tests in 0.545s

OK
```
- A failed result looks as follows.
  - Note the `FAILED (failures=2)` at the bottom
  - Here, we can see that the versions of matplotlib and requests are not sufficient for the requirements and must be updated:
```
$ python test_package_versions.py
test_flask (__main__.TestPkgVersions) ... ok
test_matplotlib (__main__.TestPkgVersions) ... FAIL
test_notebook (__main__.TestPkgVersions) ... ok
test_numpy (__main__.TestPkgVersions) ... ok
test_pandas (__main__.TestPkgVersions) ... ok
test_requests (__main__.TestPkgVersions) ... FAIL

======================================================================
FAIL: test_matplotlib (__main__.TestPkgVersions)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "test_package_versions.py", line 14, in test
    self.assertTrue(importlib.import_module(pkg).__version__ >= v)
AssertionError: False is not true

======================================================================
FAIL: test_requests (__main__.TestPkgVersions)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "test_package_versions.py", line 14, in test
    self.assertTrue(importlib.import_module(pkg).__version__ >= v)
AssertionError: False is not true

----------------------------------------------------------------------
Ran 6 tests in 0.544s

FAILED (failures=2)
```

### For Instructor Use

- To add additional libraries to be checked, add the name of the library and the minimum required version, to the `config.ini` file. The `test_package_versions.py` script will parse the `config.ini` file when it is executed
  - Note that versions _greater than or equal to_ the specified version in `config.ini` will pass tests
- The `/config.ini` file is built to contain all parameters needed for this and future testing
  - Please use configparser, not yaml, as configparser is 
     - more readable than json, and 
     - does not have external dependencies as pyyaml does
- It is important to note that there are no external dependencies for this testing folder, all libraries used are pure python
- This is intentional - this repo is designed to be used on a _completely vanilla_ python3 machine; the testing framework itself must exist for other items to be tested (why `pytest` was not used)

