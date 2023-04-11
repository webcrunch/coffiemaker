// TODO: convert swedish to english
Feature: As an user i want to get a black cup coffee

    Scenario: Successfully oredered a black cup coffee
        Given There are coffee in the machine
        #And vattnet är påkopplat med mera ... .
        When The user klicks on the button for black coffee
        #And placerar en kopp i kopphåller
        Then The machine pour black coffee into the cup

    Scenario: Ingen kopp finns placerad i kopphållaren
        Given Där finns kaffe i maskinen
        #And vattnet är påkopplat med mera ... .
        #But det finns ingen kopp placerad
        When Användaren klickar på svart kaffe knappen
        #And placerar en kopp i kopphåller
        Then maskinen säger "placera din kopp"
        And pauses until the users places a cup

    Scenario: Det finns inget vatten i maskinen
        Given: vattnet är slut i maskinen
        Then: maskinen säger "fyll på vatten"

    Scenario: Det finns inget kaffe i maskinen
        Given kaffet är slut i maskinen
        Then maskinen säger "add more coffie"

Feature: Som användare vill jag beställa en svart kaffe med mjölk.

    Scenario: Lyckad beställning av kaffe med mjölk
        Given Där finns kaffe i maskinen
        And Där finns mjölk i maskinen
        When Användaren klickar på svart kaffe med mjölk
        Then maskinen häller upp svart kaffe med mjölk i koppen

    Scenario: Ingen kopp finns placerad i kopphållaren
        Given Där finns kaffe i maskinen
        #And vattnet är påkopplat med mera ... .
        #But det finns ingen kopp placerad
        When Användaren klickar på svart kaffe knappen
        #And placerar en kopp i kopphåller
        Then maskinen säger "placera din kopp"
        And pauses until the users places a cup

    Scenario: Det finns inget kaffe i maskinen
        Given kaffet är slut i maskinen
        Then maskinen säger "add more coffie"

    Scenario: Det finns inget vatten i maskinen
        Given: vattnet är slut i maskinen
        Then: maskinen säger "fyll på vatten"

    Scenario: Det finns ingen mjölk i maskinen
        Given Mjölket är slut i maskinen
        Then maskinen säger "add more milk"


Feature: Som användare vill jag beställa kaffe med mjölk och socker

    Scenario: Lyckad beställning av kaffe med mjölk och socker
        Given Användaren klickar på kaffe med mjölk och socker.
        Then maskin häller upp kaffe med mjölk och socker
        And addera socker i kaffet

    Scenario: Det finns inget kaffe i maskinen
        Given kaffet är slut i maskinen
        Then maskinen säger "fyll på kaffe"

    Scenario: Det finns ingen mjölk i maskinen
        Given Mjölket är slut i maskinen
        Then maskinen säger "fyll på mjölk"

    Scenario: Det finns inget vatten i maskinen
        Given: vattnet är slut i maskinen
        Then: maskinen säger "fyll på vatten"

# Scenario: Det finns inget socker i maskinen
#     Given sockret är slut i maskinen.
#     Then maskin säger "slut på socker fyll på"

Feature: Som användre vill jag beställa Caffe latte

    Scenario: lyckad beställning av Caffe latte
        Given: Användaren klickar på en Caffe latte
        Then maskinen häller upp en Caffe latte

    Scenario: Det finns ingen kaffe i maskinen
        Then maskinen säger "fyll på kaffe"

    Scenario: Det är dåligt tryck i maskinen
        Then maskinen säger "kolla på trycket för kaffet"

    Scenario: Ingen kopp finns placerad i kopphållaren
        Given Där finns kaffe i maskinen
        #And vattnet är påkopplat med mera ... .
        #But det finns ingen kopp placerad
        When Användaren klickar på svart kaffe knappen
        #And placerar en kopp i kopphåller
        Then maskinen säger "placera din kopp"
        And pauses until the users places a cup

Feature: Som användare vill jag beställa en Cappuccino
    Scenario: Lyckad beställning av cappuchino
        Then masinen häller upp en cappuchino

    Scenario: Det finns ingen kaffe i maskinen
        Then maskinen säger "fyll på kaffe"

    Scenario: Det är dåligt tryck i maskinen
        Then maskinen säger "kolla på trycket för kaffet"

    Scenario: Det finns ingen mjölk i maskinen
        Given Mjölket är slut i maskinen
        Then maskinen säger "fyll på mjölk"

    Scenario: Ingen kopp finns placerad i kopphållaren
        Given Där finns kaffe i maskinen
        #And vattnet är påkopplat med mera ... .
        #But det finns ingen kopp placerad
        When Användaren klickar på svart kaffe knappen
        #And placerar en kopp i kopphåller
        Then maskinen säger "placera din kopp"
        And pauses until the users places a cup


