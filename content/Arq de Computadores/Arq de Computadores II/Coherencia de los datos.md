# Coherencia de los datos

%%
Date:: [[2024-04-05]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Tipos de paralelismo]]
%%


La coherencia de los datos en los sistemas fuertemente y débilmente acoplados se gestiona de manera diferente debido a la forma en que se comparte la memoria entre los procesadores.

En los sistemas fuertemente acoplados, donde todos los procesadores acceden a una memoria central compartida, la coherencia de los datos se vuelve crucial. La coherencia de la memoria garantiza que todos los procesadores vean una visión consistente de los datos compartidos. Para lograr esto, se utilizan protocolos de coherencia de caché que controlan cómo se actualizan y comparten los datos entre las cachés de los procesadores para mantener la consistencia.

Por otro lado, en los sistemas débilmente acoplados, donde cada procesador tiene su propia memoria local, la coherencia de los datos se vuelve menos compleja. Dado que no comparten una memoria central, la coherencia de los datos se logra a través de la comunicación explícita entre los procesadores mediante el paso de mensajes. Cada procesador es responsable de mantener la coherencia de sus propios datos y de sincronizar la comunicación con otros procesadores según sea necesario.

En resumen, en los sistemas fuertemente acoplados, la coherencia de los datos se gestiona a través de protocolos de coherencia de caché para garantizar la consistencia de los datos compartidos entre los procesadores, mientras que en los sistemas débilmente acoplados, la coherencia de los datos se logra mediante la comunicación explícita entre los procesadores a través del paso de mensajes.
