# AI Dotfiles

Personal collection of AI configurations and dotfiles.

## Structure

```
.
└── claude/
    ├── agents/          # Custom Claude Code agent definitions
    ├── commands/        # Slash command implementations
    ├── hooks/           # Shell hook scripts
    ├── output-styles/   # Custom output style configurations
    ├── prompts/         # Reusable prompt templates
    └── shared/          # Cross-tool resources
        └── shell/       # Shell functions and aliases
```

## Quick Start

### Claude Code Wrapper

Source the `claudio` function for enhanced Claude Code usage:

```bash
source claude/shared/shell/claudio.sh
```

Features:
- Privacy-focused (disables telemetry and error reporting)
- Skips permission prompts
- Passes through all Claude CLI arguments

Usage:
```bash
claudio --resume
claudio --help
```
