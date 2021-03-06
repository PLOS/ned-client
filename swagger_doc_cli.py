#!/usr/bin/env python

# Copyright (c) 2017 Public Library of Science
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.

"""Swagger Doc CLI client"""

import sys
import argparse
from pyswagger import SwaggerApp
import urllib
from colorama import Fore, Back, Style

show_colors = False

def show_method_list(args):

    app = SwaggerApp._create_(args.spec)

    # TODO: determine url basepath from spec

    methods = []

    for method, op in app.op.items():

        query_params=[]
        for p in op.parameters:
            if getattr(p, 'in') == 'query':
                query_params.append(p.name + "=" + p.type)

        path = op.path + ('?' + '&'.join(query_params) if len(query_params) > 0 else '')

        methods.append((path, op))

    methods = sorted(methods, key=lambda m: m[0])

    for (path, op) in methods:

        # rows, cols = os.popen('stty size', 'r').read().split()

        if args.v:
            set_color()
            print (op.summary)
            set_color(op.method)
            print ("{:<7}{:<50}".format(op.method.upper(), path))
            set_color()
            print (get_curl_command(urllib.parse.urljoin(args.spec, path[1:]), op.method) + '\n')
        else:
            summary = (op.summary[:15] + '..') if len(op.summary) > 15 else op.summary
            # print ("{}{}{:<6}{}{}{}{} {:<50}{}{:>20}{}".format(Fore.WHITE, back_color(op.method), op.method.upper(), Style.DIM, Back.BLACK, Style.NORMAL, Fore.WHITE, path, fore_color(op.method), summary, Style.RESET_ALL))
            # set_color(op.method)
            print ("{}{:<6}{} {:<50}{:>20}".format(fore_color(op.method), op.method.upper(), Style.RESET_ALL, path, summary))
            # set_color(op.method)
            # print ("{:<7}{:<50}{:>20}".format(op.method.upper(), path, summary))

def set_color(method = ""):
    print (fore_color(method), end="")

def fore_color(method = ""):
    if show_colors:
        if method == 'get':
            return (Fore.CYAN)
        elif method == 'post':
            return (Fore.GREEN)
        elif method == 'put':
            return (Fore.YELLOW)
        elif method == 'delete':
            return (Fore.RED)
        else:
            return (Fore.WHITE)
    return (Style.RESET_ALL)

def back_color(method = ""):
    if show_colors:
        if method == 'get':
            return (Back.BLUE)
        elif method == 'post':
            return (Back.GREEN)
        elif method == 'put':
            return (Back.YELLOW)
        elif method == 'delete':
            return (Back.RED)
        else:
            return (Back.BLACK)
    return (Style.RESET_ALL)

def get_curl_command(path, method):

    # TODO: determine if basic auth from spec
    auth = "-u user:pass"
    # TODO: determine model from spec
    model = "{\"foo\": \"bar\"}"

    curl_cmd = 'curl {} -X {} "{}"'.format(auth, method.upper(), path)

    if method == 'post' or method == 'put':
        curl_cmd = "echo '{}' | {} -d @- ".format(model, curl_cmd)

    return (curl_cmd)


def parse_args():

    parser = argparse.ArgumentParser(description='Swagger Doc CLI')
    parser.add_argument('spec', help="location of swagger spec")
    parser.add_argument('-v', help="verbose", action='store_true', required=False)
    parser.add_argument('-c', help="show colors", action='store_true', required=False)

    args = parser.parse_args()

    global show_colors
    show_colors = args.c

    # print (args)

    show_method_list(args)

if __name__ == '__main__':
    parse_args()
