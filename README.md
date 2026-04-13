# EcomManager 🛒

Painel de gestão multi-empresa para **Shopee + Mercado Livre** com Agente de IA (Claude).

## ✨ O que tem

- **Multi-empresa** — gerencie quantas lojas quiser, cada uma com cor própria
- **Multi-plataforma** — Shopee e Mercado Livre no mesmo painel
- **Campanhas** — tabela completa com ROAS, CTR, CPC, filtro por plataforma
- **Produtos** — estoque, vendas, alertas de estoque crítico
- **Agente IA** — chat com Claude que analisa e compara todas as lojas
- **100% no navegador** — sem servidor, sem instalação, hospeda no GitHub Pages grátis

---

## 🚀 Como colocar no ar (GitHub Pages)

### Passo 1 — Criar conta no GitHub
1. Acesse **github.com**
2. Clique em **Sign up** e crie sua conta gratuita
3. Confirme o e-mail

### Passo 2 — Criar repositório
1. Clique no **+** no canto superior direito
2. Clique em **New repository**
3. Nome: `ecom-manager`
4. Deixe como **Public**
5. **NÃO** marque "Add a README"
6. Clique em **Create repository**

### Passo 3 — Subir o arquivo
1. Na página do repositório, clique em **"uploading an existing file"**
2. Arraste o arquivo `index.html` para a área de upload
3. Clique em **Commit changes**

### Passo 4 — Ativar o GitHub Pages
1. Vá em **Settings** (aba no topo do repositório)
2. No menu lateral esquerdo, clique em **Pages**
3. Em "Source", selecione **Deploy from a branch**
4. Em "Branch", selecione **main** e pasta **/ (root)**
5. Clique em **Save**

### Passo 5 — Acessar o sistema
Após ~1 minuto, seu sistema estará disponível em:
```
https://SEU-USUARIO.github.io/ecom-manager
```

---

## 🔑 Chave da API Claude (opcional)

Para ativar o Agente de IA com análises reais:

1. Acesse **console.anthropic.com**
2. Crie uma conta (tem crédito gratuito inicial)
3. Vá em **API Keys → Create Key**
4. Cole a chave na tela de configuração do sistema

Sem a chave, o sistema funciona normalmente com respostas demo.

---

## 💡 Como usar

1. Abra o sistema no navegador
2. Cole sua chave da API (opcional)
3. Adicione suas empresas com nome, cor e plataformas
4. Clique em **Entrar no painel**
5. Filtre por empresa ou plataforma no menu lateral
6. Use o **Agente IA** para diagnósticos e sugestões

---

## 📊 Integrações futuras (API real)

O sistema hoje usa dados simulados. Para conectar às APIs reais você precisará de:

| Plataforma | Portal | Credenciais |
|---|---|---|
| Shopee | open.shopee.com | Partner ID + Partner Key + Access Token |
| Mercado Livre | developers.mercadolivre.com.br | App ID + Secret Key + Access Token |

---

## 🆓 Custo

| Serviço | Custo |
|---|---|
| GitHub Pages | Grátis |
| Claude API | Crédito gratuito inicial (~$5) |
| Sistema | Grátis |
