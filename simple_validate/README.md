# how to change ROA
There is one script that registers an ROA that says 192.168.2.0/24 with AS number 65002 and another with 65003.
Which one is to be registered with the KRILL certification authority is determined by the contents of spec.yaml.
<br>
This can be changed by simply commenting out and uncommenting.
(https://github.com/yushoyamaguchi/rpki_testbed/blob/main/simple_validate/spec.yaml#L55)