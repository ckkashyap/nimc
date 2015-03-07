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

char s1[10] = {'K', 'A', 'S', 'H', 'Y', 'A', 'P', '\0'};
char s2[10] = {'A', 'A', 'A', 'A', 'A', 'A', 'A', '\0'};


int main() {
  T t;
  void *ptr;
  setVal(&t);
  printf("hello world %ld %ld\n",t.a, t.b);
  printf("sum = %d\n", sum(10, 20));
  ptr = (void *)s1;
  printf("%p\n", ptr);
  ptr = (void *)s2;
  printf("%p\n", ptr);

  //ccopy(s2, s1, 7);
  copystr(s2, s1, 3);
  printf("%s\n", s2);

}

