# Setup

## Lid close

Uncomment `HandleLidSwitch=suspend` from `sudo vim /etc/systemd/logind.conf`
Restart the service `sudo systemctl restart systemd-logind.service`

## Custom Theme install

```bash
~/Hyprdots/Scripts/themepatcher.sh  'One-Dark' 'https://github.com/RAprogramm/hyprdots-theme/tree/One-Dark' 'mskelton.one-dark-theme~One Dark'

~/Hyprdots/Scripts/themepatcher.sh "Synth-Wave" "https://github.com/prasanthrangan/hyprdots-mod" "robbowen.synthwave-vscode~SynthWave '84"

~/Hyprdots/Scripts/themepatcher.sh "Nordic-Blue" "https://github.com/prasanthrangan/hyprdots-mod/tree/Nordic-Blue" "arcticicestudio.nord-visual-studio-code~Nord"
```
