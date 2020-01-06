all: check.c $(SRC_DIR)/crypto/ec/ecp_nistp521.c
	$(CC) -I$(SRC_DIR) -I$(SRC_DIR)/include -I$(SRC_DIR)/crypto/include \
		-pthread -m64 -std=c99 -Wall -fdata-sections -ffunction-sections \
		-o check check.c $(SRC_DIR)/libcrypto.a -ldl
clean:
	rm -f check
