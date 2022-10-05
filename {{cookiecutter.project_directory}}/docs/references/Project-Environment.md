Project Environment
===================

__Authors__  
Kevin T. Chu `<kevin@velexi.com>`

------------------------------------------------------------------------------

__Note__. This reference only applies if you are using `direnv` to manage
your project environment.

------------------------------------------------------------------------------

### Environment Variables

If `direnv` is enabled, the following environment variables are automatically
set whenever you change into the project directory.

* `PYTHONPATH`: search paths for Python packages and modules

### Customizing the Project Environment

The following variables can be set in the `.envrc` file to customize the
project environment.

* `PATH_EXTRA`: space-delimited list of paths to add to the `PATH` environment
  variable

* `PYTHONPATH_EXTRA`: space-delimited list of paths to add to the `PYTHONPATH`
  environment variable

------------------------------------------------------------------------------
