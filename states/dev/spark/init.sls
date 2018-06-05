dev-spark-toree-install-pip:
  pkg.installed:
    - pkgs:
      - scala

dev-spark-download-spark:
  file.managed:
    - name: /tmp/spark.tgz
    - source: {{ spark_url }}
    - source_hash: {{ spark_hash }}

dev-spark-extract-spark:
  archive.extracted:
    - name: /opt/
    - source: /tmp/spark.tgz
    - require:
      - file: dev-spark-download-spark

dev-spark-download-spark:
  file.absent:
    - name: /tmp/spark.tgz
    - require:
      - file: dev-spark-extrack-spark
