FROM node:18.14-alpine
WORKDIR /personal-website
COPY . /personal-website
RUN yarn install --frozen-lockfile
RUN yarn build
EXPOSE 3000
CMD ["node", ".output/server/index.mjs"]