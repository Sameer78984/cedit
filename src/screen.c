#include "editor.h"
#include <unistd.h>
#include <string.h>

void editorDrawRows() {
  for (int y = 0; y < E.screenRows; y++) {
    write(STDOUT_FILENO, "~", 1);
    if(y < E.screenRows - 1){
      write(STDOUT_FILENO, "\r\n", 2);
    }
  }
}

void editorRefreshScreen() {
  write(STDOUT_FILENO, "\x1b[2J", 4);
  write(STDOUT_FILENO, "\x1b[H", 3);

  editorDrawRows();

  write(STDOUT_FILENO, "\x1b[H", 3);
}

// append buffer
struct abuf{
  char *b;
  int len;
};

#define ABUF_INIT {NULL, 0}

void abAppend(struct abuf *ab, const char* s, int len){
  char* new = realloc(ab->b, ab->len + len);
  if(new == NULL) return;
  memcpy(&new[ab->len], s, len);
  ab->b = new;
  ab-> len += len;
}

void abFree(struct abuf *ab){
  free(ab->b);
}