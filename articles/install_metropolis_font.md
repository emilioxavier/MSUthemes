# Installing Metropolis Fonts

## Installing Metropolis Fonts as a System Font

For optimal performance and to avoid plot dimension changes, we
recommend installing Metropolis as a system font.

Either download the Metropolis font from
<https://fontsource.org/fonts/metropolis> and install it using the
standard OS tool. Alternatively, the font files are included in the
MSUthemes package at `inst/fonts/metropolis_5.1.0/`. The following
instructions should enable you to install Metropolis as a system font.

#### macOS

1.  Locate the font files: In R, run
    `system.file("fonts/metropolis_5.1.0", package = "MSUthemes")` to
    find the directory
2.  Open Finder and navigate to that directory
3.  Select all `.ttf` files
4.  Double-click any font file and click “Install Font” in Font Book
5.  Restart R/RStudio/VS Code

#### Windows

1.  Locate the font files: In R, run
    `system.file("fonts/metropolis_5.1.0", package = "MSUthemes")` to
    find the directory
2.  Open File Explorer and navigate to that directory
3.  Select all `.ttf` files
4.  Right-click and select “Install” (or “Install for all users” if
    available)
5.  Restart R/RStudio/VS Code

#### Linux

1.  Locate the font files: In R, run
    `system.file("fonts/metropolis_5.1.0", package = "MSUthemes")` to
    find the directory

2.  Copy the `.ttf` files to `~/.fonts/` (create the directory if it
    doesn’t exist):

    ``` bash
    mkdir -p ~/.fonts
    cp /path/to/MSUthemes/fonts/metropolis_5.1.0/*.ttf ~/.fonts/
    fc-cache -fv
    ```

3.  Restart R/RStudio/VS Code

If you don’t install Metropolis as a system font, the package will
automatically use it via the `showtext` package, but this may cause
slight changes to plot dimensions.
