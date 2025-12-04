#!/bin/bash
# NetWatch Linux Quick Setup Script
# Installs Python dependencies only

set -e

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== NetWatch Quick Setup ===${NC}\n"

# Check for Python 3.10+
echo "Checking Python version..."
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}Error: Python 3 is not installed${NC}"
    echo "Install Python 3.10+ and try again"
    exit 1
fi

PYTHON_VERSION=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
if ! python3 -c "import sys; exit(0 if sys.version_info >= (3, 10) else 1)" 2>/dev/null; then
    echo -e "${RED}Error: Python 3.10+ required (found $PYTHON_VERSION)${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Python $PYTHON_VERSION detected${NC}\n"

# Create virtual environment
echo "Creating Python virtual environment..."
python3 -m venv .venv
echo -e "${GREEN}✓ Virtual environment created${NC}\n"

# Install Python dependencies
echo "Installing Python dependencies..."
.venv/bin/pip install --upgrade pip
.venv/bin/pip install -r requirements.txt
echo -e "${GREEN}✓ Python dependencies installed${NC}\n"

echo -e "${GREEN}=== Setup Complete! ===${NC}\n"
echo "To run NetWatch:"
echo "  1. Activate virtual environment: source .venv/bin/activate"
echo "  2. Run application: python main.py"
echo ""
echo "For systemd service setup, see README.md"

