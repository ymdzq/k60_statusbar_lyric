.class public abstract Lcom/xiaomi/onetrack/d/b;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x1d

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 9
    const-string v2, "UTF-8"

    .line 11
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v1, "AndroidKeyStore"

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, ""

    .line 27
    :goto_0
    sput-object v1, Lcom/xiaomi/onetrack/d/b;->a:Ljava/lang/String;

    .line 29
    return-void

    .line 31
    :array_0
    .array-data 1
        0x68t
        0x2at
        0x59t
        0x33t
        0x31t
        0x5dt
        0x63t
        0x21t
        0x40t
        0x35t
        0x4et
        0x73t
        0x5ft
        0x6at
        0x50t
        0x73t
        0x76t
        0x65t
        0x6at
        0x21t
        0x40t
        0x33t
        0x5bt
        0x28t
        0x2at
        0x77t
        0x28t
        0x21t
        0x6ct
    .end array-data
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/d/b;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 7
    move-result-object v1

    .line 10
    const-string v2, "AndroidKeyStore"

    .line 11
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 13
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    const-string v4, "RSA_KEY"

    .line 21
    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 23
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    invoke-static {}, Lcom/xiaomi/onetrack/d/b;->a$1()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v4

    .line 33
    :try_start_2
    const-string v5, "AndroidKeyStore"

    .line 34
    const-string v6, "createKey e"

    .line 36
    invoke-static {v5, v6, v4}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_0
    :goto_0
    const-string v4, "RSA_KEY"

    .line 41
    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 43
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 49
    move-result-object v2

    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 54
    const-string v2, "UTF-8"

    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 63
    move-result-object p0

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 68
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    monitor-exit v0

    .line 72
    return-object p0

    .line 73
    :cond_1
    monitor-exit v0

    .line 74
    return-object v3

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    monitor-exit v0

    .line 77
    throw p0
    .line 78
.end method

.method public static a$1()V
    .locals 9

    .line 1
    const-string v0, "android.security.keystore.KeyGenParameterSpec$Builder"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    const-class v2, Ljava/lang/String;

    .line 10
    filled-new-array {v2, v1}, [Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    move-result-object v1

    .line 19
    const-string v3, "android.security.keystore.KeyProperties"

    .line 20
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    move-result-object v3

    .line 25
    const-string v4, "PURPOSE_ENCRYPT"

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v4

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 33
    move-result v4

    .line 36
    const-string v6, "PURPOSE_DECRYPT"

    .line 37
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    move-result-object v6

    .line 42
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 43
    move-result v6

    .line 46
    or-int/2addr v4, v6

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v4

    .line 51
    const-string v6, "RSA_KEY"

    .line 52
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 61
    const-string/jumbo v4, "setDigests"

    .line 62
    const-class v6, [Ljava/lang/String;

    .line 65
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 67
    move-result-object v7

    .line 70
    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    move-result-object v4

    .line 74
    const-string v7, "DIGEST_SHA256"

    .line 75
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 77
    move-result-object v7

    .line 80
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v7

    .line 84
    check-cast v7, Ljava/lang/String;

    .line 85
    const-string v8, "DIGEST_SHA512"

    .line 87
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 89
    move-result-object v8

    .line 92
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v8

    .line 96
    check-cast v8, Ljava/lang/String;

    .line 97
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 99
    move-result-object v7

    .line 102
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 103
    move-result-object v7

    .line 106
    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v4, "setEncryptionPaddings"

    .line 110
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 113
    move-result-object v6

    .line 116
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    move-result-object v4

    .line 120
    const-string v6, "ENCRYPTION_PADDING_RSA_PKCS1"

    .line 121
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 123
    move-result-object v3

    .line 126
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v3

    .line 130
    check-cast v3, Ljava/lang/String;

    .line 131
    filled-new-array {v3}, [Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 136
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 137
    move-result-object v3

    .line 140
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "build"

    .line 144
    const/4 v4, 0x0

    .line 146
    new-array v6, v4, [Ljava/lang/Class;

    .line 147
    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 149
    move-result-object v0

    .line 152
    new-array v3, v4, [Ljava/lang/Object;

    .line 153
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 158
    const-string v1, "java.security.KeyPairGenerator"

    .line 159
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 161
    move-result-object v1

    .line 164
    const-string v3, "getInstance"

    .line 165
    filled-new-array {v2, v2}, [Ljava/lang/Class;

    .line 167
    move-result-object v2

    .line 170
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    move-result-object v2

    .line 174
    const-string v3, "RSA"

    .line 175
    const-string v4, "AndroidKeyStore"

    .line 177
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 179
    move-result-object v3

    .line 182
    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object v2

    .line 186
    check-cast v2, Ljava/security/KeyPairGenerator;

    .line 187
    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    .line 189
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 191
    move-result-object v3

    .line 194
    const-string v4, "initialize"

    .line 195
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 197
    move-result-object v1

    .line 200
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 201
    move-result-object v0

    .line 204
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 208
    return-void
    .line 211
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/d/b;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 7
    move-result-object v1

    .line 10
    const-string v2, "AndroidKeyStore"

    .line 11
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 13
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    const-string v4, "RSA_KEY"

    .line 21
    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 23
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    invoke-static {}, Lcom/xiaomi/onetrack/d/b;->a$1()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v4

    .line 33
    :try_start_2
    const-string v5, "AndroidKeyStore"

    .line 34
    const-string v6, "createKey e"

    .line 36
    invoke-static {v5, v6, v4}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_0
    :goto_0
    const-string v4, "RSA_KEY"

    .line 41
    invoke-virtual {v2, v4, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 43
    move-result-object v2

    .line 46
    check-cast v2, Ljava/security/PrivateKey;

    .line 47
    const/4 v3, 0x2

    .line 49
    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    const/4 v2, 0x0

    .line 53
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 58
    move-result-object p0

    .line 61
    new-instance v1, Ljava/lang/String;

    .line 62
    const-string v2, "UTF-8"

    .line 64
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    monitor-exit v0

    .line 69
    return-object v1

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    monitor-exit v0

    .line 72
    throw p0
    .line 73
.end method
