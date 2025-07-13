1. Install Poetry (if needed)
Install via the official script:
curl -sSL https://install.python-poetry.org | python3 -
Or use pipx:
pipx install poetry
Then verify:
poetry --version
``` :contentReference[oaicite:3]{index=3}
---

## 2. (Optional) Set the venv to be inside your project
Run this once per project (or add `--global` for all projects):
```bash
poetry config virtualenvs.in-project true

This ensures the venv is created in a .venv/ folder at your project root instead of a cache dir
python-poetry.org
.
3. Start a new project or initialize one

    To create a new project:

poetry new my_project
cd my_project

To add Poetry to an existing directory:
    cd existing_project
    poetry init

    Add dependencies as prompted
    reddit.com+11dev.to+11medium.com+11
    .

4. Create the virtual environment and install dependencies
Run:
poetry install

This generates the .venv (or cache-based env) and installs any dependencies from pyproject.toml
reddit.com+15github.com+15reddit.com+15
.
5. Activate the virtual environment
Two popular ways:
A) Using Poetry’s built-in shell
poetry shell - deprecated
eval "$(poetry env activate)"

This spawns a subshell with the venv active. Exit it with exit or deactivate
hexlet.io+2reddit.com+2realpython.com+2
python-poetry.org
.
B) Manually activate the env
First find its path:
poetry env info --path

Then (Unix):
source $(poetry env info --path)/bin/activate

Or in PowerShell:
& ((poetry env info --path) + "\Scripts\activate.ps1")
``` :contentReference[oaicite:17]{index=17}
---

## 6. Use commands inside the venv
You have two main options:
- **Run without entering the shell**:
  ```bash
  poetry run python script.py
  poetry run pytest

Poetry automatically uses the venv
reddit.com+1reddit.com+1
dev.to+15python-poetry.org+15github.com+15
.
    Work inside the poetry shell session:
    Just run commands as usual—Python, pip, pytest, etc.

7. Manage environments (optional)
    List venvs:
poetry env list

Use a specific Python version:
poetry env use 3.11

Poetry will create/recreate the env with that version
reddit.com
reddit.com+3phoenixnap.com+3lasp-libera-sdc-libera-utils.readthedocs-hosted.com+3
reddit.com
.

Remove an environment:
    poetry env remove 3.11

🧭 Summary Table
Task	Command
Install Poetry	`curl …
Project env in .venv/	poetry config virtualenvs.in-project true
Start new project	poetry new my_project
Init existing project	poetry init
Install dependencies & create venv	poetry install
Activate shell	poetry shell
Run a command in venv	poetry run <cmd>
Find venv path

To run the script:
 cd leetcode_python
 python main.py
