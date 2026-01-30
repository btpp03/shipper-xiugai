FROM node:20-alpine3.20

WORKDIR /tmp

# 1. 这里的参数确保替换为你自己的
ENV UUID=50435f3a-ec1f-4e1a-867c-385128b447f6 \
    ARGO_DOMAIN=你的域名.com \
    ARGO_AUTH=你的Token内容
    

# 2. 将 npm i jssbx 改为 npm i node-sbx
RUN apk update && apk add --no-cache bash openssl curl &&\
    npm i node-sbx

# 3. 将启动命令也改为 node-sbx
CMD ["npx", "node-sbx"]
