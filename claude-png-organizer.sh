#!/bin/bash
# Claude Code-powered PNG file organizer

echo "🤖 Starting Claude Code PNG organization..."

# Set the task for Claude Code
TASK="File documents: Move all PNG files from /Users/nickflorez/Downloads/ to /Users/nickflorez/Downloads/Needs Filing/ and rename them according to the naming convention in your CLAUDE.md instructions. Apply the document filing rules from your instructions."

# Call Claude Code with the task
echo "📋 Calling Claude Code with task: $TASK"

# Use Claude Code CLI with JSON output for programmatic parsing
claude -p "$TASK" --output-format json > /tmp/claude-response.json

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "✅ Claude Code task completed successfully"
    
    # Optionally parse the JSON response
    if command -v jq &> /dev/null; then
        echo "📄 Claude Code Response:"
        jq -r '.content // .message // .' /tmp/claude-response.json
    fi
else
    echo "❌ Claude Code task failed"
    exit 1
fi

echo "🎉 PNG organization task completed at $(date)"