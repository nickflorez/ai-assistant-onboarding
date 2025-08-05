#!/usr/bin/env python3
"""
Local PNG File Organizer
Moves PNG files from Downloads to Needs Filing with proper naming convention
"""

import os
import glob
import shutil
from datetime import datetime
from pathlib import Path

def organize_png_files():
    """
    Move PNG files from Downloads to Needs Filing folder with proper naming
    """
    downloads_path = Path.home() / "Downloads"
    needs_filing_path = downloads_path / "Needs Filing"
    
    # Create Needs Filing directory if it doesn't exist
    needs_filing_path.mkdir(exist_ok=True)
    
    # Find all PNG files in Downloads
    png_files = list(downloads_path.glob("*.png"))
    
    if not png_files:
        print("📁 No PNG files found in Downloads folder")
        return
    
    print(f"🔍 Found {len(png_files)} PNG files to organize")
    
    for png_file in png_files:
        try:
            # Extract base name without extension
            base_name = png_file.stem
            
            # Get current date
            current_date = datetime.now().strftime("%Y-%m-%d")
            
            # Apply naming convention: [PROVIDER] | [TYPE/PURPOSE] | [YYYY-MM-DD].png
            # For now, we'll use the original filename as TYPE/PURPOSE
            new_name = f"Screenshot | {base_name} | {current_date}.png"
            
            # Full path for new file
            new_path = needs_filing_path / new_name
            
            # Move file
            shutil.move(str(png_file), str(new_path))
            print(f"✅ Moved: {png_file.name} → {new_name}")
            
        except Exception as e:
            print(f"❌ Error moving {png_file.name}: {e}")
    
    print(f"🎉 PNG organization complete! Files moved to: {needs_filing_path}")

if __name__ == "__main__":
    print("🤖 Starting PNG file organization...")
    organize_png_files()
    print("✅ PNG organization task completed!")