# Build the interpreter
build:
    mvn package

# Need to change the version each time, maybe just don't increment it
# TODO: Get Maven version each dynamically insert it
# Run the compiled Jar
run:
    java -cp ./target/jlox-0.1.0.jar io.github.kaubu.lox.Lox

# Build and run together
br:
    just build run
