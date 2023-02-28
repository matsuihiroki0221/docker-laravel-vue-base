FROM node:lts-slim AS base

WORKDIR /app
RUN apt update

COPY ./front .

COPY .docker/front/entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


# 開発用環境
FROM base AS dev

CMD ["/bin/ash"]

# 本番環境用
FROM nginx:stable-alpine as prod

COPY --from=base /app/dist /usr/share/nginx/html

EXPOSE 5173

CMD ["nginx", "-g", "daemon off;"]