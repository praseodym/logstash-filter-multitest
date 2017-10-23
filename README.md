# Logstash 5.6.3 `multi_filter` regression

Logstash 5.6.3 has a regression where `multi_filter` is called with an empty `events` array. This simple filter logs all `filter` and `multi_filter` invocations to debug this issue.

Instructions: install this plugin and run Logstash with the `pipeline.conf` from this repository.

Output:
* [Logstash 5.6.2](https://github.com/praseodym/logstash-filter-multitest/blob/master/logstash-5.6.2.log)
* [Logstash 5.6.3](https://github.com/praseodym/logstash-filter-multitest/blob/master/logstash-5.6.3.log)
