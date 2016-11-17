import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
GPIO.setup(2, GPIO.IN) #built in pullup
GPIO.setup(3, GPIO.IN) #built in pullup
GPIO.setup(4, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.setup(5, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.setup(6, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.setup(7, GPIO.IN, pull_up_down = GPIO.PUD_UP)

output = 100 + (1-GPIO.input(2))+2*(1-GPIO.input(3))+4*(1-GPIO.input(4))+8*(1-GPIO.input(5))+16*(1-GPIO.input(6))+32*(1-GPIO.input(7))
if output == 100:
	output = 0
print(output)

GPIO.cleanup()

