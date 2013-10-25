MQTTExample
===========

iOS example application using [MQTTKit](https://github.com/jmesnil/MQTTKit).

# Usage

Run ```pod install``` to insall the dependencies (including MQTTKit)
and open `MQTTExample.xcworkpace` to build and run the example.

The app will connect to the MQTT broker hosted at `m2m.eclipse.org` and publish messages on the `/MQTTExample/LED` topic.

The retained message for this topic can be seen at http://eclipse.mqttbridge.com/%2FMQTTExample%2FLED
