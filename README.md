# PDL Practicals

## Overview

Prompt Declaration Language (PDL) is IBM's declarative framework for building reliable LLM applications using YAML-based specifications. This repository contains practical lab marial and supporting materials for my PDL masterclass.

## Setup

### Requirements

- Docker Desktop (macOS, Windows, or Linux)
- 5 GB free disk space

### Installation

1. **Get the repository**
   
   Choose one option:
   
   **Option A: Clone from GitHub** (requires git)
   ```bash
   git clone git@github.com:haytim/PDL-Masterclass.git
   cd PDL-Masterclass
   ```
   
   **Option B: Unzip from email** (if you received PDL-Masterclass.zip)
   ```bash
   unzip PDL-Masterclass.zip
   cd PDL-Masterclass
   ```

2. **Install Docker Desktop**
   - Windows & macOS: [Download and install](https://www.docker.com/products/docker-desktop/)
   - Linux: Follow [Docker documentation](https://docs.docker.com/engine/install/)

3. **Start the environment** (takes 4-6 minutes)
   ```bash
   docker compose up -d
   docker compose ps  # To verify both ollama and jupyter are running
   ```

4. **Pull the language model** (first run only, takes 2-3 minutes):
   ```bash
   docker exec ollama-server ollama pull granite-code:3b
   ```
   This loads `granite-code:3b`, an IBM Granite Code model optimized for PDL declarations.

5. **Access the notebook**
   - Open http://localhost:8888 in your browser
   - Open `PDL_Lab.ipynb`

## Repository Contents

| File | Purpose |
|------|---------|
| `PDL_Lab.ipynb` | Main 50-minute practical lab |
| `PDL_Lecture.ipynb` | Lecture slides for your reference |
| `docker-compose.yml` | Environment configuration |
| `Dockerfile` | Jupyter and PDL setup |

## Usage

1. Run the first cell at the top to load the LLM
2. Navgiate through each section from top to bottom, using shift + enter to run code cells
3. Modify code to experiment and learn how to use PDL!
4. Save your work frequently (Ctrl+S)

## Language Model

The environment uses `granite-code:3b` (2.0 GB), a lightweight IBM Granite Code model specialized for PDL declarations and fast responses.

To check which models are loaded:

```bash
docker exec ollama-server ollama list
```

## Troubleshooting

**Docker daemon won't start (Linux):**
```bash
sudo systemctl start docker
sudo usermod -aG docker $USER
newgrp docker
```

**Container won't start:**
```bash
docker compose down
docker compose up -d --build
docker compose logs
```

**Port 8888 in use:**
```bash
docker compose down
# Or change port in docker-compose.yml to 8889:8888
```

**Cannot connect to Ollama from notebook:**
```bash
docker compose restart ollama
# Wait 10-15 seconds for the model to load
```

## Stopping

```bash
docker compose down
```

## References

- [PDL Documentation](https://github.com/IBM/prompt-declaration-language)
- [Ollama Models](https://ollama.ai/library)
- [JupyterLab](https://jupyterlab.readthedocs.io/)
