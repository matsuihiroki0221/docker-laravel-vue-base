FROM node:lts-slim AS base

# 開発用環境
FROM base AS dev
# 開発用のentrypointと、実施コマンドを用意する・使用するフレームワークに準ずる
COPY entrypoint.dev.sh /
RUN chmod +x /entrypoint.dev.sh

ENTRYPOINT ["/entrypoint.dev.sh"]

WORKDIR /app

CMD ["/bin/ash"]

# 本番環境用
FROM base AS  prod
# 本番環境にビルドするentrypointと実施コマンドを用意する

COPY entrypoint.prod.sh /
RUN chmod +x /entrypoint.prod.sh

ENTRYPOINT ["/entrypoint.prod.sh"]

WORKDIR /app

CMD ["/bin/ash"]