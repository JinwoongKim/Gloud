#!/usr/bin/env python
# encoding: utf-8

from __future__ import (absolute_import, division,
                        print_function, unicode_literals)

import sys
import shlex
from subprocess import Popen, PIPE


def frame(text):
    """
    Put the text in a pretty frame.
    """
    result = """
+{h}+
|{t}|
+{h}+
""".format(h='-' * len(text), t=text).strip()
    return result

def get_exitcode_stdout_stderr(cmd):
    """
    Execute the external command and get its exitcode, stdout and stderr.
    """
    args = shlex.split(cmd)

    proc = Popen(args, stdout=PIPE, stderr=PIPE)
    out, err = proc.communicate()
    exitcode = proc.returncode
    #
    return exitcode, out, err


def main(params):
    cmd = ' '.join(params)
    exitcode, out, err = get_exitcode_stdout_stderr(cmd)

    print(frame("EXIT CODE"))
    print(exitcode)

    print(frame("STDOUT"))
    print(out)

    print(frame("STDERR"))
    print(err)

####################

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print('Usage: {} <external_command>'.format(sys.argv[0]))
        sys.exit(1)
    # else
    main(sys.argv[1:])
