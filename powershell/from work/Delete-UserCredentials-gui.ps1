


using namespace System.Windows.Forms
using namespace System.Drawing


# External assemblies
Add-type -AssemblyName System.Windows.Forms
Add-type -AssemblyName System.Drawing

$Main = New-Object Form

$credsList = New-Object ListBox
$btnRemove = New-Object Button

# List of credential records

function CredMan {
    
    $credsList.Select()
    $credsList.Items.Clear()

    [string[]]$keys = cmdkey /list | Select-string -Pattern "Target:" # https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/cmdkey

    $keylist = $keys.ForEach{ $_.TrimStart("Target: ") } | Sort-Object
    $keylist.ForEach{ $credsList.Items.Add("$_")} | Out-Null



}


$credsList.BackColor = 'MidnightBlue'
$credsList.BorderStyle = 'FixedSingle'
$credsList.Dock = 'Fill'
$credsList.ForeColor = 'White'
$credsList.FormattingEnabled = $true
$credsList.HorizontalScrollbar = $true
$credsList.Location = New-Object Point(0, 0)
$credsList.Name = "credsList"
$credsList.SelectionMode = [SelectionMode]::MultiExtended
$credsList.Size = New-Object Size(434, 205)
$credsList.TabIndex = 0

CredMan


$btnRemove.AutoSizeMode = [AutoSizeMode]::GrowAndShrink
$btnRemove.Dock = [DockStyle]::Bottom
$btnRemove.FlatStyle = [FlatStyle]::Popup
$btnRemove.Font = New-Object Font("Microsoft Sans Serif", 8.25, [FontStyle]::Bold, [GraphicsUnit]::Point, 0)
$btnRemove.ForeColor = [Color]::Transparent
$btnRemove.Location = New-Object Point(0,283)
$btnRemove.Name = "btnRemove"
$btnRemove.Size = New-Object Size(434, 28)
$btnRemove.TabIndex = 1
$btnRemove.Text = "Remove"
$btnRemove.UseVisualStyleBackColor = $true
$btnRemove.add_click({ ($credsList.SelectedItems).ForEach{ cmdkey /delete:"$_"}; CredMan })


#Main

$Main.BackColor = [Color]::MidnightBlue
$Main.ClientSize = New-Object Size(384, 225)
$Main.Controls.Add($btnRemove)
$Main.Controls.Add($credsList)
$Main.ForeColor = [Color]::White
$Main.ShowIcon = $true
$Main.Name = "Main"$Main.Text = "cookita :>"$Main.KeyPreview = $true$Main.add_KeyDown( { if($_.KeyCode -eq "Escape"){ $Main.Close(); $Main.Dispose() } })$Main.add_KeyDown( { if($_.KeyCode -eq "F5"){ CredMan } })$Main.add_KeyDown( { if($_.KeyCode -eq "Delete"){ ($credsList.SelectedItems).ForEach{cmdkey /delete:"$_" }; CredMan} })$Main.TopMost = $true$Main.ShowDialog()