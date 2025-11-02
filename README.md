# My Neovim Configuration

LazyVim configuration for Django/Python development with Fish shell integration.

## Features

- 🐍 Python/Django development with Pyright LSP
- 🔍 Virtual environment detection
- 🎨 Transparent background with TokyoNight theme
- 🚀 GitHub Copilot support (requires Node.js 22+)
- 🐠 Fish shell integration
- 📦 Automatic plugin management with Lazy.nvim

## Requirements

- Neovim >= 0.9.0
- Node.js 22+ (for Copilot)
- Python 3.11+
- Git
- Ripgrep (for Telescope)
- A Nerd Font (JetBrains Mono recommended)

## Installation

### 1. Backup existing config (if any)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```

### 2. Clone this repository

```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

### 3. Install dependencies

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install -y neovim ripgrep fd-find git curl build-essential

# Install Node.js 22 (for Copilot)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 22
nvm use 22
```

#### Install Python tools
```bash
pip install black isort ruff pyright
```

#### Install JetBrains Mono Nerd Font
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv
rm JetBrainsMono.zip
```

### 4. Start Neovim

```bash
nvim
```

Plugins will install automatically on first launch.

## Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── autocmds.lua    # Auto commands
│   │   ├── keymaps.lua     # Key mappings
│   │   ├── lazy.lua        # Lazy.nvim setup
│   │   ├── options.lua     # Vim options
│   │   └── node.lua        # Node.js config (optional)
│   └── plugins/
│       ├── colorscheme.lua # Theme configuration
│       ├── python.lua      # Python extras
│       ├── dap-python.lua  # Python debugging
│       ├── telescope.lua   # Fuzzy finder
│       ├── venv-selector.lua # Virtual env selector
│       └── transparent.lua # Transparency settings
└── README.md
```

## Key Mappings

### General
- `<leader>` = `Space`
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>/` - Search in buffer
- `<leader>e` - File explorer

### Python/Django
- `<leader>cv` - Select virtual environment
- `gd` - Go to definition
- `gr` - Find references
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>cf` - Format file

### Copilot
- `<Tab>` - Accept suggestion
- `<leader>cp` - Copilot panel

## Django Project Setup

For Django projects with virtual environments:

1. Create `pyrightconfig.json` in project root:

```json
{
  "venvPath": ".",
  "venv": "venv",
  "extraPaths": [".", "./your_app"],
  "pythonVersion": "3.11",
  "typeCheckingMode": "basic"
}
```

2. Select virtual environment in Neovim:
   - Press `<leader>cv`
   - Navigate to your `venv` folder
   - Press Enter

## Troubleshooting

### Copilot not working
```vim
:Copilot setup
:Copilot status
```

### LSP not starting
```vim
:LspInfo
:LspRestart
```

### Plugins not loading
```vim
:Lazy sync
:Lazy clean
```

### Node version issues
Make sure Node 22+ is in PATH:
```bash
node --version  # Should be v22.x.x
```

## Customization

### Change theme
Edit `lua/plugins/colorscheme.lua`

### Adjust transparency
Edit `lua/plugins/transparent.lua`

### Modify Python settings
Edit `lua/plugins/python.lua`

## Terminal Configuration

This config works best with:
- **Kitty** (with transparency and blur)
- **Alacritty** (good performance)
- **Wezterm** (feature-rich)

See my [Kitty config](https://github.com/YOUR_USERNAME/dotfiles) for transparent setup.

## Credits

- Built on [LazyVim](https://github.com/LazyVim/LazyVim)
- Theme: [TokyoNight](https://github.com/folke/tokyonight.nvim)

## License

MIT
