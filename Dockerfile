FROM python:3.12-slim-bookworm

WORKDIR /workspace

COPY requirements-docs.txt /tmp/requirements-docs.txt
RUN pip install --no-cache-dir -r /tmp/requirements-docs.txt \
    && rm /tmp/requirements-docs.txt

EXPOSE 8000

# Serve for local preview; override with e.g. `mkdocs build` or `mkdocs build --strict` for validation.
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
