#!/usr/bin/python2

import sys

def format_bar(bar, percent):
    return "{:3.0%} {}".format(percent, bar)

def parse_args (args):
    status = []
    end_index = 0
    for i in xrange(0, len(args)):
        if args[i] == '--end_status_string':
            end_index = i
            break
        else:
            status.append(args[i])
    status  = " ".join(status)
    num_cols = int(args[end_index + 3])
    step = float(args[end_index + 1])
    steps = float(args[end_index + 2])
    progress(status, num_cols, step, steps)

def progress (status, num_cols, current_step, total_steps):
    len_status = len(status)
    spare_cols = num_cols - len_status
    percent = current_step / total_steps
    #  bar_none(percent)
    if spare_cols < 12:
        bar_none(percent)
    elif spare_cols < 19:
        bar_mini(spare_cols, percent)
    elif spare_cols < 29:
        bar_half(spare_cols, percent)
    else:
        bar_full(spare_cols, percent)

def bar_full (spare_cols, percent):
    full_percent = int (percent / .05)
    full_bar = "["
    for i in xrange(0, 20):
        if i < full_percent:
            full_bar += "#"
        else:
            full_bar += " "
    full_bar += "]"
    result = format_bar(full_bar, percent)
    print result.rjust(spare_cols, " ")

def bar_half (spare_cols, percent):
    half_percent = int(percent / .1)
    half_bar = "["
    for i in xrange(0, 10):
        if i < half_percent:
            half_bar += "#"
        else:
            half_bar += " "
    half_bar += "]"
    result = format_bar(half_bar, percent)
    print result.rjust(spare_cols, " ")

    pass

def bar_mini (spare_cols, percent):
    mini_percent = int(percent / .25)
    mini_bar = "["
    for i in xrange(0, 4):
        if i < mini_percent:
            mini_bar += "#"
        else:
            mini_bar += " "
    mini_bar += "]"
    result = format_bar(mini_bar, percent)
    print result.rjust(spare_cols, " ")

def bar_none (percent):
    print " {:3.0%}".format(percent)


if __name__ =='__main__':
    #  print sys.argv[1:]
    parse_args(sys.argv[1:])
