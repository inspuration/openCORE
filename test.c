#include  "tomcrypt.h"

//gcc -Os -I ./libtomcrypt-1.17/src/headers/ -I ./libtommath-0.42.0/ -L. test.c -ltomcrypt -ltommath -DLTM_DESC -o test

static const unsigned char openssl_private_rsa[] = {
   0x30, 0x82, 0x02, 0x5e, 0x02, 0x01, 0x00, 0x02, 0x81, 0x81, 0x00, 0xcf, 0x9a, 0xde, 0x64, 0x8a, 
   0xda, 0xc8, 0x33, 0x20, 0xa9, 0xd7, 0x83, 0x31, 0x19, 0x54, 0xb2, 0x9a, 0x85, 0xa7, 0xa1, 0xb7, 
   0x75, 0x33, 0xb6, 0xa9, 0xac, 0x84, 0x24, 0xb3, 0xde, 0xdb, 0x7d, 0x85, 0x2d, 0x96, 0x65, 0xe5, 
   0x3f, 0x72, 0x95, 0x24, 0x9f, 0x28, 0x68, 0xca, 0x4f, 0xdb, 0x44, 0x1c, 0x3e, 0x60, 0x12, 0x8a, 
   0xdd, 0x26, 0xa5, 0xeb, 0xff, 0x0b, 0x5e, 0xd4, 0x88, 0x38, 0x49, 0x2a, 0x6e, 0x5b, 0xbf, 0x12, 
   0x37, 0x47, 0xbd, 0x05, 0x6b, 0xbc, 0xdb, 0xf3, 0xee, 0xe4, 0x11, 0x8e, 0x41, 0x68, 0x7c, 0x61, 
   0x13, 0xd7, 0x42, 0xc8, 0x80, 0xbe, 0x36, 0x8f, 0xdc, 0x08, 0x8b, 0x4f, 0xac, 0xa4, 0xe2, 0x76, 
   0x0c, 0xc9, 0x63, 0x6c, 0x49, 0x58, 0x93, 0xed, 0xcc, 0xaa, 0xdc, 0x25, 0x3b, 0x0a, 0x60, 0x3f, 
   0x8b, 0x54, 0x3a, 0xc3, 0x4d, 0x31, 0xe7, 0x94, 0xa4, 0x44, 0xfd, 0x02, 0x03, 0x01, 0x00, 0x01, 
   0x02, 0x81, 0x81, 0x00, 0xc8, 0x62, 0xb9, 0xea, 0xde, 0x44, 0x53, 0x1d, 0x56, 0x97, 0xd9, 0x97, 
   0x9e, 0x1a, 0xcf, 0x30, 0x1e, 0x0a, 0x88, 0x45, 0x86, 0x29, 0x30, 0xa3, 0x4d, 0x9f, 0x61, 0x65, 
   0x73, 0xe0, 0xd6, 0x87, 0x8f, 0xb6, 0xf3, 0x06, 0xa3, 0x82, 0xdc, 0x7c, 0xac, 0xfe, 0x9b, 0x28, 
   0x9a, 0xae, 0xfd, 0xfb, 0xfe, 0x2f, 0x0e, 0xd8, 0x97, 0x04, 0xe3, 0xbb, 0x1f, 0xd1, 0xec, 0x0d, 
   0xba, 0xa3, 0x49, 0x7f, 0x47, 0xac, 0x8a, 0x44, 0x04, 0x7e, 0x86, 0xb7, 0x39, 0x42, 0x3f, 0xad, 
   0x1e, 0xb7, 0x0e, 0xa5, 0x51, 0xf4, 0x40, 0x63, 0x1e, 0xfd, 0xbd, 0xea, 0x9f, 0x41, 0x9f, 0xa8, 
   0x90, 0x1d, 0x6f, 0x0a, 0x5a, 0x95, 0x13, 0x11, 0x0d, 0x80, 0xaf, 0x5f, 0x64, 0x98, 0x8a, 0x2c, 
   0x78, 0x68, 0x65, 0xb0, 0x2b, 0x8b, 0xa2, 0x53, 0x87, 0xca, 0xf1, 0x64, 0x04, 0xab, 0xf2, 0x7b, 
   0xdb, 0x83, 0xc8, 0x81, 0x02, 0x41, 0x00, 0xf7, 0xbe, 0x5e, 0x23, 0xc3, 0x32, 0x3f, 0xbf, 0x8b, 
   0x8e, 0x3a, 0xee, 0xfc, 0xfc, 0xcb, 0xe5, 0xf7, 0xf1, 0x0b, 0xbc, 0x42, 0x82, 0xae, 0xd5, 0x7a, 
   0x3e, 0xca, 0xf7, 0xd5, 0x69, 0x3f, 0x64, 0x25, 0xa2, 0x1f, 0xb7, 0x75, 0x75, 0x05, 0x92, 0x42, 
   0xeb, 0xb8, 0xf1, 0xf3, 0x0a, 0x05, 0xe3, 0x94, 0xd1, 0x55, 0x78, 0x35, 0xa0, 0x36, 0xa0, 0x9b, 
   0x7c, 0x92, 0x84, 0x6c, 0xdd, 0xdc, 0x4d, 0x02, 0x41, 0x00, 0xd6, 0x86, 0x0e, 0x85, 0x42, 0x0b, 
   0x04, 0x08, 0x84, 0x21, 0x60, 0xf0, 0x0e, 0x0d, 0x88, 0xfd, 0x1e, 0x36, 0x10, 0x65, 0x4f, 0x1e, 
   0x53, 0xb4, 0x08, 0x72, 0x80, 0x5c, 0x3f, 0x59, 0x66, 0x17, 0xe6, 0x98, 0xf2, 0xe9, 0x6c, 0x7a, 
   0x06, 0x4c, 0xac, 0x76, 0x3d, 0xed, 0x8c, 0xa1, 0xce, 0xad, 0x1b, 0xbd, 0xb4, 0x7d, 0x28, 0xbc, 
   0xe3, 0x0e, 0x38, 0x8d, 0x99, 0xd8, 0x05, 0xb5, 0xa3, 0x71, 0x02, 0x40, 0x6d, 0xeb, 0xc3, 0x2d, 
   0x2e, 0xf0, 0x5e, 0xa4, 0x88, 0x31, 0x05, 0x29, 0x00, 0x8a, 0xd1, 0x95, 0x29, 0x9b, 0x83, 0xcf, 
   0x75, 0xdb, 0x31, 0xe3, 0x7a, 0x27, 0xde, 0x3a, 0x74, 0x30, 0x0c, 0x76, 0x4c, 0xd4, 0x50, 0x2a, 
   0x40, 0x2d, 0x39, 0xd9, 0x99, 0x63, 0xa9, 0x5d, 0x80, 0xae, 0x53, 0xca, 0x94, 0x3f, 0x05, 0x23, 
   0x1e, 0xf8, 0x05, 0x04, 0xe1, 0xb8, 0x35, 0xf2, 0x17, 0xb3, 0xa0, 0x89, 0x02, 0x41, 0x00, 0xab, 
   0x90, 0x88, 0xfa, 0x60, 0x08, 0x29, 0x50, 0x9a, 0x43, 0x8b, 0xa0, 0x50, 0xcc, 0xd8, 0x5a, 0xfe, 
   0x97, 0x64, 0x63, 0x71, 0x74, 0x22, 0xa3, 0x20, 0x02, 0x5a, 0xcf, 0xeb, 0xc6, 0x16, 0x95, 0x54, 
   0xd1, 0xcb, 0xab, 0x8d, 0x1a, 0xc6, 0x00, 0xfa, 0x08, 0x92, 0x9c, 0x71, 0xd5, 0x52, 0x52, 0x35, 
   0x96, 0x71, 0x4b, 0x8b, 0x92, 0x0c, 0xd0, 0xe9, 0xbf, 0xad, 0x63, 0x0b, 0xa5, 0xe9, 0xb1, 0x02, 
   0x41, 0x00, 0xdc, 0xcc, 0x27, 0xc8, 0xe4, 0xdc, 0x62, 0x48, 0xd5, 0x9b, 0xaf, 0xf5, 0xab, 0x60, 
   0xf6, 0x21, 0xfd, 0x53, 0xe2, 0xb7, 0x5d, 0x09, 0xc9, 0x1a, 0xa1, 0x04, 0xa9, 0xfc, 0x61, 0x2c, 
   0x5d, 0x04, 0x58, 0x3a, 0x5a, 0x39, 0xf1, 0x4a, 0x21, 0x56, 0x67, 0xfd, 0xcc, 0x20, 0xa3, 0x8f, 
   0x78, 0x18, 0x5a, 0x79, 0x3d, 0x2e, 0x8e, 0x7e, 0x86, 0x0a, 0xe6, 0xa8, 0x33, 0xc1, 0x04, 0x17, 
   0x4a, 0x9f,  };

