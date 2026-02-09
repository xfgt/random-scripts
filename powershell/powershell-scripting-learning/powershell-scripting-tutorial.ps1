# Comment
# https://www.youtube.com/watch?v=ZOoCaWyifmI

# Pattern of cmdlets
# verb-noun


# Get information about restrictions for running custom scripts
#Get-ExecutionPolicy 

# enable / disable scripts
# To allow, run as admin!
#Set-ExecutionPolicy RemoteSigned 

# dont allow
#Set-ExecutionPolicy Restricted    

# Get version table for Powershell`
$PSVersionTable
$PSVersionTable.PSVersion

cd $env:USERPROFILE\Desktop


# new line
echo `n
 
write-host "Hello World!" -NoNewline
$variable = read-host -prompt "enter your input"
write-host $variable

# How do ya find commandlets?
#Get-Command -Commandtyper cmdlet

#Write to file


$variable | out-file outputstringstreampowershelllmaoxd.txt
write-host -ForegroundColor Yellow "file has been saved."

# =====================================================


# variables, objects and methods

$FavCharacter = "Spongebob"


# Instantiate variable object
$FavCharacter

$FavCharacter | Out-File favcharacter.txt
write-host -ForegroundColor Yellow "File has been saved."


# String
$FavCharacter.GetType()

# boolean
$FavCharacter = $true
# $FavCharacter.GetType()



$x = 4
$y = 3

# Instantiate the result of the multiplication
# of those two variable objects
$x * $y


$FavCharacter = Spongebob

# Everything in Powershell is an object.
# Think of the bike example


# Get all of the properties of an object

$FavCharacter | Select-Object -Property *


# Get all methods of an object
get-member -InputObject $FavCharacter



#==========================================


#Array


$Jedi = @('Obi-Wan Kenobi', 'Luke Skywalker', 'Yoda', 'Mace Windu', 'Chewbacca')
$Jedi

echo `n

$Jedi[0]
$Jedi[1]
$Jedi[2].Length
$Jedi[3]
$Jedi[4]

$Jedi.GetType();


# add to array

$Jedi += "Qui-Gon Jin"

$Jedi


echo `n




# Hash tables (key-value pairs)

$Fellowship = @{
    
        key1= "item1";
        key2= "item2"
}

$Fellowship
echo `n



$FellowshipHobbit = @{

    "Wizard" = "Gandalf";
    "Hobbit" = "Frodo";
    "Elf" = "Legoas";

}
$FellowshipHobbit
echo `n


$FellowshipHobbit.Add("Dwarf", "Gimli");
echo `n


$FellowshipHobbit
echo `n

$FellowshipHobbit.Set_Item("Elf","Bilbo")


$FellowshipHobbit
echo `n



$FellowshipHobbit["Dwarf"]
echo `n



$FellowshipHobbit.Remove("Dwarf")


$FellowshipHobbit
echo `n


$FellowshipHobbit.Add("Dwarf", "Gimli");


$FellowshipHobbit
echo `n

# -------------------------
# Conditional statements

$PokemonCaught = read-host "How many Pokémons u got? :D"
If($PokemonCaught -eq 908) {
    
    write-host "You are a Pokémon master! :D"
} Else {
    write-host -ForegroundColor DarkMagenta `
    "Go catch more Pokémons! :D"
}

$PokemonNum = 25


# 25 >= 1 && 25 <= 151 // between 1 and 151, including 1 and 151

If($PokemonNum -ge 1 -and $PokemonNum -le 151){
    write-host "Kanto"
} Elseif($PokemonNum -ge 152 -and $PokemonNum -le 251){
    write-host "Johto"
} Elseif($PokemonNum -ge 252 -and $PokemonNum -le 386){
    write-host "Hoenn"
} Else {
    write-host "Pi6ka"
}


$House = "Stark"

Switch($House){
    
    "Targaryen" { write-host "You are crazy!"; break; }
    "Lannister" { write-host "You always pay your debts!"; break; }
    "Stark" { write-host -foregroundcolor green "Nothing bad is going to happen to the wall, right?"; break; }
   
}


