# docker-pokenum

build it and run it like this: 

`docker run -it 99393442b0c4 php -r ' dl("pokenum.so"); print_r(pokenum(PN_TEXAS, array("Ah Ac", "Kd Kc")));'`

```
Array
(
    [name] => Holdem Hi
    [players] => 2
    [iterations] => 100000
    [hands] => Array
        (
            [0] => Array
                (
                    [hand] => Array
                        (
                            [0] => Ac
                            [1] => Ah
                        )

                    [win] => 81742
                    [lose] => 17778
                    [tie] => 480
                    [ev] => 0.81982
                )

            [1] => Array
                (
                    [hand] => Array
                        (
                            [0] => Kc
                            [1] => Kd
                        )

                    [win] => 17778
                    [lose] => 81742
                    [tie] => 480
                    [ev] => 0.18018
                )

        )

)
```

