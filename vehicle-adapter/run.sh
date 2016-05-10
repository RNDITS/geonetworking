# Shell script for running the Vehicle Adapter application. See README.md for more details.
# -----------------------------------------------------------------------------------------

# Port to receive messages from Simulink on
portRcvFromSimulink=26003;

# Port to send CAM, DENM, iCLCM on. These can be sent on the same or on different ports.
portSendCam=26001;
portSendDenm=26001;
portSendIclcm=26001;
portSendRndm=26001;

# IP or hostname of the vehicle control system
simulinkAddress=127.0.0.1;

# Port to receive packets from the link layer on.
localPortForUdpLinkLayer=4000;

# Remote port and address of the link layer.
remoteAddressForUdpLinkLayer=127.0.0.1:4001;

# MAC address to be used by the Geonetworking stack. The command below will enter the MAC address of the wlan0 interface.
macAddress=34:de:1a:7c:79:96;

# Country code used by the stack. 46 is the country code of Sweden.
countryCode=46;

# Run the application.
java -jar target/vehicle-adapter-0.0.1-SNAPSHOT-jar-with-dependencies.jar --portRcvFromSimulink $portRcvFromSimulink --portSendCam $portSendCam --portSendDenm $portSendDenm --portSendIclcm $portSendIclcm --portSendRndm $portSendRndm --simulinkAddress $simulinkAddress --localPortForUdpLinkLayer $localPortForUdpLinkLayer --remoteAddressForUdpLinkLayer $remoteAddressForUdpLinkLayer  --macAddress $macAddress --countryCode $countryCode
