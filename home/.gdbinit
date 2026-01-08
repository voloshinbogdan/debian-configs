set auto-load safe-path /
python
import sys, os

print("Hello from gdb init")

sys.path.insert(0, '/usr/share/gcc/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)


sys.path.insert(0, os.path.expanduser("~/.qtprinters"))
from qt import register_qt_printers
register_qt_printers(None)
end

set print pretty on
set print object on
set print static-members on
set print vtbl on
set print demangle on
set demangle-style gnu-v3
set print sevenbit-strings off

# set pagination off
# set confirm off
# set target-async on
# set print elements 0
