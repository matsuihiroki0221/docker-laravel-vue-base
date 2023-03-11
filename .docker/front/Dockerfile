FROM node:lts-bullseye-slim AS base

WORKDIR /app

COPY ./front .

RUN apt-get update\
    && npm install

# 開発用環境
FROM base AS dev

CMD ["/bin/bash"]

# 本番環境用
# FROM nginx:stable-alpine as prod

# COPY --from=base /app/dist /usr/share/nginx/html

# EXPOSE 5173

# CMD ["nginx", "-g", "daemon off;"]