all: Main.java Owner.java Pet.java Tiger.java Eagle.java Attribute.java Serialization.java
	javac Main.java Owner.java Pet.java Tiger.java Eagle.java Attribute.java Serialization.java

jar: all
	jar cfm Pet.jar manifest.txt *.class
	java -jar Pet.jar

run: all
	java Main

clean:
	rm *.class
