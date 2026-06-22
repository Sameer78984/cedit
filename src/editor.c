#include "editor.h"
#include <sys/ioctl.h>
#include <unistd.h>

struct editorConfig E;

void initEditor() {
  if (getWindowSize(&E.screenRows, &E.screenCols) == -1)
    die("getWindowSize");
}