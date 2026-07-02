# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Configuration Overview

This repository is a personal Emacs configuration using the standard `.emacs.d` structure. The configuration utilizes `use-package` to manage package installation and configuration.

## Architecture

- `init.el`: Main configuration file containing all package setups and customizations
- `custom-vars.el`: Auto-generated file for custom variables maintained by Emacs
- `elpa/`: Directory containing installed packages
- `backups/`: Directory where backup files are stored
- `.cache/`: Cache directory for various packages
- `auto-save-list/`: Auto-save data

## Key Components

1. **Package Management**:
   - Uses `use-package` for declarative package configuration
   - Repositories: MELPA, ELPA, and Org ELPA
   - `auto-package-update` for automatic package updates

2. **UI Configuration**:
   - Doom modeline and themes (with ability to toggle between light/dark themes)
   - Dashboard for a custom startup screen
   - Custom font configuration (Comic Code)
   - Treemacs file explorer

3. **Editor Features**:
   - Evil mode for Vim keybindings
   - Ivy/Counsel for completion
   - Projectile for project management
   - Company for code completion
   - Magit for Git operations

4. **Org Mode Configuration**:
   - Enhanced with org-modern for better UI
   - org-roam for note-taking with a graph visualization (org-roam-ui)
   - Custom templates for different types of notes
   - Babel for code block execution

5. **Language Support**:
   - Rust mode with eglot integration
   - YAML and Ansible modes
   - Nix mode

## Common Operations

### Package Management

- Install a new package:
  ```elisp
  (use-package package-name
    :ensure t)
  ```

- Update all packages:
  ```
  M-x auto-package-update-now
  ```

### Configuration Practices

1. When adding new packages, follow the `use-package` pattern established in `init.el`
2. Maintain consistent formatting with 2-space indentation
3. Group related configurations together
4. Use the custom-file (`custom-vars.el`) for Emacs-generated customizations only

### Testing Changes

- Evaluate a buffer after changes:
  ```
  M-x eval-buffer
  ```
  or use the keybinding: `C-c e`

- Test isolated elisp expressions:
  ```
  C-x C-e  ; Evaluate expression before point
  ```

### Debugging

- Check startup performance:
  ```
  M-x efs/display-startup-time
  ```

- Use `emacs --debug-init` to start Emacs with debugging for initialization issues