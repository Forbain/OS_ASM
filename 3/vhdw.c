#include <stdio.h>

int main(int argc, char* argv[])
{
	unsigned char buffer[512];
	FILE* bin = fopen(argv[1], "rb");
	fread(buffer, 1, 512, bin);

	FILE* vhd = fopen(argv[2], "r+b");
	fseek(vhd, 0, SEEK_SET);
	fwrite(buffer, 1, 512, vhd);

	fclose(vhd);
	fclose(bin);

	return(0);
}