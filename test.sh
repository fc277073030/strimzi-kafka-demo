# kafka-producer
kubectl -n kafka run kafka-producer -ti --image=quay.io/strimzi/kafka:0.27.1-kafka-3.0.0 --rm=true --restart=Never -- bin/kafka-console-producer.sh --broker-list my-cluster-kafka-bootstrap:9092 --topic my-topic

# kafka-consumer
kubectl -n kafka run kafka-consumer -ti --image=quay.io/strimzi/kafka:0.27.1-kafka-3.0.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server my-cluster-kafka-bootstrap:9092 --topic my-topic --from-beginning

# list topics
bin/kafka-topics.sh --bootstrap-server  my-cluster-kafka-bootstrap:9092 --list

# topics details
bin/kafka-topics.sh --bootstrap-server  my-cluster-kafka-bootstrap:9092 --describe --topic my-topic
