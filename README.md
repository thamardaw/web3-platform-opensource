# web3-platform-opensource

Web3 Platform Opensource bootstrapped with `create-t3-app`

## What's Web3 Platform?

The ideology of this repository is supposed to provide the boilerplate and features for marketplace applicaiton. Basically, this project is based on `create-t3-app` which can provide a bunch of features with REST APIs and tRPC based endpoints. Some of the UIs components are inherited from [MedusaJs](https://github.com/medusajs/medusa).

If you are not familiar with the different technologies used in this project, please refer to the respective docs.

- [Next.js](https://nextjs.org/)
- [tRPC](https://trpc.io/)
- [NextAuth.js](https://next-auth.js.org/)
- [Medusa JS](https://medusajs.com/)
- [Tailwind Css](https://tailwindcss.com/)
- [Postgres](https://www.postgresql.org/)

## Setting Database

Setting database is quite straightforward. You can download postgresql at [Postgres Download Page](https://www.postgresql.org/download/) and install it in your local. Once the postgres was setup, you can add the proper connection url as the string at `.env`

```bash
cp .env.copy .env
```


## Database Migration

Database should be migrated and schema should be generated first before the development process.
```
npx prisma migrate dev
```
```
npx prisma migrate deploy
```

## Installation Guide

```bash
npm install or yarn install or bun install or pnpm install
```

## Running on local

```
npm run dev or yarn dev or bun dev or pnpm dev
```

## Deployment process

Deployment process will be covered very soon.
