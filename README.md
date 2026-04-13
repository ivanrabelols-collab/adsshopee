# 🛒 Shopee Manager

Sistema completo de gestão de tráfego para Shopee com **dashboard de dados consolidados** e **agente de IA** (Claude) para análise e estratégia.

![Dashboard Preview](docs/preview.png)

## ✨ Funcionalidades

- 📊 **Dashboard** — métricas consolidadas: ROAS, CTR, CPC, receita, impressões
- 📈 **Campanhas** — tabela ordenável com todas as campanhas Shopee Ads
- 🤖 **Agente IA** — chat com Claude que analisa seus dados e sugere ações
- 🔍 Diagnóstico completo da conta
- ⚡ Otimização de campanhas (pausar, escalar, reformular)
- 🔑 Estratégia de palavras-chave
- 🎯 Auditoria de recursos não usados (afiliados, cupons, frete)
- 📋 Relatório diário automatizado

---

## 🚀 Início Rápido

### Pré-requisitos
- Python 3.11+
- Node.js 18+
- Git

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/shopee-manager.git
cd shopee-manager
```

### 2. Configure o Backend

```bash
cd backend
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
cp .env.example .env
# Edite o .env com suas credenciais
```

### 3. Configure o Frontend

```bash
cd frontend
npm install
```

### 4. Inicie o sistema

**Terminal 1 — Backend:**
```bash
cd backend
uvicorn app.main:app --reload --port 8000
```

**Terminal 2 — Frontend:**
```bash
cd frontend
npm start
```

Acesse: **http://localhost:3000**

> ⚡ **Modo Demo**: funciona sem credenciais — dados simulados para testar todas as funcionalidades.

---

## 🔑 Como obter as credenciais

### API Shopee (Shopee Open Platform)

1. Acesse **https://open.shopee.com**
2. Faça login com sua conta de vendedor
3. Vá em **"My Apps" → "Create App"**
4. Preencha:
   - App Name: `Shopee Manager`
   - App Type: `Web App`
   - Redirect URL: `http://localhost:8000/api/shopee/callback`
5. Anote o **Partner ID** e **Partner Key**
6. Para obter o **Shop ID** e **Access Token**, use o fluxo OAuth:

```bash
# Após criar o app, execute:
cd backend
python -c "
from app.core.config import settings
import hmac, hashlib, time
ts = int(time.time())
path = '/api/v2/shop/auth_partner'
base = f'{settings.SHOPEE_PARTNER_ID}{path}{ts}'
sign = hmac.new(settings.SHOPEE_PARTNER_KEY.encode(), base.encode(), hashlib.sha256).hexdigest()
url = f'https://partner.shopeemobile.com{path}?partner_id={settings.SHOPEE_PARTNER_ID}&timestamp={ts}&sign={sign}&redirect={settings.SHOPEE_API_BASE}/callback'
print('Acesse esta URL no navegador:', url)
"
```

7. Após autorizar, você receberá o `access_token` e `shop_id` no callback.

### API Anthropic (Claude)

1. Acesse **https://console.anthropic.com**
2. Vá em **"API Keys" → "Create Key"**
3. Copie a chave e coloque no `.env`:
```
ANTHROPIC_API_KEY=sk-ant-...
```

---

## ⚙️ Variáveis de Ambiente

```env
# backend/.env

# Shopee API
SHOPEE_PARTNER_ID=123456
SHOPEE_PARTNER_KEY=sua_chave_secreta
SHOPEE_SHOP_ID=789012
SHOPEE_ACCESS_TOKEN=seu_token
SHOPEE_REFRESH_TOKEN=seu_refresh_token

# Claude AI
ANTHROPIC_API_KEY=sk-ant-...

# App
SECRET_KEY=gere-uma-chave-aleatoria-aqui
FRONTEND_URL=http://localhost:3000
```

---

## 📁 Estrutura do Projeto

```
shopee-manager/
├── backend/
│   ├── app/
│   │   ├── api/
│   │   │   ├── shopee.py      # Endpoints Shopee
│   │   │   ├── agent.py       # Endpoints do Agente IA
│   │   │   └── dashboard.py   # Endpoints Dashboard
│   │   ├── core/
│   │   │   └── config.py      # Configurações
│   │   ├── services/
│   │   │   ├── shopee_service.py   # Integração Shopee API
│   │   │   └── agent_service.py    # Lógica do Agente IA
│   │   └── main.py
│   ├── requirements.txt
│   └── .env.example
│
├── frontend/
│   ├── src/
│   │   ├── pages/
│   │   │   ├── Dashboard.js   # Página principal
│   │   │   ├── Campaigns.js   # Gestão de campanhas
│   │   │   └── Agent.js       # Chat com IA
│   │   ├── App.js
│   │   └── App.css
│   └── package.json
│
├── docker-compose.yml
└── README.md
```

---

## 🐳 Docker (opcional)

```bash
docker-compose up --build
```

---

## 🛠️ Tecnologias

| Camada | Tecnologia |
|---|---|
| Frontend | React 18, Recharts, React Markdown |
| Backend | Python, FastAPI, httpx |
| IA | Anthropic Claude (claude-sonnet-4) |
| API | Shopee Open Platform v2 |
| Estilo | CSS puro com variáveis customizadas |

---

## 📊 Métricas Monitoradas

| Métrica | Descrição |
|---|---|
| **ROAS** | Retorno sobre investimento em ads |
| **CTR** | Taxa de cliques por impressão |
| **CPC** | Custo por clique |
| **Impressões** | Quantas vezes o anúncio foi exibido |
| **Conversão** | % de cliques que viraram pedidos |
| **Receita** | Total de vendas geradas pelos ads |

---

## 🤖 Capacidades do Agente IA

O agente tem acesso a todos os dados da conta e pode:

- **Diagnosticar** problemas em campanhas com ROAS ruim
- **Recomendar** novas palavras-chave com alto potencial
- **Identificar** recursos da plataforma não utilizados
- **Calcular** impacto estimado de cada ação
- **Gerar** relatório diário com próximos passos
- **Responder** perguntas livres sobre a conta

---

## 📄 Licença

MIT — use à vontade.
