# Fontes removidas do site

Registro das URLs, links e citações de fontes que foram removidos dos arquivos do site
(para eventual comprovação/referência interna).

**Arquivos afetados:**
- `/home/levy/projetos/3dx/ambryx/index.html`
- `/home/levy/projetos/3dx/ambryx/imobiliarias.html`
- `/home/levy/projetos/3dx/ambryx/shopping.html` *(novo — já nasce sem links de fonte)*
- `/home/levy/projetos/3dx/APEX7_AI_Publicacao_v3/index.html`
- `/home/levy/projetos/3dx/APEX7_AI_Demo_Offline_v3.html`

## 1. Links/URLs de fontes (evidências, casos e estudos)

Estas URLs estavam no campo interno `evidenceSource` dos dados de demonstração (`demoData`)
e em cards de evidência. Foram removidas de **todos** os arquivos na segunda revisão.

| # | Fonte / contexto | URL removida | Onde aparecia |
|---|---|---|---|
| 1 | 3D Cloud – Furniture Shopping Trends Study (móveis/visualização 3D) | https://3dcloud.com/3d-cloud-furniture-shopping-trends-study/ | `evidenceSource` do segmento *retail* |
| 2 | Matterport – Case study Vacasa (hotelaria/reservas) | https://matterport.com/industries/case-studies/vacasa-boosts-vacation-rental-bookings-and-improves-guest-services | Card “Reservas em hotelaria” e `evidenceSource` do segmento *hotel* |
| 3 | MDPI – Buildings (2022) (orientação em shoppings/navegação) | https://www.mdpi.com/2075-5309/12/10/1574 | Card “Orientação em shoppings” e `evidenceSource` dos segmentos *mall* e *parking* |
| 4 | Matterport/Redfin – case study (imobiliário/tour 3D) | https://matterport.com/en-gb/industries/case-studies/redfin-uses-matterport-open-doors-across-country-or-down-street-increasing | `evidenceSource` do segmento *imob* |
| 5 | GoCoworking (referência citada no contexto coworking) | https://www.gocoworking.com/ | `evidenceSource` do segmento *cowork* |
| 6 | Treedis Studio – Garni Hotel indoor navigation (edifícios/orientação interna) | https://studio.treedis.com/case-studies/garni-hotel-indoor-navigation/ | `evidenceSource` do segmento *building* |
| 7 | Matterport – Gilbane digital twins (indústria/construção) | https://matterport.com/news/gilbane-cuts-construction-project-time-25-percent-matterport-digital-twins | `evidenceSource` do segmento *industry* |

> Observação: os links acima **não aparecem mais** em nenhum HTML do projeto.
> A referência interna `$('evidenceSource')` também foi removida do JavaScript para
> evitar erro de execução (o elemento não existe mais na interface).

## 2. Links de vídeo (YouTube) removidos da interface

- Removido o link de fallback no modal: `https://youtu.be/<id>` (dinâmico), exemplos usados:
  - `https://youtu.be/f89Zxx6KfFc`
  - `https://youtu.be/WhC362CB_rY`
  - `https://youtu.be/X5_98D8eXXg`
- Removido o texto: “Abrir no YouTube se o player estiver bloqueado”.
- O embed passou a usar `https://www.youtube-nocookie.com/embed/<id>...` (sem link externo
  clicável exposto na página e sem botão de download).

## 3. Nomes/citações de fontes removidos ou generalizados no texto

- “**Em pesquisa Redfin/Matterport,** 71%…” → “71%…” (segmento *imob*)
- “divulgada pela **Redfin/Matterport**…” → “divulgada…”
- “**Pesquisa 3D Cloud / Provoke Insights 2026**” / “**Pesquisa 3D Cloud 2026**” →
  “Pesquisa de mercado 2026” (ajuste equivalente)
- “**A Vacasa relatou**…” → “Foi relatado…”; “anúncios com tours **Matterport**” →
  “tours imersivos”; “**Caso corporativo Matterport/Vacasa**” → “Caso corporativo”;
  link “**Caso Vacasa**” removido
- “**caso Garni Hotel/Treedis reporta**” → “um caso reporta”;
  “publicada pela **Treedis com o parceiro MODULOR-VR**…” → “publicada…”
- “**A construtora Gilbane reportou**” → “uma construtora reportou”;
  “**Caso corporativo Matterport/Gilbane**” → “Caso corporativo”
- Planos: “licenças **Matterport/Treedis** ou outros fornecedores” → “licenças de terceiros
  ou outros fornecedores”

## 4. Página do shopping (`shopping.html`)

A página dedicada ao segmento de shoppings foi montada a partir do material de proposta
fornecido (`APEX7_AI_Proposta_Diretorio_Orientacao_Shopping.pptx`) e das imagens da jornada.

Citações que constavam no slide “POR QUE ISSO IMPORTA” do material e que **não foram
publicadas** no site:

| Fonte citada no material | Como aparecia | Como ficou no site |
|---|---|---|
| Mappedin — Venue Experience Report 2026 | “Fonte 1: Mappedin, Venue Experience Report 2026 — pesquisa com quase 500 visitantes de grandes espaços.” | Removida. Estatísticas apresentadas sem marca, com nota genérica sobre contexto específico. |
| Deng et al. — Buildings (2022) | “Fonte 2: Deng et al., Buildings (2022), 498 respostas válidas. Os percentuais não representam uma medição dos shoppings de Fortaleza.” | Removida. Texto generalizado para “pesquisa sobre navegação em shopping centers com 498 respostas válidas”. |

Também não foram publicados: nomes de fornecedores, URLs de estudos, links de download do
PowerPoint e links diretos para vídeos. Os percentuais (53%, 1 em 4, 78,51%, 47,19%) seguem
no texto, porém sem atribuição de fonte e acompanhados de aviso de que não representam uma
medição do shopping. O QR Code do vídeo de referência foi mantido como imagem do material
do próprio proponente; a reprodução no site ocorre por incorporação, sem link de download.

## 5. Página de eventos (`eventos.html`)

A página dedicada a feiras, congressos, exposições e centros de convenções foi montada a
partir do PDF de proposta (`APEX7_AI_AMBRYX_Proposta_Eventos_Feiras_Centros_Convencoes.pdf`)
e das orientações comerciais discutidas posteriormente.

O que **não foi publicado**:

| Conteúdo do material de origem | Como ficou no site |
|---|---|
| Nomes de plataformas e fornecedores citados nas perguntas e nas tabelas de preços | Removidos. Os recursos são descritos apenas pela função (mapa, diretório, tour 3D, orientação). |
| Referências a preços publicados por fornecedores e cotações de plataformas | Removidas. Mantidas apenas as faixas de venda sugeridas pela AMBRYX. |
| Seção “desafio / oportunidade / soluções” do PDF | Não foi reproduzida. A página começa pela proposta e pela jornada do visitante. |
| Links de download, PDFs e anexos | Não há download nem incorporação de arquivo; o conteúdo foi reescrito em HTML. |

O diretório da demonstração usa expositores fictícios e dados ilustrativos.

---

*Atualizado em 2026-11-24 para registro interno.*
