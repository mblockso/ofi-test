OFI_HOME=/home/jxiong/install/ofi-ext
CFLAGS=-I$(OFI_HOME)/include
LDFLAGS=-L$(OFI_HOME)/lib -Xlinker -R$(OFI_HOME)/lib -lfabric -lrdmacm

TARGETS=pingpong rdma
all: $(TARGETS)

pingpong: pingpong.c Makefile
	cc pingpong.c -o pingpong $(CFLAGS) $(LDFLAGS)

rdma: rdma.c Makefile
	cc rdma.c -o rdma $(CFLAGS) $(LDFLAGS)

clean:
	rm $(TARGETS)
