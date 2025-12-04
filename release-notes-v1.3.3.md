## What's Changed

### Installation Simplification
- **Removed installer.py** - The automated installer has been removed. Binary installation now works directly without additional setup scripts
- **Simplified netwatch.service** - Updated systemd service template with user-configurable placeholders (YOUR_USERNAME, /path/to/netwatch) for easier customization
- **Added Python symlink command** - For Linux systems with only python3 installed: `sudo ln -s /usr/bin/python3 /usr/bin/python`

### Metric Naming Unification
- **Split Loaded Ping metric** - Changed from single "Loaded Ping" to separate "Download Ping" and "Upload Ping" metrics on Homenet tab to match Internet tab naming
- **Consistent terminology** - Both Internet and Homenet tabs now use identical metric names (Idle Ping, Download Ping, Upload Ping, Jitter) for easier comparison
- **Updated chart titles** - Renamed Homenet charts for clarity:
  - "LAN Latency History" to "Jitter & Bufferbloat"
  - "Bufferbloat (Latency Under Load)" to "Ping Analysis (Idle vs Download vs Upload vs Gateway)"

### Chart Enhancements
- **Internet tab Jitter & Bufferbloat chart** - Enhanced from single Jitter line to 4 datasets:
  - Idle Ping (ms)
  - Download Ping (ms)
  - Upload Ping (ms)
  - Jitter (ms)
- **Homenet Latency chart** - Now shows 4 datasets: Idle Ping, Download Ping, Upload Ping, and Jitter
- **Homenet Bufferbloat chart** - Now shows 4 datasets: Idle Ping, Download Ping, Upload Ping, and Gateway Ping

### Documentation
- **Manual installation guide** - Added step-by-step instructions for Linux and Windows in README
- **Service setup instructions** - Moved systemd service configuration inline with example template

## Installation

### Linux
1. Download the netwatch binary
2. Make it executable: `chmod +x netwatch`
3. (Optional) For systems with only python3: `sudo ln -s /usr/bin/python3 /usr/bin/python`
4. Run: `./netwatch`

### Windows
1. Download netwatch.exe
2. Run by double-clicking or via command prompt

See the [README](https://github.com/c4g7-dev/NetWatch/blob/master/README.md) for detailed instructions and systemd service setup.

**Full Changelog**: https://github.com/c4g7-dev/NetWatch/compare/v1.3.2...v1.3.3
