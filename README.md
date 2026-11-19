# Ambryx / APEX7 AI — Landing de demonstração

Site estático (HTML + CSS + JS em um único `index.html` + imagens em `assets/`).
Não possui backend nem etapa de build.

## Estrutura

```
index.html         Página completa (estilos, scripts e conteúdo)
imobiliarias.html  Página dedicada ao segmento imobiliário
shopping.html      Página dedicada a shoppings centers (diretório interativo)
assets/            Imagens e logo usados na página
assets/shopping/   Imagens da galeria do shopping + galeria.json
nginx.conf         Configuração do nginx (cache e gzip)
Dockerfile         Imagem nginx:alpine servindo o site na porta 80
```

## Rodar localmente

```bash
python3 -m http.server 8000
# abra http://localhost:8000
```

## Deploy no EasyPanel

1. **Criar o serviço**: no projeto do EasyPanel, clique em **+ Service → App**.
2. **Nome**: `ambryx` (ou `apex7ai-site`).
3. **Source**: escolha **GitHub**, conecte sua conta (autorize o EasyPanel) e selecione
   o repositório `Apex7AI/ambryx`, branch `main`.
4. **Build**: método **Dockerfile** (é detectado automaticamente pelo arquivo `Dockerfile`).
5. **Porta**: `80` (container). Não precisa de variáveis de ambiente.
6. Clique em **Deploy** e aguarde o build.
7. **Domínio**: aba **Domains → Add Domain**, informe o domínio (ex.: `ambryx.com.br`),
   crie no seu provedor de DNS um registro **A** apontando para o IP do servidor.
8. Ative **HTTPS** (Let's Encrypt) na mesma aba após o DNS propagar.
9. **Auto deploy**: deixe o webhook do GitHub habilitado para que cada `git push`
   na branch `main` reconstrua o site automaticamente.

## Atualizar o site

```bash
git add .
git commit -m "descrição da alteração"
git push
```

O EasyPanel faz o redeploy automaticamente (se o auto deploy estiver ligado).

## Observações

- Os vídeos abrem no player incorporado dentro da página, sem link de download.
  A reprodução depende da permissão de incorporação configurada no canal do YouTube.
- O material de origem (`.pptx`) não faz parte da publicação: fica fora do repositório
  e do container, mantido apenas como referência interna.
- O formulário de contato gera um link `wa.me` com os dados preenchidos no momento
  do envio (WhatsApp +55 84 98758-6308). Não há armazenamento de leads no servidor.
- Os hotspots são demonstrativos sobre imagens ilustrativas (não é um tour 360°/3D real).
