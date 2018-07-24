# Bootiful GCP Riff Function

A simple function for a powerful FaaS.

Function Invokers from classic Riff work just as before, but everything else has been rebuilt on top of https://github.com/knative/eventing. We're driving a lot of the features in KNative's eventing support, along with Google and other contributors including IBM, RedHat, and SAP.

Moving to kNative allowed us to delete our sidecar, and we were able to clean up the function invocation dramatically.The function sidecar, controller, http gateway, topic controller, etc., are all gone. Most of these have been replaced with corresponding features in knative/eventing.  

Hopes and Dreams:
- bus implementations for Kafka, Google Cloud Pub/Sub, In-Memory
- knative/eventing will support arbitrary cloud events sources. It'll support CNCF cloud events.
- you'll be able to chain/compose function invocations one with another
