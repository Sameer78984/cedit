#include "editor.h"
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>

#define CTRL_KEY(k) ((k) & 0x1f)

char editorReadKey() {
  char c;
  int nread;

  while ((nread = read(STDIN_FILENO, &c, 1)) != 1) {
    if (nread == -1 && errno != EAGAIN)
      die("read");
  }

  return c;
}

void editorProcessKeypress() {
  char c = editorReadKey();

  if (c == CTRL_KEY('x'))
    exit(0);
}