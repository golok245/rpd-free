# Enable RDP
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# Set RDP configuration to allow connections
$RDPSettings = Get-WmiObject -Class Win32_TSGeneralSetting -Namespace "Root\CIMv2\TerminalServices"
$RDPSettings[0].SetAllowTSConnections(1)

# Ensure RDP service is running
Start-Service -Name TermService
