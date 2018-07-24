mvn -f `dirname $0`/pom.xml clean package 
cp `dirname $0`/target/uppercase-0.0.1-SNAPSHOT.jar `dirname $0`
