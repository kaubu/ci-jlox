default: build run

# Build the interpreter
build:
    mvn package

# Need to change the version each time, maybe just don't increment it
# TODO: Get Maven version each dynamically insert it
# Run the compiled Jar
run:
    java -cp ./target/jlox-0.2.0.jar io.github.kaubu.lox.Lox

# Build and run together
br: build run

# Test the package
test:
    mvn test

# [no-cd]
generate-ast:
    javac ./src/main/java/io/github/kaubu/tool/GenerateAst.java
    cd ./src/main/java/ && java io/github/kaubu/tool/GenerateAst io/github/kaubu/lox

# cd ./src/main/java/io/github/kaubu/ && java tool/GenerateAst lox
