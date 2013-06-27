BioWordCount
------------

This is an adaptation of the classic [WordCount](https://hadoop.apache.org/docs/stable/mapred_tutorial.html) hadoop demo.

Instead of counting the words of a text, we will count the types of point mutations listed in a VCF file. In order to run this demo, you must have at least a minimal single node hadoop cluster set up. 

Compile and Run
===============

    mvn package

The jar is target/BioWordCount.jar


    hadoop jar /path/to/biowordcountrepo/target/BioWordCount.jar io.openb.biowordcount.BioWordCount /path/to/hdfs/user/dir/test.vcf /path/to/hdfs/user/dir/answer


