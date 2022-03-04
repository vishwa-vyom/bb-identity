#use node 16 base image (see .vnmrc)
FROM node:16-alpine as ts-compiler

# Install build deps
WORKDIR /usr/app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install

# Build app
COPY ./src ./src
COPY build.ts ./
COPY tsconfig*.json ./
RUN yarn build


# Copy ts compile and build dependencies
FROM node:16-alpine as ts-remover
WORKDIR /usr/app
COPY --from=ts-compiler /usr/app/package.json ./
COPY --from=ts-compiler /usr/app/yarn.lock ./
COPY --from=ts-compiler /usr/app/dist ./dist

# Install production deps
RUN yarn --production


# Build app image off distroless image
#FROM gcr.io/distroless/nodejs:16
#WORKDIR /usr/app
#COPY --from=ts-remover /usr/app .

ENV NODE_ENV production

USER 1000

# Expose the server
EXPOSE 3000

CMD [ "yarn", "start"]

# Start the server (distroless)
# CMD [ "/usr/app/index.js" ]
