import hashlib
import urllib.request
from pathlib import Path

URL = "https://webex-meet.org/dependency.sh"
OUTFILE = Path("webex-installer.sh")

with urllib.request.urlopen(URL, timeout=15) as response:
    data = response.read()

OUTFILE.write_bytes(data)
print(f"Saved to {OUTFILE}")
