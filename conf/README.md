Deze directory mappen met configuratie voor diverse dingen. 

Let op dat we een volledige back-up van de map nemen omdat er vaak meerdere configuratiebestanden zijn.

Het besturingssysteem is: Raspberry OS bussleye 32 bit met desktopomgeving.

Dit omdat de meest recente varsie van zabbix voor bullseye is.

Om in te loggen op de desktopomgeving is RealVNC Viewer gebruikt.

Het IP adress van de vorige Dojo was 10.3.6.158.

Dit moet je op de volgende plaatsen instellen om dit te laten werken.

In /etc/zabbix_agent2.conf (Server, ListenIP en ServerActive)

In /etc/mosquitto.conf (listener (poort niet veranderen, maar wel IP-adress))

In de web interface van zabbix (de items CO2, Tempreature en Humidity)

En op het configuratie portaal van de CO2 sensor (mqtt broker).

SSH connectie via putty: jarne@raspberrypi.local