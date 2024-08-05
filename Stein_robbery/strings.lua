Strings = {}

Strings.Notify = {
    registerCooldown = 'Butikker kan ikke blive røvet så ofte - vent venligst og prøv igen senere',
    notEnoughPolice = 'Der er ikke nok politi til rådighed i byen til at gøre dette',
    missingItem = 'Du mangler et påkrævet værktøj til at røve dette register',
    lockpickBroke = 'Du brød låsen og kunne ikke åbne registret',
    robberyCancel = 'Du holder op med at røve registret',
    failedHack = 'Du mislykkedes med at hacke dig ind på computeren',
    wrongPin = 'Du indtaster den forkerte pin og pengeskabet forbliver låst',
    errorOccured = 'Noget gik galt - prøv venligst igen',
    tooManyHackFails = 'Du\' har undladt at hacke computeren for mange gange og undladt at røve butikken',
    tooManySafeFails = 'Du\'har indtastet den forkerte pinkode for mange gange og mislykkedes med at røve pengeskabet'
}

Strings.Target = {
    registers = {
        label = 'Røv registeret',
        icon = 'fas fa-lock'
    },
    computers = {
        label = 'Login',
        icon = 'fas fa-computer'
    },
    safes = {
        label = 'Lås op',
        icon = 'fas fa-key'
    }
}

Strings.AlertDialog = {
    noteFound = {
        header = '**Note Fundet**',
        content = 'Du fandt en interessant seddel under registret med intet andet end følgende tal skrevet på: ',
        labels = { cancel = 'Ingen giver fuck?', confirm = 'Forstået!' }
    },
    hacked = {
        header = '**Kode Udsat**',
        content = 'Du hackede computeren med succes og fandt følgende kode: ',
        labels = { cancel = 'Cancel', confirm = 'forstået!' }
    }
}

Strings.InputDialog = {
    questionsHeader = 'Security Spørgsmål',
    safeHeader = 'Butik Sikker',
    safe = {
        type = 'input', -- Do not edit
        label = 'Indsæt PIN koden',
        description = 'Indsæt PIN koden til at åbne låsen til boksen',
        placeholder = '6969',
        icon = 'fas fa-lock',
        required = true -- Do not edit
    }
}

Strings.Logs = {
    colors = {
        green = 65280,
        red = 16711680,
        yellow = 16776960,
    },
    labels = {
        name = '**Player Name**: ',
        id = '\n **Player ID**: ',
        identifier = '\n **Identifier**: ',
        message = '\n **Message**: '
    },
    titles = {
        robbery = 'Robbery',
        cooldownA = '🔒 Cooldown Active',
        cooldownI = '🔓 Cooldown Inactive'
    },
    messages = {
        minutes = 'minutes',
        robbery = 'Har med succes gennemført et røveri og har modtaget: ',
        cooldownRA = 'Registerafkølingen er nu aktiv for ',
        cooldownRI = 'Registerafkølingen er nu inaktiv',
        cooldownSA = 'Den sikre nedkøling er nu aktiv for ',
        cooldownSI = 'Den sikre nedkøling er nu inaktiv'
    }
}