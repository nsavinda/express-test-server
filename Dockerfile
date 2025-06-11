FROM node:18 AS base

WORKDIR /app

# Install pnpm
RUN npm install -g pnpm

# Only copy lock file first to leverage Docker cache
COPY pnpm-lock.yaml ./
COPY package.json ./

# Install deps
RUN pnpm install --frozen-lockfile

# Copy the rest of the code
COPY . .

# Build
RUN pnpm build

# Final image
FROM node:18

WORKDIR /app
COPY --from=base /app .

EXPOSE 3000
CMD ["node", "dist/index.js"]
