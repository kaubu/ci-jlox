build:
    mvn package

# Need to change the version each time, maybe just don't increment it
run:
    java -cp ./target/ci-jlox-0.1.0.jar io.github.kaubu.App