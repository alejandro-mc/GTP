objs = distanceAlg1/*.java polyAlg/*.java
classes = $(objs:java=class)

all: build jar

build:
	javac $(objs)

jar:
	jar cfm rfd.jar manifest.txt $(classes)

clean:
	@rm -f $(classes)
	@rm -f rfd.jar
