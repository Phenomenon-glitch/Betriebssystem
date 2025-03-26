# Labor Betriebssysteme WS 2024/25
Labor des Fach Betriebssystem an der Hochschule Esslingen

## Modul: Labor Betriebssysteme
**Wintersemester 2024/25**  
**Professoren: Prof. Dr. Jörg Friedrich, Prof. Grewe, Prof. Keller**  

---

## Struktur der Abgaben
Alle Abgaben erfolgen in einem definierten Ordnersystem. Jede Laboraufgabe wird in einem eigenen Unterordner abgelegt.

### Beispielhafte Struktur:


---

## Labor 1: Shellskripte
### Ziel
In diesem Labor wird ein Bash-Skript entwickelt, das offene TCP/IPv4-Ports auf einem Linux-System analysiert und verschiedene Informationen ausgibt.

### Aufgabe
Schreiben Sie das Bash-Skript **listen_ports.sh**, welches offene Ports und zugehörige Prozesse anzeigt.

**Funktionen des Skripts:**
- `-c` oder `--command`: Gibt den zugehörigen Prozessnamen aus.
- `-u` oder `--user`: Gibt die User-ID des Prozesses aus.
- `-h` oder `--help`: Zeigt eine Hilfemeldung an.
- Falls keine Option angegeben wird, ist die Standardausgabe `--command`.
- Das Skript soll immer nur einen Parameter akzeptieren, nicht mehrere gleichzeitig.

### Beispielhafte Ausgabe
#### **Befehl:**
```bash
./listen_ports.sh --command
