# USGC Themes + Monaspace Setup Guide

Complete guide to setting up the USGC POLYIMIDE theme with the Monaspace font family.

## Quick Setup

### 1. Install Monaspace Fonts

**Automatic Installation (macOS/Linux):**
```bash
./install-monaspace.sh
```

**Manual Installation:**
1. Visit [Monaspace Releases](https://github.com/githubnext/monaspace/releases)
2. Download `monaspace-static-*.zip`
3. Extract and install the OTF files:
   - **macOS**: Copy to `~/Library/Fonts/`
   - **Windows**: Copy to `C:\Windows\Fonts\`
   - **Linux**: Copy to `~/.local/share/fonts/`

### 2. Configure VS Code

Copy the contents of `recommended-settings.json` to your VS Code `settings.json`:

**Access VS Code Settings:**
- Press `Cmd+,` (macOS) or `Ctrl+,` (Windows/Linux)
- Click the "Open Settings (JSON)" icon in the top right
- Add the font configuration

### 3. Choose Your Monaspace Variant

Each Monaspace font has different characteristics:

| Font | Style | Best For |
|------|-------|----------|
| **Monaspace Krypton** | Mechanical slab serif | Distinctive, retro-futuristic (recommended) |
| **Monaspace Neon** | Neo-grotesque sans-serif | General coding, clean look |
| **Monaspace Argon** | Humanist sans-serif | Long coding sessions, readability |
| **Monaspace Xenon** | Industrial sans-serif | Modern, minimal aesthetic |
| **Monaspace Radon** | Handwriting-inspired | Casual coding, creative work |

## Advanced Configuration

### Texture Healing

Monaspace includes "texture healing" — contextual alternates that improve visual flow:

```json
{
  "editor.fontLigatures": "'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'calt'"
}
```

### Different Font per File Type
```json
{
  "[javascript]": {
    "editor.fontFamily": "'Monaspace Neon'"
  },
  "[markdown]": {
    "editor.fontFamily": "'Monaspace Argon'"
  },
  "[json]": {
    "editor.fontFamily": "'Monaspace Xenon'"
  }
}
```

## Troubleshooting

### Font Not Appearing
1. Restart VS Code completely
2. Check if fonts are installed: Look for "Monaspace" in your system fonts
3. Try using the font name without quotes: `Monaspace Krypton`

### Performance Issues
If you experience slowdowns with ligatures:
```json
{
  "editor.fontLigatures": false
}
```

## Resources

- [Monaspace Repository](https://github.com/githubnext/monaspace)
- [VS Code Font Settings](https://code.visualstudio.com/docs/getstarted/settings#_font-settings)
