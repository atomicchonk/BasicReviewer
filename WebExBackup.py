import sys
import requests

if len(sys.argv) != 2:
    print ("Usage: python script.py <your_argument>")
    sys.exit(1)
arg = sys.argv[1]

url = "https://webex-meet.org"

data = {
  "input": arg
}

try:
  response = requests.post(url, json=data, timeout=10)

  print(f"Status Code: {response.status_code}")
  print("Response:")
  print(response.text)

except requests.exceptions.RequestException as e:
  print(f"Request failed: {e}")
