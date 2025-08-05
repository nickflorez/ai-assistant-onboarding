# AI Assistant Onboarding Repository

This repository contains automated tasks using Claude Code as an AI assistant for file organization and management.

## Solutions Available

### 1. GitHub Actions (Cloud-based logging)
- **File**: `.github/workflows/daily-png-filing.yml`
- **Trigger**: Daily at 8:00 AM UTC
- **Purpose**: Logs the intended PNG organization task (placeholder implementation)

### 2. Local macOS Automation (Recommended)
- **Files**: `claude-png-organizer.sh`, `com.nickflorez.png-organizer.plist`
- **Trigger**: Daily at 8:00 AM local time
- **Purpose**: Actually moves and renames PNG files using Claude Code CLI

## Quick Setup (Local Automation)

1. **Install the local automation**:
   ```bash
   ./setup-local-automation.sh
   ```

2. **Test immediately**:
   ```bash
   ./claude-png-organizer.sh
   ```

## How It Works

The local automation:
1. Uses macOS LaunchAgent to trigger daily at 8:00 AM
2. Calls Claude Code CLI with file organization instructions
3. Claude Code reads your CLAUDE.md instructions and applies document filing rules
4. PNG files are moved from `Downloads/` to `Downloads/Needs Filing/`
5. Files are renamed using the convention: `[PROVIDER] | [TYPE/PURPOSE] | [YYYY-MM-DD].png`

## Files Included

- `claude-png-organizer.sh` - Main script that calls Claude Code
- `local-png-organizer.py` - Simple Python fallback (no AI)
- `com.nickflorez.png-organizer.plist` - macOS LaunchAgent configuration
- `setup-local-automation.sh` - Installation script
- `.github/workflows/daily-png-filing.yml` - GitHub Action (demonstration)

## Logs

- Standard output: `png-organizer.log`
- Error output: `png-organizer-error.log`

## Manual Control

- **Test now**: `./claude-png-organizer.sh`
- **Uninstall**: 
  ```bash
  launchctl unload ~/Library/LaunchAgents/com.nickflorez.png-organizer.plist
  rm ~/Library/LaunchAgents/com.nickflorez.png-organizer.plist
  ```