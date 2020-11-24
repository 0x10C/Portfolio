[下载中文词向量](https://github.com/google-research/bert#pre-trained-models)
pip install bert-serving-client=1.8.9
pip install bert-serving-server=1.10.0

bert-serving-start -model_dir "下载词向量的绝对路径" -num_worker=4

另起一个terminal
进入rasa_chatbot_cn-master文件夹 [没有这里下载](https://github.com/GaoQ1/rasa_chatbot_cn/tree/master/dev)

make train
make run

http://localhost:5005/webhooks/rest/webhook post请求，请求参数例如：

{
    "sender": "0001",
    "message": "你好"
}
