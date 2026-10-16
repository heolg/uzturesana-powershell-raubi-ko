# Skaidrojums 3 uzdevuma

Iegūtā summa sakrīt ar kopējo servisu skaitu. 
Tas ir tāpēc, ka Windows operētājsistēmā servisiem praktiski vienmēr ir tikai divi galvenie stāvokļi: tie vai nu darbojas (`Running`), vai ir apturēti (`Stopped`). Pārejas stāvokļi ir īslaicīgi un skaitīšanas brīdī netiek fiksēti.

# Sistēmas žurnāla kļūdu analīze 5 uzdevuma

## Secinājumi par datora darbību
Apskatot pēdējo 48 stundu sistēmas žurnālu, tika fiksēts noteikts kļūdu skaits. Tas, ka Windows vidē parādās kļūdas (pat vairāki desmiti vai simti), ir pilnīgi **normāla parādība**, un tas nenozīmē, ka dators ir bojāts. 

Biežākie secinājumi atkarībā no rezultāta:
1. **Ja kļūdu skaits ir neliels (līdz 50-100):** Operētājsistēma darbojas stabili. Lielākā daļa kļūdu parasti ir saistītas ar fonā esošiem servisiem, tīkla pārrāvumiem īslaicīga miega režīma laikā vai sinhronizācijas aizturēm (bieži avoti: `DistributedCOM` vai `Service Control Manager`).
2. **Ja kļūdu skaits ir ļoti liels (vairāki simti):** Tas var norādīt, ka kāda konkrēta programma, draiveris vai fona pakalpojums ir iesprūdis "ciklam līdzīgā" stāvoklī (loop) un nepārtraukti mēģina restartēties vai piekļūt resursam, kas nav pieejams.

Visbiežākais fiksētais avots parāda, kura sistēmas komponente šajās dienās ir bijusi visaktīvākā problēmu ziņojumu ģenerēšanā. Tas palīdz uzreiz saprast, kurā virzienā skatīties, ja datoram parādītos reālas darbības problēmas.

# Skaidrojums 6 uzdevuma 

Sarakstā izvēlētais draiveris NVIDIA GeForce RTX 5060 Ti pieder NVIDIA videokartei. Tā ir grafiskā karte, kas apstrādā attēlus, video un grafiku datorspēlēm un citām programmām.
