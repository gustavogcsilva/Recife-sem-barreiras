# 🌊 Recife Sem Barreiras

**Mapeamento colaborativo e inteligente de mobilidade urbana em dias de chuva.**

O **Recife Sem Barreiras** é uma solução tecnológica focada em resiliência urbana e mobilidade. Desenvolvido para mitigar os impactos das fortes chuvas na cidade, o projeto funciona como um mapa interativo e colaborativo que exibe pontos de alagamento em tempo real. 

A plataforma vai além do reporte manual dos usuários: ela cruza a localização dos alagamentos com as imagens das câmeras públicas da CTTU, o nível da tábua de marés e as áreas de risco geológico mapeadas pela Defesa Civil. Com uma arquitetura moderna dividida entre uma API robusta e uma interface de fácil acesso pelo celular, o objetivo é garantir previsibilidade, segurança e rotas livres de barreiras hídricas para a população.

---

## 🚀 Principais Funcionalidades

* 🗺️ **Mapeamento Colaborativo:** Reportes de alagamento feitos em tempo real por motoristas e pedestres.
* 📷 **Integração Visual (CTTU):** Acesso imediato aos snapshots das câmeras de trânsito para validação real das vias.
* 🌊 **Inteligência Preditiva:** Cálculo de tempo de escoamento baseado no comportamento da tábua de marés do Porto do Recife.
* ⛰️ **Segurança Total:** Exibição das áreas de risco de deslizamento (Encostas R1 a R4) mapeadas pela Defesa Civil/GeoRecife.

---

## 🛠️ Stack Tecnológica

O projeto adota uma arquitetura desacoplada, garantindo escalabilidade em momentos de pico (fortes chuvas):

**Backend (API & Dados)**
* **Python / FastAPI:** Microsserviços assíncronos e de alta performance.
* **PostgreSQL + PostGIS:** Banco relacional com extensão espacial para cálculos complexos (raio de alertas, interseção de rotas e polígonos).
* **Redis:** Cache em memória para gerenciar o ciclo de vida (TTL) dos alertas ativos.

**Frontend (Interface & PWA)**
* **JavaScript / Node.js:** Ambiente de execução.
* **Next.js + React:** Renderização rápida e interface interativa.
* **Leaflet.js:** Motor de renderização do mapa interativo, focado em performance mobile.
* **Tailwind CSS:** Estilização responsiva.

---

## ⚙️ Como Executar o Projeto Localmente

### Pré-requisitos
* [Docker](https://www.docker.com/) e Docker Compose instalados.
* [Python 3.10+](https://www.python.org/) instalado.
* [Node.js](https://nodejs.org/) (versão 18 ou superior).

### Passo a Passo

**1. Clone o repositório**
`git clone https://github.com/SEU_USUARIO/recife-sem-barreiras.git`
`cd recife-sem-barreiras`

**2. Suba a infraestrutura de Banco e Cache**
`docker-compose up -d`

**3. Inicie o Backend (FastAPI)**
`cd backend`
`pip install -r requirements.txt`
`uvicorn app.main:app --reload --port 8000`

**4. Inicie o Frontend (Next.js)**
`cd ../frontend`
`npm install`
`npm run dev`

---

## 👨‍💻 Desenvolvedor & Agradecimentos

Projeto idealizado e desenvolvido por **Gustavo Geraldo Campos da Silva** através da **GCS Core System Intelligence**.

Gostaria de registrar um agradecimento especial a **Gleica Campos** pelo incentivo contínuo e suporte durante a idealização do projeto, e ao **Professor Victor Brayner** pelas orientações técnicas fundamentais ao longo da jornada de desenvolvimento de software.

---
*Recife Sem Barreiras - Construindo uma cidade mais inteligente e resiliente.*
