FROM alpine:3.14

ENTRYPOINT ["sh", "-c", "printf '✨ %s ✨\n' \"$*\"", "--"]