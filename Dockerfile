FROM elasticsearch:6.8.9

# 安装ik分词插件
RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.8.9/elasticsearch-analysis-ik-6.8.9.zip

# 安装拼音插件
RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v6.8.9/elasticsearch-analysis-pinyin-6.8.9.zip

