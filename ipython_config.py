c = get_config()  # type: ignore

c.InteractiveShellApp.exec_lines = [
    "%load_ext autoreload",
    "%autoreload 2",
    "from pathlib import Path",
    "import numpy as np",
    "from PIL.Image import Image",
    "from term_image.image import AutoImage",
]
c.TerminalIPythonApp.force_interact = True
c.InteractiveShell.autoindent = False
c.InteractiveShell.pdb = True
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.editing_mode = "vi"
c.TerminalInteractiveShell.editor = "nvim"
c.StoreMagics.autorestore = True
