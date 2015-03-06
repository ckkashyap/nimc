#include <stdio.h>

typedef struct {
  long a;
  long b;
} T;


void setVal(T *t);

void populatestr(char *p) {
  int i;
  for(i=0;i<9;i++){
    printf("%c\n",p[i]);
  }
}

int main() {
  T t;
  setVal(&t);
  printf("hello world %ld %ld\n",t.a, t.b);
  printf("sum = %d\n", sum(10, 20));
}