/*** openssl public RSA key in DER format */
static const unsigned char openssl_public_rsa[] = {
   0x30, 0x81, 0x9f, 0x30, 0x0d, 0x06, 0x09, 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x01, 0x01,
   0x05, 0x00, 0x03, 0x81, 0x8d, 0x00, 0x30, 0x81, 0x89, 0x02, 0x81, 0x81, 0x00, 0xcf, 0x9a, 0xde,
   0x64, 0x8a, 0xda, 0xc8, 0x33, 0x20, 0xa9, 0xd7, 0x83, 0x31, 0x19, 0x54, 0xb2, 0x9a, 0x85, 0xa7,
   0xa1, 0xb7, 0x75, 0x33, 0xb6, 0xa9, 0xac, 0x84, 0x24, 0xb3, 0xde, 0xdb, 0x7d, 0x85, 0x2d, 0x96,
   0x65, 0xe5, 0x3f, 0x72, 0x95, 0x24, 0x9f, 0x28, 0x68, 0xca, 0x4f, 0xdb, 0x44, 0x1c, 0x3e, 0x60,
   0x12, 0x8a, 0xdd, 0x26, 0xa5, 0xeb, 0xff, 0x0b, 0x5e, 0xd4, 0x88, 0x38, 0x49, 0x2a, 0x6e, 0x5b,
   0xbf, 0x12, 0x37, 0x47, 0xbd, 0x05, 0x6b, 0xbc, 0xdb, 0xf3, 0xee, 0xe4, 0x11, 0x8e, 0x41, 0x68,
   0x7c, 0x61, 0x13, 0xd7, 0x42, 0xc8, 0x80, 0xbe, 0x36, 0x8f, 0xdc, 0x08, 0x8b, 0x4f, 0xac, 0xa4,
   0xe2, 0x76, 0x0c, 0xc9, 0x63, 0x6c, 0x49, 0x58, 0x93, 0xed, 0xcc, 0xaa, 0xdc, 0x25, 0x3b, 0x0a,
   0x60, 0x3f, 0x8b, 0x54, 0x3a, 0xc3, 0x4d, 0x31, 0xe7, 0x94, 0xa4, 0x44, 0xfd, 0x02, 0x03, 0x01,
   0x00, 0x01,  };

