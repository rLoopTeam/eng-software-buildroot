import time, threading, socket, os
import RPi.GPIO as GPIO

UDP_IP = "239.3.14.159"
UDP_PORT = 50051
PREAMBLE = "rPod!"
NODE = "New Node"

#Get the Pi's ID
GPIO.setmode(GPIO.BCM)
GPIO.setup(2, GPIO.IN) #built in pullup
GPIO.setup(3, GPIO.IN) #built in pullup
GPIO.setup(4, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.setup(5, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.setup(6, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.setup(7, GPIO.IN, pull_up_down = GPIO.PUD_UP)

PiID = (1-GPIO.input(2))+2*(1-GPIO.input(3))+4*(1-GPIO.input(4))+8*(1-GPIO.input(5))+16*(1-GPIO.input(6))+32*(1-GPIO.input(7))

if os.path.isfile('/mnt/data/config/nodename'):
	f = open('/mnt/data/config/nodename', 'r')
	NODE = f.readline()
	NODE = NODE.strip()

MESSAGE = PREAMBLE+chr(PiID)+NODE

print "UDP target IP:", UDP_IP
print "UDP target port:", UDP_PORT
print "message:", MESSAGE

def udpAnnounce():
	try:
		sock = socket.socket(socket.AF_INET, # Internet
			socket.SOCK_DGRAM) # UDP
		sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
		sock.sendto(MESSAGE, (UDP_IP, UDP_PORT))
	except:
		pass
	threading.Timer(2, udpAnnounce).start()

udpAnnounce()
