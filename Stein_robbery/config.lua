Config = {} -- Lav ikke alter
Config.Debug = false
Config.YouFoundTheBestScripts = false

-- Vælg dit target system
-- Valgene der er at vælge: 'ox_target', 'qb-target', 'qtarget' & 'custom'
-- custom' Nød til at blive added til client/functions.lua
Config.Target = 'ox_target'

-- Notification system er: 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify' & 'custom'
-- 'custom'Nød til at blive added til client/functions.lua
Config.Notify = 'ox_lib'

-- Vælg din præference for ox_lib progress UI
-- Optionsne er 'circle' eller 'bar'
Config.ProgressType = 'circle'

-- Vil du have besked via serverkonsollen, hvis en opdatering er tilgængelig?
Config.VersionCheck = true

-- Config.Metadata er kun for QBCore-brugere
-- Hvis det er sandt, vil ressourcen belønne metadataværdier for 'markedssedler' eller lignende vare
-- Hvis falsk, belønner ressourcen varen uden metadata og kun 1-til-1
Config.Metadata = true

-- Manage all the police options here
Config.Police = {
-- Vil du kræve, at politiet er online for at kunne røve butikker?
-- Then set require =true! Hvis det er falsk, kræves politiet ikke
    require = false,
-- Hvis kræve = sandt, hvor mange skal så være online for at røve butikkerne?
    count = 3,
    -- Add dit politi job(s) under
    jobs = { 'police', 'sheriff' },
-- Indstil dit afsendelsessystem
 -- Tilgængelige muligheder: 'cd_dispatch', 'linden_outlawalert', 'ps-dispatch', 'qs-dispatch' and 'custom'
    dispatch = 'custom',
-- Risiko er en funktion, du kan aktivere, som vil øge antallet af spillere
 -- Belønningsudbetaling baseret på antallet af politi online under røveriet!
 -- Vil du aktivere risikofunktionen?
    risk = false,
-- Hvis risiko = sand, er procent, hvor meget belønningsudbetalingen stiger
 -- I procent for HVER betjent online. Hvis procent = 10 og der er
 -- 3 politi online, belønningsudbetalingen vil stige med 30 %
    percent = 10
}

Config.Registers = {
-- Indstil det påkrævede elementnavn nedenfor, der er nødvendigt for at røve et kasseapparat
    item = 'lockpick',
-- Når et register er blevet røvet, starter en nedkøling for at undgå kæderøveri.
 -- Indstil minimum og maksimum nedkølingstider nedenfor - dette er i minutter
 -- Standard nedkøling er 10-20 minutter
    cooldown = { min = 10, max = 20 },
-- Indstil sværhedsgraderne for færdighedstjekket nedenfor
 -- Du kan indstille 'let', 'medium' eller 'hårdt' i en hvilken som helst rækkefølge
 -- Og i enhver mængde/mængde - Lær mere om færdighedstjekket
    -- Her: https://overextended.dev/ox_lib/Modules/Interface/Client/skillcheck
    difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy','easy', },
-- 'Input'erne er de nøgler, der vil blive brugt til færdighedstjekket
-- Minispil og kan indstilles til enhver tast eller nøgler efter eget valg
    inputs = { 'W', 'A', 'S', 'D' },
-- Efter et vellykket registerrøveri, hvilken genstand vil du belønne
 -- Og hvor meget af det? Indstil varen = 'navn' nedenfor og min/maks. mængder
    reward = { item = 'black_money', min = 1000, max = 1000 },
-- Hvis en spiller ikke lykkes med at låse registret
 -- Der er en chance for, at deres lockpick går i stykker. I procent,
 -- Hvilken chance vil du have, at deres lockpick går i stykker? For aldrig at bryde, sæt 0
 -- Indstil 100 for at bryde hver gang
    breakChange = 50,
-- Efter at en spiller med succes har røvet et register, er der denne "noteChance" de
 -- "Find" pengeskabets PIN-kode "under registret" og kan springe over hacking af computeren
 -- Trin hvis fundet. I procent, hvilken chance har de for at finde denne seddel?
    noteChance = 10
}

