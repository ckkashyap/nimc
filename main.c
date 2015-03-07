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

void ccopy(char *o, char *i, int l) {
  int idx;
  for(idx=0;idx < l; idx++) o[idx]=i[idx];
}

int main() {
  char s1[] = {'K', 'A', 'S', 'H', 'Y', 'A', 'P', '\0'};
  char s2[] = {'A', 'A', 'A', 'A', 'A', 'A', 'A', '\0'};
  T t;
  setVal(&t);
  printf("hello world %ld %ld\n",t.a, t.b);
  printf("sum = %d\n", sum(10, 20));
  printf("%s\n", s1);
  printf("%s\n", s2);
  //ccopy(s2, s1, 7);
  copystr(s2, s1, 7);
  printf("%s\n", s2);

}

