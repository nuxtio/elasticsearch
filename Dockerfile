FROM elasticsearch:6.8.9

# 安装ik分词插件
RUN wget -c --tries=0 -O /tmp/elasticsearch-analysis-ik.zip https://brayun.oss-cn-shanghai.aliyuncs.com/elasticsearch-analysis-ik-6.8.9.zip && \
    unzip /tmp/elasticsearch-analysis-ik.zip -d /usr/share/elasticsearch/plugins/analysis-ik && \
    rm -rf /tmp/elasticsearch-analysis-ik.zip

# 安装拼音插件
RUN wget -O /tmp/elasticsearch-analysis-pinyin.zip https://brayun.oss-cn-shanghai.aliyuncs.com/elasticsearch-analysis-pinyin-6.8.9.zip && \
    unzip /tmp/elasticsearch-analysis-pinyin.zip -d /usr/share/elasticsearch/plugins/analysis-pinyin && \
    rm -rf /tmp/elasticsearch-analysis-pinyin.zip