# FOR LOOPS BOIIIIIIIIIIIII

# add adds based on an array :)!!!!!!


$HaloPeeps = @('Master Chief', 'Cortana', 'Captain Keyes', 'Flood')

#counter, condition, incrementatation (familiar)
For($counter=0; $counter -le ($HaloPeeps.Length-1); $counter++){
    write-host -ForegroundColor Cyan "Holy smokes, it's " $HaloPeeps[$counter] "!"
}

echo `n

Foreach($peep in $HaloPeeps){
    
    write-host -ForegroundColor red  $peep "has arrived"
}

echo `n

# While loops

$Xmen = @('Wolverine', 'Cyclops', 'Storm', 'Professor X', 'Gambit', 'Dr. Jean Grey')
$counterW = 0

while($counterW -ne 6){

    write-host -foregroundcolor yellow $Xmen[$counterW]
    $counterW++
}


echo `n

#do-while loop

$counterW = 0
do {
    write-host -ForegroundColor Green $Xmen[$counterW] "is a mutant!"
    $counterW++;
} while($counterW -ne 6)


echo `n
# FUNCTIONNNNNNNNNNNNSSSSSSS


function Test-SpaceX {

    ping spacex.com
}

Test-SpaceX

echo `n

#https://youtu.be/ZOoCaWyifmI?t=4447
function Test-XSpaceX {
    [CmdletBinding()] #Turns into advanced function


    param( # custom paramter to our object Test-XSpaceX
        [Parameter(Mandatory)]
        [int32]$PingCount
    )

    Test-Connection spacex.com -Count $PingCount
    # test-connection returns an object
}

# before [cmdletbinding()]
# Test-XSpaceX -PingCount 10

#After [cmdletbinding()]
#it will promt for pingcount (mandatory)
Test-XSpaceX


echo `n



# ERROR HANDLINGGGGGGGGGGG





# Много съм доволен от последните 3 години, независимо че бяха много трудни
# и изпълнени с предизвикателства. Сега като гледам туториала, всичко си спомям и
# релирам до досегашните ми знания И ВСИЧКО ПРАВИ ЛОГИКАААААААА! <33333333




#Throw "It's a trap!"
#Write-eror -Message "It's a trap!" -ErrorAction stop

function Test-XSpaceXErrors {
    [CmdletBinding()] #Turns into advanced function


    param( # custom paramter to our object Test-XSpaceX
        [Parameter(Mandatory)]
        [int32]$PingCount
    )

    Test-Connection spacex.com -Count $PingCount
    # test-connection returns an object

    write-error -Message "It's a trap!" -ErrorAction Stop

}

try { 
    Test-XSpaceXErrors
} 
catch {

    write-output -ForegroundColor red "Launch problem occured" Write-Output $_

    # write-output $_
    # I think it means ExceptionObject.what();function Test-XSpaceX

}

#discovery
show-command 'command'


# creating a file

New-item -path $env:USERPROFILE\Desktop\new_item_file.txt -type "file" -value "I came, I saw, I counquered!"



#create a new folder!!!!!!!!!!!!!!



New-Item -path $env:USERPROFILE\Desktop -name POWERSHELLFOLDER_LOL -type Directory


copy-item $env:USERPROFILE\Desktop\new_item_file.txt -Destination $env:USERPROFILE\Desktop\POWERSHELLFOLDER_LOL\myDAMNCOPY.txt

move-item $env:USERPROFILE\Desktop\new_item_file.txt -Destination $env:USERPROFILE\Desktop\POWERSHELLFOLDER_LOL



remove-item 



#does a file exist
Test-Path $env:USERPROFILE\Desktop\new_item_file.txt

Rename-item -path ... -NewName JustTheNameNoPath.extention














# HOW TO WORK WITH ACTIVE DIRECTORYYYYYYYYYYYYY
import-module ActiveDirectory # where it is installed first


Get-ADUser user

$user = Get-ADUser exampleuser

#instantiate
$user 


$user.allOfTheDifferentProperties

