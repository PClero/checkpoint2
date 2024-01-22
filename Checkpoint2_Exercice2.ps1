Function ManageAccentsAndCapitalLetters {
    param ([String]$String)
    
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    $StringWithoutAccentAndCapitalLetters
}

Function Log {
    param([string]$FilePath,[string]$Content)

    # Vérifie si le fichier existe, sinon le crée
    If (-not (Test-Path -Path $FilePath)) {
        New-Item -ItemType File -Path $FilePath | Out-Null
    }

    # Construit la ligne de journal
    $Date = Get-Date -Format "dd/MM/yyyy-HH:mm:ss"
    $User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $logLine = "$Date;$User;$Content"

    # Ajoute la ligne de journal au fichier
    Add-Content -Path $FilePath -Value $logLine
}

Function Random-Password {
    param ($length = 10)
    $punc = 33..47 + 58..64 + 91..96 + 123..126
    $digits = 48..57
    $letters = 65..90 + 97..122
    $password = Get-Random -Count $length -Input ($punc + $digits + $letters) | ForEach-Object { [char]$_ }
    return -join $password
}

$Path = "C:\Scripts"
$CsvFile = "$Path\Users.csv"
$LogFile = "$Path\Log.log"
$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","societe","fonction","service","description","mail","mobile","scriptPath","telephoneNumber" -Encoding UTF8 | Select-Object -Skip 1

foreach ($User in $Users) {
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.Nom
    $Name = "$Prenom.$Nom"

    $Pass = Random-Password -length 10
    $Password = ConvertTo-SecureString $Pass -AsPlainText -Force
    $Description = "$($User.fonction) - $($User.description)"

    # Journal de l'activité du script
    Log -FilePath $LogFile -Content "Tentative de création de l'utilisateur $Name"

    If (-not(Get-LocalUser -Name $Name -ErrorAction SilentlyContinue)) {
        $UserInfo = @{
            Name                 = $Name
            FullName             = $Name
            Password             = $Password
            Description          = $Description
            AccountNeverExpires  = $true
            PasswordNeverExpires = $true  # Modifié pour que le mot de passe n'expire pas
        }

        New-LocalUser @UserInfo
        Add-LocalGroupMember -Group "Utilisateurs locaux" -Member $Name  # Modifié pour utiliser le bon nom du groupe
        Write-Host "L'utilisateur $Name a été créé avec le mot de passe : $Pass"

        # Log de la création de l'utilisateur
        Log -FilePath $LogFile -Content "Utilisateur $Name créé avec succès"
    } else {
        Write-Host "L'utilisateur $Name existe déjà."
        # Log si l'utilisateur existe déjà
        Log -FilePath $LogFile -Content "Échec de création - L'utilisateur $Name existe déjà."
    }
}
