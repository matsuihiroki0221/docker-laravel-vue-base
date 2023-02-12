FROM node:lts-slim AS base

WORKDIR /app
RUN apt update \
    && yarn install

COPY ./front .

RUN npm run build

# 開発用環境
FROM base AS dev

# 本番環境用
FROM nginx:stable-alpine as base

COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 5173

CMD ["nginx", "-g", "daemon off;"]