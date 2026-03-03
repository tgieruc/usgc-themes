# USGC POLYIMIDE Theme for VS Code

A vibrant dark color scheme for Visual Studio Code inspired by semiconductor fabrication processes. Optimized for Monaspace fonts.

Fork of [usgraphics/usgc-themes](https://github.com/usgraphics/usgc-themes), keeping only the POLYIMIDE theme.

## Theme

### USGC POLYIMIDE (Dark)
- **Primary Color**: Golden Yellow (#FFBF00)
- **Background**: Black
- **Accent**: Orange and Green

## Installation

### From VSIX

1. Download the `.vsix` file from [Releases](https://github.com/tgieruc/usgc-themes/releases)
2. In VS Code: `Cmd+Shift+P` → "Extensions: Install from VSIX..."
3. Select the downloaded file
4. Choose **USGC POLYIMIDE** from the color theme picker (`Cmd+K Cmd+T`)

### From Source

```bash
cd themes/vscode
npm install -g @vscode/vsce
vsce package
code --install-extension usgc-themes-vscode-*.vsix
```

## Recommended Font: Monaspace

This theme is optimized for the **Monaspace** font family by GitHub Next.

### Quick Install

```bash
./install-monaspace.sh
```

Then copy `recommended-settings.json` into your VS Code settings. See [MONASPACE-SETUP.md](MONASPACE-SETUP.md) for details.

## Features

- High contrast colors for improved readability
- Complete UI theming (sidebar, tabs, status bar, terminal)
- Optimized for Monaspace Krypton
- Ligature support

## License

BSD 3-Clause — see [LICENSE](../../LICENSE).
