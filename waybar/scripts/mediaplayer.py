#!/usr/bin/env python3
import json
import subprocess

def get_metadata():
    try:
        # Fetch metadata using playerctl
        artist = subprocess.check_output(["playerctl", "-p", "spotify", "metadata", "artist"], text=True).strip()
        title = subprocess.check_output(["playerctl", "-p", "spotify", "metadata", "title"], text=True).strip()
        status = subprocess.check_output(["playerctl", "-p", "spotify", "status"], text=True).strip()

        # Prepare JSON output
        metadata = {
            "text": f"{artist} - {title}",
            "alt": status,
            "tooltip": f"Artist: {artist}\nTitle: {title}\nStatus: {status}",
            "class": status.lower()
        }
        return metadata
    except subprocess.CalledProcessError:
        # Return empty data if Spotify is not running
        return {
            "text": "No music playing",
            "alt": "stopped",
            "tooltip": "Spotify is not running",
            "class": "stopped"
        }

if __name__ == "__main__":
    metadata = get_metadata()
    print(json.dumps(metadata))
