#ifndef EDITOR_H
#define EDITOR_H

#include <termios.h>

struct editorConfig {
  int screenRows;
  int screenCols;
  struct termios orig_termios;
};

extern struct editorConfig E;

/* terminal */
void die(const char *s);
void enableRawMode(void);
void disableRawMode(void);
int getWindowSize(int *rows, int *cols);
int getCursorPosition(int *rows, int *cols);

/* input */
char editorReadKey(void);
void editorProcessKeypress(void);

/* screen */
void editorRefreshScreen(void);
void editorDrawRows(void);

/* editor */
void initEditor(void);

#endif