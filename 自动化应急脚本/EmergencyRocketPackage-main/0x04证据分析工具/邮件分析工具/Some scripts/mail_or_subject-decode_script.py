# /etc/bin/python3

from email.header import decode_header
import argparse

# main
# test: =?gbk?B?u+nJtA==?=
# 转换成：[(b'\xbb\xe9\xc9\xb4', 'gbk')]
# 婚纱

def main(query):
    print(decode_header(query))
    print(decode_header(query)[0][0].decode("gbk"))

# arg
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Process some integers.')
    parser.add_argument('-q','--query',help='-q 加上需要转码的字符串')
    args = parser.parse_args()
    query=args.query
    main(query)