unsigned char sig[] = {
	0xa4, 0x82, 0xc8, 0xa2, 0xd3, 0x41, 0x6e, 0x11,
	0x1b, 0x4d, 0x25, 0xf2, 0xd8, 0xfb, 0x4a, 0xc6, 0x8d, 0x36,
	0x8e, 0x66, 0x69, 0x23, 0xe4, 0x94, 0xe1, 0xbd, 0xa4, 0xd0,
	0xb3, 0x23, 0x12, 0x69, 0x0d, 0xb0, 0x69, 0xc8, 0x5a, 0x12,
	0xb2, 0x01, 0x0f, 0xea, 0xaa, 0x14, 0x57, 0x21, 0x43, 0x5c,
	0xc8, 0x2b, 0xc2, 0x20, 0xe6, 0x5e, 0x4d, 0x8a, 0xb1, 0x72,
	0x02, 0x71, 0xf9, 0xbd, 0x25, 0xd2, 0x65, 0xfd, 0x0e, 0x26,
	0x78, 0xa0, 0x16, 0x12, 0x27, 0xbb, 0xad, 0xe5, 0xb1, 0x89,
	0x15, 0xaf, 0x05, 0xaa, 0x2b, 0x50, 0x8a, 0x91, 0x45, 0x58,
	0xe6, 0x57, 0x2f, 0x8a, 0xd0, 0x9d, 0x68, 0x1b, 0x9c, 0x76,
	0xc6, 0xd6, 0x5e, 0xa9, 0x98, 0xad, 0x1d, 0xd8, 0xa2, 0xe6,
	0x39, 0x62, 0x3c, 0x47, 0x88, 0x57, 0x55, 0x8a, 0x9c, 0x26,
	0x7f, 0xb3, 0x5c, 0xb2, 0x7f, 0x1d, 0x76, 0x38, 0x7a, 0xdc,0x00
};


unsigned char hash[] = {
 0xfe, 0x36, 0x44, 0x4e, 0xf3, 0x7f,
 0xd0, 0x48, 0x92, 0xa4, 0x0c, 0x60,
 0xaf, 0x8d, 0x4e, 0x11, 0x40, 0x87,
 0x8b, 0x3b,
};

int main() {
	ltc_mp = ltm_desc;
	rsa_key priv_key, pub_key;
	int hash_idx, prng_idx;
	int ret = rsa_import(openssl_private_rsa, sizeof(openssl_private_rsa), &priv_key);
	ret = rsa_import(openssl_public_rsa, sizeof(openssl_public_rsa), &pub_key);

	if (register_hash(&sha1_desc) == -1) {
		printf("Error registering SHA1\n");
		return -1;
	}

	hash_idx = find_hash("sha1");
	register_prng(&sprng_desc);
	prng_idx = find_prng("sprng");
	prng_state prng;
	int err;
	if ((err = yarrow_start(&prng)) != CRYPT_OK) {
		printf("Start error: %s\n", error_to_string(err));
	}
	/* add entropy */
	if ((err = yarrow_add_entropy("hello world", 11, &prng))
	!= CRYPT_OK) {
		printf("Add_entropy error: %s\n", error_to_string(err));
	}
	int stat;
	unsigned char buf[1024];
	long size = 1024;
	//ret =  rsa_decrypt_key(sig, strlen(sig), buf, &size, 0, 0, hash_idx, &stat, &key);

	ret =  rsa_sign_hash(hash, strlen(hash), buf, &size, &prng, prng_idx, hash_idx, 0, &priv_key);
	ret = rsa_verify_hash(sig, strlen(sig), hash, strlen(hash), hash_idx, 0, &stat, &pub_key);
	printf("status is : %d\n", ret);
	//load stuff!
	return 0;
}
