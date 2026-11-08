# [View the Docs by Clicking here!](https://millenniummachines.github.io/docs)

[![Generate GitHub Pages](https://github.com/MillenniumMachines/millenniummachines.github.io/actions/workflows/generate-github-pages.yml/badge.svg?branch=main)](https://github.com/MillenniumMachines/millenniummachines.github.io/actions/workflows/generate-github-pages.yml)

# Millennium Machines Documentation

This repository contains the source for the Millennium Machines documentation website.

While the documentation is written in Markdown, it is rendered using `mkdocs` and `mkdocs-material`, which allow for some custom formatting. You should view the documentation on the website itself, [https://millenniummachines.github.io/docs](https://millenniummachines.github.io/docs) rather than through the GitHub interface for the best experience.

## Local preview and validation (Docker)

The repo includes a small image with the same MkDocs dependencies as [GitHub Actions](.github/workflows/generate-github-pages.yml). From the repository root:

**Script** (same flows as below; run from repo root):

```bash
./scripts/docker-docs.sh build-image   # build the image once
./scripts/docker-docs.sh serve        # preview at http://localhost:8000
./scripts/docker-docs.sh validate     # mkdocs build → ./site
./scripts/docker-docs.sh validate --strict
```

**Serve** the docs (Material live reload works with the bind mount):

```bash
docker build -t millenniummachines-mkdocs .
docker run --rm -p 8000:8000 -v "$PWD:/workspace" -w /workspace millenniummachines-mkdocs
```

Open [http://localhost:8000](http://localhost:8000).

**Validate** a production-style build (writes `site/` on the host):

```bash
docker run --rm -v "$PWD:/workspace" -w /workspace millenniummachines-mkdocs mkdocs build
```

Stricter check (fails on warnings):

```bash
docker run --rm -v "$PWD:/workspace" -w /workspace millenniummachines-mkdocs mkdocs build --strict
```

**Compose** (equivalent flows):

```bash
docker compose up serve
docker compose --profile validation run --rm build
docker compose --profile validation run --rm build mkdocs build --strict
```
