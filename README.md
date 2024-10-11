# Iconland

Iconland is the ground to do the operations related to grauity-icons. Majorly it should back up all the design svg icons and the final package should publish all the icons present in the latest version of this repository.


## Changing the icons

1. Get .svg files for icons
2. Make sure they conform to the icon SVG file naming convention, which is:
    - Icon SVG files names can be like: `Collection_icon-name.svg` or `Collection_icon-name-filled.svg`, where `Collection` is the collection/group of the icon in <strong>PascalCase</strong>, like `System`, `Alert`, `Code`, etc. and `icon-name` is the name of the icon in <strong>kebab-case</strong>.
    - There can be two variants of each icon: `default` or `filled`.
    - The `filled` variant SVG file should be suffixed by `-filled`.
    - The `default` variant SVG file <strong>SHOULD NOT</strong> be suffixed by `-default`. Checkout `scripts/remove-default-suffix.sh` to remove this unnecessary suffix which is added to file names when exporting from Figma currently.
3. Add all icon SVG files (NOTE: only .svg files, no folders or other file extension) in the `/optimized` folder.
4. `git add` and `git commit` to `master` branch of the GitHub `iconland` repository.
5. In `grauity`, Run the command `git submodule update --remote --merge` to update the `iconland` submodule to the latest GitHub version.
6. In `grauity`, Run the command `npm run build:icons` to generate the file `grauity-icons.scss`.

Please visit [grauity](https://github.com/Newton-School/grauity) for the full context of icon-related workflows.
