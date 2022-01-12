---
title: risc og cisc
updated: 2019-05-20 20:47:05Z
created: 2019-05-16 17:04:20Z
author: trym.grande@gmail.com
---

- cisc
    - dominerte da x86 kom pga. fleksibilitet
    - avanserte instruksjoner
    - fleksible funksjonskall
    - kompliserte instruksjonsformat
    - viktige trekk:
    - avanserte instruksjoner
        - fordel: effektiv programmering
        - ulempe:
            - instruksjoner kan kreve få eller mange mikro-ops. vanskelig å lage effektiv pipeline
            - enkle instruksjoner går også sakte. vanskelig å bruke hardlogikk
    - fleksible funksjonskall
        - fordel
            - få begrensninger på programmereren (antall parametre og lokale variabler)
        - ulempe
            - hvert funksjonskall krever minnetrafikk fordi parametere og lokale variabler ligger i minnet
    - fleksibelt instruksjonsformat
        - fordel
            - mye brukte instruksjoner kan være korte - som gir lite minnetrafikk
        - ulempe
            - komplisert og tidkrevende å tolke instruksjonen
            - mye vertikal koding. feltene er avhengig av hverandre og kan ikke tolkes i parallell
- risc
    - kom på slutten av 80-tallet
    - kjennetegn:
        - bruk bare enkle instruksjoner
            - enkle instruksjoner kan implementeres i hardlogikk
            - hardlogikk er raskere
            - begrenset hvor avanserte instruksjoner som kan implementeres, men moores law gjør at man får implementert mer avanserte instruksjoner
        - optimaliser funksjonskall
            - implementer funksjonskall på en slik måte at de ikke krever minnetrafikk
                - lagre mer i register
                - eller bruk flere register
        - bruk bare enkle instruksjonsformat
            - bruk format med horisontal koding slik at feltene kan tolkes i parallell
            - la alle instruksjoner være like lange og bruk bare et lite antall ulike formater. dette gjør tolkingen enkel og hurtig
- enkle instruksjoner dominerer (9%) selv på cisc
- risc vs cisc
    - cisc
        - ulempe: komplekse instruksjoner benyttes sjeldent
        - fordel: komplekse instruksjoner kan gi mer effektiv og feilfri programmering
    - risc
        - ulempe: trenger mange instruksjoner for å løse en oppgave. fordel kun dersom instruksjonene går fort nok
        - fordel: dersom fleste instruksjoner tar like lang tid, kan man lage effektive pipelines
    - ved funksjonskall:
        - cisc kan ha mange lokale variabler og parametre, men må gå til minnet/cache
        - risc går hurtig ved at parametre og lokale variabler legges i registre
    - instruksjonsformat
        - cisc:
            - variable instruksjonslengder: 1-16B
            - komplisert å tolke
            - ulike formater
        - risc:
            - har lik instruksjonslengde: 4/8B
            - overføres hele ord
            - tar like lang tid som gir effektive pipelines