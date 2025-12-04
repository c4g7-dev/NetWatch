## What's New in v1.3.4

This release focuses on **simplifying installation** and **improving chart clarity** based on user feedback.

### 🚀 Installation Improvements

**Simplified Setup Process**
- `install-linux.sh` now only installs Python dependencies (no more automated service configuration)
- Users have full control over systemd service setup using clear documentation
- Updated README with both quick-start script and manual installation options
- Added comprehensive systemd service example with placeholder values

**Better Documentation**
- Step-by-step manual installation guide for Linux and Windows
- Clear examples for systemd service configuration
- Improved troubleshooting section
- Added Python symlink command for systems with only `python3` installed

### 📊 Chart Improvements

**Internet Tab - Simplified Jitter & Bufferbloat Chart**
- Now shows only **Gateway Ping** and **Jitter** for clearer focus
- Removed redundant Idle/Download/Upload Ping metrics (available in other charts)
- Easier to identify network quality issues at a glance

**Homenet Tab - Consolidated Charts**
- Removed duplicate "Jitter & Bufferbloat" chart
- Single comprehensive **Ping Analysis** chart now shows all 5 metrics:
  - Idle Ping
  - Download Ping  
  - Upload Ping
  - Gateway Ping
  - Jitter
- Cleaner dashboard layout with better data organization

### 🐛 Bug Fixes

- **Fixed JavaScript error** - Resolved undefined `ping` variable in Internet tab (changed to `pingIdle`)
- **Chart consolidation** - Eliminated duplicate Homenet chart that was confusing users

### 📖 Metric Differences Explained

**Gateway Ping** measures round-trip time to your router (local network latency)
- Normal values: 1-5ms
- High values indicate local network issues

**Jitter** measures ping variation/consistency
- Normal values: 0-5ms  
- High values indicate unstable connection

**Ping (Download/Upload)** measures latency while bandwidth is saturated
- Shows connection responsiveness under load
- Used to detect bufferbloat

**Download/Upload Latency** measures additional delay added under load
- Calculation: Loaded Ping - Idle Ping
- Shows how much slower your connection gets when busy

## Installation

### Linux Quick Start

```bash
# Clone repository
git clone https://github.com/c4g7-dev/NetWatch.git
cd NetWatch

# Run setup script
bash install-linux.sh

# Activate virtual environment
source .venv/bin/activate

# Start NetWatch
python main.py
```

For systemd service setup, see the [README](https://github.com/c4g7-dev/NetWatch/blob/master/README.md#systemd-service-example).

### Windows

```bash
# Clone repository
git clone https://github.com/c4g7-dev/NetWatch.git
cd NetWatch

# Create virtual environment
python -m venv .venv

# Activate
.venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Start NetWatch
python main.py
```

## Upgrade Instructions

If upgrading from v1.3.3 or earlier:

```bash
cd /path/to/netwatch
git pull origin master
source .venv/bin/activate  # or .venv\Scripts\activate on Windows
pip install -r requirements.txt --upgrade
```

Then restart NetWatch (or `systemctl restart netwatch` if running as service).

**Note:** Your measurement data and configuration are preserved during upgrades.

## Full Changelog

**Full Changelog**: https://github.com/c4g7-dev/NetWatch/compare/v1.3.3...v1.3.4
