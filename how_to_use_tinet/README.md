# simple BGP example on tinet
build topology
```
tinet reconf -c spec.yaml | sudo sh -x
```

destroy topology
```
tinet down -c spec.yaml | sudo sh -x
```