Config.Computers = {
-- Når en spiller forsøger at hacke computeren, hvor mange
 -- Vil du tillade forsøg? Som standard efter 3 mislykkede forsøg
 -- Røveriet vil ende og fortsætter ikke længere
    maxAttempts = 3,
-- Vil du aktivere spørgeskemahacket? Hvis det er sandt, vil dette erstatte
 -- Skillcheck hacket med en række spørgsmål, som spilleren skal svare korrekt på
    questionnaire = false,
-- Indstil sværhedsgraderne for færdighedstjekket nedenfor (bruges kun hvis spørgeskema = falsk)
 -- Du kan indstille 'let', 'medium' eller 'hårdt' i en hvilken som helst rækkefølge
 -- Og i enhver mængde/mængde - Lær mere om færdighedstjekket
    -- Here: https://overextended.dev/ox_lib/Modules/Interface/Client/skillcheck
    difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy','easy', },
-- 'Input'erne er de nøgler, der vil blive brugt til færdighedstjekket
-- Minispil og kan indstilles til enhver tast eller nøgler efter eget valg
-- (bruges kun hvis spørgeskema = falsk)
    inputs = { 'W', 'A', 'S', 'D' },
}

Config.Safes = {
-- Når et pengeskab er blevet røvet, starter en nedkøling for at undgå kæderøveri.
 -- Indstil minimum og maksimum nedkølingstider nedenfor - dette er i minutter
 -- Standard nedkøling er 10-20 minutter
    cooldown = { min = 10, max = 20 },
-- Når en spiller forsøger at hacke pengeskabet (indtastning af PIN-koden), hvordan
 -- Mange forsøg vil du tillade? Som standard efter 3 mislykkede forsøg
 -- Røveriet vil ende og ikke fortsætte (de vil ikke blive belønnet)
    maxAttempts = 3,
-- Efter et vellykket røveri, hvilken genstand vil du belønne
 -- Og hvor meget af det? Indstil varen = 'navn' nedenfor og min/maks. mængder
    reward = { item = 'black_money', min = 2000, max = 7000 },
}

-- Opret, rediger og administrer alle spørgeskemarelaterede muligheder her, hvis det er aktiveret
-- Du kan oprette så mange spørgsmål og svar, som du ønsker
Config.Questionnaire = {
    questions = {
        [1] = {
            type = 'input',
            label = 'Question #1',
            description = 'What is a PSU?',
            icon = 'fas fa-bolt',
            required = true
        },
        [2] = {
            type = 'input',
            label = 'Question #2',
            description = 'What does "HTTPS" stand for?',
            icon = 'fas fa-lock',
            required = true
        },
        [3] = {
            type = 'input',
            label = 'Question #3',
            description = 'What is a GPU?',
            icon = 'fas fa-desktop',
            required = true
        },
        [4] = {
            type = 'select',
            label = 'Question #4',
            description = 'What does CTRL + A do?',
            icon = 'fas fa-keyboard',
            required = true,
            options = {
                { value = 1, label = 'Copy text' },
                { value = 2, label = 'Paste text' },
                { value = 3, label = 'Select all' },
                { value = 4, label = 'Print page' },
            }
        },
        -- Tilføj flere spørgsmål her i samme format som ovenfor
 -- Sørg for at øge tallene korrekt, [5], [6] osv
    },
-- Alle svarene på ovenstående spørgsmål skal placeres her
 -- Sæt svarene i samme rækkefølge som spørgsmålene ovenfor
 -- Svaret på spørgsmål [3] ovenfor bør også være [3] her
 -- Bemærk: svar til type = 'vælg' skal være værdinummeret
    answers = {
        [1] = 'power supply unit',
        [2] = 'hypertext transfer protocol secure',
        [3] = 'graphics processing unit',
        [4] = 3
    }
}

-- Syr alle animationer her!
Config.Animations = {
    lockpick = {
        animDict = 'missheistfbisetup1',
        animClip = 'hassle_intro_loop_f'
    },
    register = {
        label = 'Tager pengene..',
        duration = 30000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true, combat = true },
        anim = { dict = 'anim@heists@ornate_bank@grab_cash', clip = 'grab' },
        prop = { model = 'p_ld_heist_bag_s', bone = 40269, pos = vec3(0.0454, 0.2131, -0.1887), rot = vec3(66.4762, 7.2424, -71.9051) }
    },
    hackPC = {
        animDict = 'anim@heists@prison_heiststation@cop_reactions',
        animClip = 'cop_b_idle'
    },
    safe = {
        label = 'Tager sikkrt..',
        duration = 30000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disable = { car = true, move = true, combat = true },
        anim = { dict = 'anim@heists@ornate_bank@grab_cash', clip = 'grab' },
        prop = { model = 'p_ld_heist_bag_s', bone = 40269, pos = vec3(0.0454, 0.2131, -0.1887), rot = vec3(66.4762, 7.2424, -71.9051) }
    }
}

