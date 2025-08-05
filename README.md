# AI Assistant Onboarding Repository

This repository contains GitHub Actions workflows that trigger automated tasks using Claude Code as an AI assistant.

## Current Workflows

### Daily PNG File Organization
- **File**: `.github/workflows/daily-png-filing.yml`
- **Trigger**: Daily at 8:00 AM UTC
- **Purpose**: Automatically organize PNG files from Downloads folder to Needs Filing folder with proper naming convention

## Setup Instructions

1. **Add Anthropic API Key**: 
   - Go to repository Settings → Secrets and variables → Actions
   - Add a new secret named `ANTHROPIC_API_KEY` with your Anthropic API key

2. **Configure Claude Code**: 
   - Ensure Claude Code is configured to accept API calls
   - Verify local system access permissions

## File Naming Convention

PNG files are renamed according to the convention specified in CLAUDE.md:
- Format: `[PROVIDER] | [TYPE/PURPOSE] | [YYYY-MM-DD].png`
- Files are moved from `Downloads/` to `Downloads/Needs Filing/`

## Manual Triggering

All workflows can be triggered manually via the GitHub Actions tab using the "workflow_dispatch" trigger.