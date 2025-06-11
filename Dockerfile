# Dockerfile
FROM node:20

# Create app directory
WORKDIR /app

# Install pnpm
RUN npm install -g pnpm

# Copy files
COPY . .

# Install and build
RUN pnpm install --frozen-lockfile
RUN pnpm build

# Expose and run
EXPOSE 3000
CMD ["node", "dist/index.js"]
