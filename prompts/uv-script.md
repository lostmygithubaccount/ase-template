# Self-contained Python executable with `uv`

Create a self-contained Python script:

```bash
uv init --script my_script.py
printf '%s\n%s' '#!/usr/bin/env -S uv run --script' "$(tail -n +2 my_script.py)" > my_script.py
chmod +x my_script.py
```

Now you can execute it:

```bash
./my_script.py
```

