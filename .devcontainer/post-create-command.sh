#!/bin/bash

echo "🚀 Setting up BTCYield development environment..."

# Install dependencies
echo "📦 Installing Node.js dependencies..."
npm install

# Setup database
echo "🗄️ Setting up databases..."
docker-compose -f infrastructure/docker/docker-compose.dev.yml up -d postgres redis questdb

# Wait for services
echo "⏳ Waiting for services to start..."
sleep 10

# Run database migrations
echo "🔄 Running database migrations..."
cd apps/api && npx prisma generate && npx prisma migrate dev --name init

# Create .env files from examples
echo "📝 Creating environment files..."
cp .env.example .env
cp apps/web/.env.example apps/web/.env.local
cp apps/api/.env.example apps/api/.env
cp apps/ai-service/.env.example apps/ai-service/.env

# Install Python dependencies
echo "🐍 Installing Python dependencies..."
cd apps/ai-service && pip install -r requirements.txt

# Return to root
cd /workspace

echo "✅ Development environment setup complete!"
echo "🎯 Run 'npm run dev' to start all services"