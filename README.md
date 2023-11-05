# papi721 LazyVim configuration

This is my Neovim configuration based on folke's [LazyVim](https://github.com/LazyVim/LazyVim) setup.

## Formatting C

Okay formatting C codes is a quite troublesome, but you can do so using
`clang-format`.

Steps:
    - Install `clang-format` in mason
    - Use `clang-format` in conform.nvim
    - To format using `clang-format` you need to have a `.clang-format` file
        - NOTE: The `.clang-format` file needs to be placed in:
            - the project folder or
            - any parent folder of the file you want to format.
        - `clang-format.exe` searches for the config file automatically starting
          with the folder where the file you want to format is located, all the
          way to the topmost directory.
    - So put your `.clang-format` in like your `$HOME` directory
    - Now you are all set

## References
- A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
- [Documentation](https://lazyvim.github.io/installation) to get started.
