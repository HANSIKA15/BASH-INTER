#!/bin/bash
# Chapters 9 & 10: Debugging + Admin Features
# Set restrictive default permissions
umask 077

# Limit number of open file descriptors
ulimit -n 64

# Sanitize and restrict PATH to trusted locations
export PATH="/usr/local/bin:/usr/bin:/bin"

# Check for privileged (root) mode
if [ "$EUID" -eq 0 ]; then
    echo "Running as root (privileged mode). Skipping user startup files."
else
    echo "Running as normal user."
fi

# ----------------------
# Debugging Setup
# ----------------------

# Print each command before execution
set -v

# Trace command execution with expanded variables
set -x

# Customize trace prefix
export PS4='+ (${LINENO}): '

# Trap for command errors
function errtrap {
    code=$?
    echo "ERROR: Command failed with exit code $code"
}
trap errtrap ERR

# Trap to display each command
function dbgtrap {
    echo "Executing: $BASH_COMMAND"
}
trap dbgtrap DEBUG

# Cleanup trap
trap 'echo "Script completed. Cleaning up temporary files."' EXIT

# ----------------------
# Main Logic
# ----------------------

# Create secure temp file
tmpfile="/tmp/scan_output_$$.log"
touch "$tmpfile"

# Simulated scoring
score=$((RANDOM % 100 + 1))
echo "Generated score: $score" >> "$tmpfile"

# Grade assignment based on score
if (( score >= 90 )); then
    echo "Grade: A" >> "$tmpfile"
elif (( score >= 75 )); then
    echo "Grade: B" >> "$tmpfile"
elif (( score >= 50 )); then
    echo "Grade: C" >> "$tmpfile"
else
    echo "Grade: F" >> "$tmpfile"
fi

# Output results
cat "$tmpfile"

# Manual cleanup (also done by EXIT trap)
rm -f "$tmpfile"
