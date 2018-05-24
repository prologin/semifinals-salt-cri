dev-toree-install-pip:
  pkg.installed:
    - pkgs:
      - scala
      - python
      - python-pip

dev-toree-download-spark:
  file.managed:
    - name: /tmp/spark-1.6.3-bin-hadoop2.6.tgz
    - source: http://d3kbcqa49mib13.cloudfront.net/spark-1.6.3-bin-hadoop2.6.tgz
    - source_hash: 389e79458ad1d8ad8044643d97304d09bf3ca31f804c386e560033c48123cd69

dev-toree-extract-spark:
  archive.extracted:
    - name: /usr/local/lib/
    - source: /tmp/spark-1.6.3-bin-hadoop2.6.tgz
    - require:
      - file: dev-toree-download-spark

dev-toree-install-jupyter-toree:
  cmd.run:
    - name: 'pip install -Iq jupyter https://dist.apache.org/repos/dist/dev/incubator/toree/0.2.0-incubating-rc5/toree-pip/toree-0.2.0.tar.gz'
    - require:
      - pkg: dev-toree-install-pip

dev-toree-jupyter-toree-install:
  cmd.run:
    - name: 'PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH jupyter toree install'
    - cwd: /usr/local/lib/
    - creates: /usr/local/share/jupyter/kernels/apache_toree_scala/__init__.py
    - env:
      - SPARK_HADOOP_VERSION: '2.6.0'
      - SPARK_HOME: '/usr/local/lib/spark-1.6.3-bin-hadoop2.6'
    - require:
      - cmd: dev-toree-install-jupyter-toree
      - archive: dev-toree-extract-spark
