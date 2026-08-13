
#https://lazyadmin.nl/powershell/powershell-gui-howto-get-started


# Init Powershell gui
Add-Type -AssemblyName System.Windows.Forms

# Create a new form
$FormObject = New-Object System.Windows.Forms.Form


# Define the size, title and background color
$FormObject.ClientSize = '500,300'
$FormObject.Text = "Learning Powershell GUI - Stage 1"
$FormObject.BackColor = "#FFFFFF"

#Display the form
[void] $FormObject.ShowDialog();