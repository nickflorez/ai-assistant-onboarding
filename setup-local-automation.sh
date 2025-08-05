#!/bin/bash
# Setup script for local PNG organization automation

echo "🚀 Setting up local PNG organization automation..."

# Create LaunchAgents directory if it doesn't exist
mkdir -p ~/Library/LaunchAgents

# Copy the plist file to LaunchAgents
cp com.nickflorez.png-organizer.plist ~/Library/LaunchAgents/

# Load the launch agent
launchctl load ~/Library/LaunchAgents/com.nickflorez.png-organizer.plist

echo "✅ Launch agent installed and loaded"
echo "📅 The PNG organizer will run daily at 8:00 AM"
echo "📁 Logs will be saved to:"
echo "   - Standard output: $(pwd)/png-organizer.log"
echo "   - Error output: $(pwd)/png-organizer-error.log"

echo ""
echo "🧪 To test the automation now, run:"
echo "   ./claude-png-organizer.sh"

echo ""
echo "🔧 To uninstall later, run:"
echo "   launchctl unload ~/Library/LaunchAgents/com.nickflorez.png-organizer.plist"
echo "   rm ~/Library/LaunchAgents/com.nickflorez.png-organizer.plist"