-- Store configs
Config.Locations = {
    Registers = {
        vec3(24.9456, -1344.9544, 29.6116), -- Innocence Blvd
        vec3(-3041.3566, 584.2665, 8.0235), -- Inseno Road
        vec3(-3244.5734, 1000.6577, 12.9453), -- Barbareno Road
        vec3(1729.3294, 6417.1230, 35.1519), -- Great Ocean Highway
        vec3(1698.3787, 4923.2553, 42.2410), -- Grape Seed Main Street
        vec3(1959.3229, 3742.2895, 32.4584), -- Alhambra Drive
        vec3(548.9014, 2668.9414, 42.2711), -- Route 68
        vec3(2676.2124, 3280.9694, 55.3558), -- Senora Freeway
        vec3(2554.875, 381.3857, 108.7376), -- Palomino Freeway
        vec3(373.5953, 328.5891, 103.6810), -- Clinton Avenue
        vec3(-1820.5584, 793.9172, 138.2765), -- North Rockford Drive
        vec3(-47.2251, -1757.5423, 29.5983), -- Grove Street
        vec3(-706.7102, -913.5667, 19.3929), -- Ginger Street
        vec3(1164.1452, -322.7899, 69.3824) -- Mirror Park Blvd
    },
    Computers = {
        vec3(29.5590, -1338.3704, 29.3723), -- Innocence Blvd
        vec3(-3049.0339, 586.6518, 7.7842), -- Inseno Road
        vec3(-3250.736, 1005.8194, 12.7060), -- Barbareno Road
        vec3(1736.3864, 6420.9741, 34.9125), -- Great Ocean Highway
        vec3(1707.3872, 4921.6953, 42.0722), -- Grape Seed Main Street
        vec3(1960.0263, 3750.2978, 32.2190), -- Alhambra Drive
        vec3(545.1868, 2661.8115, 42.0318), -- Route 68
        vec3(2672.7070, 3288.2045, 55.1164), -- Senora Freeway
        vec3(2548.4802, 386.2579, 108.4982), -- Palomino Freeway
        vec3(379.6751, 333.8492, 103.4417), -- Clinton Avenue
        vec3(-1828.9333, 797.3793, 138.2624), -- North Rockford Drive
        vec3(-44.7806, -1748.8189, 29.4642), -- Grove Street
        vec3(-710.4782, -905.2836, 19.2711), -- Ginger Street
        vec3(1158.9605, -315.2624, 69.2748) -- Mirror Park Blvd
    },
    Safes = {
        vec3(28.1588, -1338.7192, 28.8068), -- Innocence Blvd
        vec3(-3048.2958, 585.4102, 7.2009), -- Inseno Road
        vec3(-3250.5161, 1004.4418, 12.1558), -- Barbareno Road
        vec3(1734.9835, 6421.3173, 34.3080), -- Great Ocean Highway
        vec3(1708.1695, 4920.8208, 41.3514), -- Grape Seed Main Street
        vec3(1959.0202, 3749.3291, 31.6847), -- Alhambra Drive
        vec3(546.5106, 2662.3266, 41.5089), -- Route 68
        vec3(2672.3398, 3286.8269, 54.6214), -- Senora Freeway
        vec3(2548.7395, 384.8841, 107.9211), -- Palomino Freeway
        vec3(378.2658, 333.8557, 102.9076), -- Clinton Avenue
        vec3(-1829.5384, 798.4634, 137.5601), -- North Rockford Drive
        vec3(-43.8009, -1748.0804, 28.7776), -- Grove Street
        vec3(-710.1920, -904.1401, 18.5740), -- Ginger Street
        vec3(1159.0540, -314.1202, 68.5665) -- Mirror Park Blvd
    }
}