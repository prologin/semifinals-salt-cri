include:
  - dev.spark

dev-spark-toree-install-pip:
  pkg.installed:
    - pkgs:
      - python
      - python-pip

dev-spark-toree-install-jupyter-toree:
  cmd.run:
    - name: 'pip install -Iq jupyter https://dist.apache.org/repos/dist/dev/incubator/toree/0.2.0-incubating-rc5/toree-pip/toree-0.2.0.tar.gz'
    - require:
      - pkg: dev-spark-toree-install-pip

dev-spark-toree-jupyter-toree-install:
  cmd.run:
    - name: 'PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH jupyter toree install'
    - cwd: /usr/local/lib/
    - creates: /usr/local/share/jupyter/kernels/apache_toree_scala/__init__.py
    - env:
      - SPARK_HADOOP_VERSION: '2.6.0'
      - SPARK_HOME: '/usr/local/lib/spark-1.6.3-bin-hadoop2.6'
    - require:
      - cmd: dev-spark-toree-install-jupyter-toree
      - archive: dev-spark-extract-spark
