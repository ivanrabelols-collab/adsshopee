#!/bin/bash
# Setup rápido do Shopee Manager
set -e

echo "🛒 Shopee Manager — Setup"
echo "========================="

# Backend
echo ""
echo "📦 Instalando dependências do backend..."
cd backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt --quiet

if [ ! -f .env ]; then
  cp .env.example .env
  echo "✅ Arquivo .env criado — edite com suas credenciais!"
fi

# Frontend
echo ""
echo "📦 Instalando dependências do frontend..."
cd ../frontend
npm install --silent

echo ""
echo "✅ Setup concluído!"
echo ""
echo "Para iniciar:"
echo "  Terminal 1: cd backend && source venv/bin/activate && uvicorn app.main:app --reload"
echo "  Terminal 2: cd frontend && npm start"
echo ""
echo "🌐 Acesse: http://localhost:3000"
echo "📖 API Docs: http://localhost:8000/docs"
