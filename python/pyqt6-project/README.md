# Projeto Python (com `.venv`) — passos rápidos

Resumo: exemplo mínimo para criar um ambiente virtual no Windows (PowerShell), instalar `PyQt6`, e executar um app de teste.

Passos (PowerShell):

1. Verificar Python instalado

```
python --version
```

2. Criar a virtualenv (no diretório do projeto)

```
python -m venv .venv
```

3. Ativar a virtualenv (PowerShell)

```
# Se necessário, permita execução de scripts na sessão do usuário
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Ativar a venv
& .\.venv\Scripts\Activate.ps1
```

Observação: se você preferir não mudar a `ExecutionPolicy`, use o prompt do CMD com `\.venv\Scripts\activate.bat` ou execute o Python diretamente com o caminho para o executável da venv.

4. Atualizar pip e instalar dependências

```
python -m pip install --upgrade pip
pip install -r requirements.txt
```

5. Executar o app de exemplo

```
python src\main.py
```

6. Salvar dependências instaladas (após instalar outras libs)

```
pip freeze > requirements.txt
```

Boas práticas e notas:
- Não coloque arquivos de código dentro da pasta `.venv`. Mova quaisquer scripts para `src/` ou `app/`.
- Use `.gitignore` para ignorar `.venv/`, `__pycache__/` e arquivos gerados.
- Para projetos maiores, considere `poetry` ou `pip-tools` para gerenciar dependências e `pyproject.toml`.
