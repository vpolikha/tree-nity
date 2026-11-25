package common

/*
#include <sys/msg.h>

#define BUF_SIZE 100
#define SERVER_KEY 1

typedef struct msg{
	long type;
	char data[BUF_SIZE];
} msg;

*/
import "C"

import (
	"fmt"
)

const (
	AHAHAH = 1488
)

func GetMessage() {
	fmt.Println(int(1))
	fmt.Println(int(C.SERVER_KEY))
}

