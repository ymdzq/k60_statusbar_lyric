.class public abstract Lcom/google/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BYTE_ARRAY_BASE_OFFSET:J

.field public static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field public static final IS_BIG_ENDIAN:Z

.field public static final MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

.field public static final MEMORY_CLASS:Ljava/lang/Class;

.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/google/protobuf/UnsafeUtil$1;

    .line 3
    invoke-direct {v1}, Lcom/google/protobuf/UnsafeUtil$1;-><init>()V

    .line 5
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 14
    :catchall_0
    move-object v1, v0

    .line 15
    :goto_0
    sput-object v1, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 16
    sget-object v2, Lcom/google/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    .line 18
    sput-object v2, Lcom/google/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 20
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 22
    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    .line 24
    move-result v3

    .line 27
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    invoke-static {v4}, Lcom/google/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    .line 30
    move-result v4

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    if-nez v1, :cond_0

    .line 37
    goto :goto_1

    .line 39
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Android;->isOnAndroidDevice()Z

    .line 40
    move-result v8

    .line 43
    if-eqz v8, :cond_2

    .line 44
    if-eqz v3, :cond_1

    .line 46
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 48
    invoke-direct {v0, v1, v5}, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;I)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    if-eqz v4, :cond_3

    .line 54
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 56
    invoke-direct {v0, v1, v6}, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;I)V

    .line 58
    goto :goto_1

    .line 61
    :cond_2
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 62
    invoke-direct {v0, v1, v7}, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;I)V

    .line 64
    :cond_3
    :goto_1
    sput-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 67
    if-nez v0, :cond_4

    .line 69
    goto/16 :goto_4

    .line 71
    :cond_4
    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 73
    packed-switch v1, :pswitch_data_0

    .line 75
    goto/16 :goto_4

    .line 78
    :pswitch_0
    const-string v1, "copyMemory"

    .line 80
    const-string v3, "getLong"

    .line 82
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 84
    const-class v4, Ljava/lang/Object;

    .line 86
    if-nez v0, :cond_5

    .line 88
    goto :goto_2

    .line 90
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    move-result-object v8

    .line 94
    const-string v9, "objectFieldOffset"

    .line 95
    new-array v10, v6, [Ljava/lang/Class;

    .line 97
    const-class v11, Ljava/lang/reflect/Field;

    .line 99
    aput-object v11, v10, v7

    .line 101
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    filled-new-array {v4, v2}, [Ljava/lang/Class;

    .line 106
    move-result-object v2

    .line 109
    invoke-virtual {v8, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    .line 113
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-nez v2, :cond_6

    .line 117
    goto :goto_2

    .line 119
    :cond_6
    move v2, v6

    .line 120
    goto :goto_3

    .line 121
    :catchall_1
    move-exception v2

    .line 122
    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 123
    :goto_2
    move v2, v7

    .line 126
    :goto_3
    if-nez v2, :cond_7

    .line 127
    goto :goto_4

    .line 129
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    move-result-object v0

    .line 133
    const-string v2, "getByte"

    .line 134
    new-array v8, v6, [Ljava/lang/Class;

    .line 136
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 138
    aput-object v9, v8, v7

    .line 140
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 142
    const-string v2, "putByte"

    .line 145
    new-array v8, v5, [Ljava/lang/Class;

    .line 147
    aput-object v9, v8, v7

    .line 149
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 151
    aput-object v10, v8, v6

    .line 153
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 155
    const-string v2, "getInt"

    .line 158
    filled-new-array {v9}, [Ljava/lang/Class;

    .line 160
    move-result-object v8

    .line 163
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 164
    const-string v2, "putInt"

    .line 167
    new-array v5, v5, [Ljava/lang/Class;

    .line 169
    aput-object v9, v5, v7

    .line 171
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 173
    aput-object v8, v5, v6

    .line 175
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 177
    filled-new-array {v9}, [Ljava/lang/Class;

    .line 180
    move-result-object v2

    .line 183
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 184
    const-string v2, "putLong"

    .line 187
    filled-new-array {v9, v9}, [Ljava/lang/Class;

    .line 189
    move-result-object v3

    .line 192
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 193
    filled-new-array {v9, v9, v9}, [Ljava/lang/Class;

    .line 196
    move-result-object v2

    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 200
    filled-new-array {v4, v9, v4, v9, v9}, [Ljava/lang/Class;

    .line 203
    move-result-object v2

    .line 206
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 207
    move v0, v6

    .line 210
    goto :goto_5

    .line 211
    :catchall_2
    move-exception v0

    .line 212
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 213
    :goto_4
    move v0, v7

    .line 216
    :goto_5
    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 217
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 219
    if-nez v0, :cond_8

    .line 221
    move v1, v7

    .line 223
    goto :goto_6

    .line 224
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->supportsUnsafeArrayOperations()Z

    .line 225
    move-result v1

    .line 228
    :goto_6
    sput-boolean v1, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 229
    const-class v1, [B

    .line 231
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 233
    move-result v1

    .line 236
    int-to-long v1, v1

    .line 237
    sput-wide v1, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 238
    const-class v1, [Z

    .line 240
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 242
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 245
    const-class v1, [I

    .line 248
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 250
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 253
    const-class v1, [J

    .line 256
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 258
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 261
    const-class v1, [F

    .line 264
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 266
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 269
    const-class v1, [D

    .line 272
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 274
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 277
    const-class v1, [Ljava/lang/Object;

    .line 280
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 282
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 285
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    .line 288
    move-result-object v1

    .line 291
    if-eqz v1, :cond_a

    .line 292
    if-nez v0, :cond_9

    .line 294
    goto :goto_7

    .line 296
    :cond_9
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 297
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 299
    :cond_a
    :goto_7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 302
    move-result-object v0

    .line 305
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 306
    if-ne v0, v1, :cond_b

    .line 308
    goto :goto_8

    .line 310
    :cond_b
    move v6, v7

    .line 311
    :goto_8
    sput-boolean v6, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    .line 312
    return-void

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 316
.end method

.method public static access$000(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/protobuf/UnsafeUtil;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    move-result-object v0

    .line 11
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 28
    return-void
    .line 31
.end method

.method public static allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    throw v0
    .line 15
.end method

.method public static arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 6
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 8
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public static arrayIndexScale(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 6
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 8
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public static bufferAddressField()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/protobuf/Android;->isOnAndroidDevice()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    const-class v0, Ljava/nio/Buffer;

    .line 9
    const-string v2, "effectiveDirectAddress"

    .line 11
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_0

    .line 19
    return-object v0

    .line 21
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    .line 22
    const-string v2, "address"

    .line 24
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    goto :goto_1

    .line 30
    :catchall_1
    move-object v0, v1

    .line 31
    :goto_1
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 34
    move-result-object v2

    .line 37
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 38
    if-ne v2, v3, :cond_1

    .line 40
    move-object v1, v0

    .line 42
    :cond_1
    return-object v1
    .line 43
.end method

.method public static determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    const-class v0, [B

    .line 2
    invoke-static {}, Lcom/google/protobuf/Android;->isOnAndroidDevice()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 12
    const-string v3, "peekLong"

    .line 14
    const/4 v4, 0x2

    .line 16
    new-array v5, v4, [Ljava/lang/Class;

    .line 17
    aput-object p0, v5, v2

    .line 19
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 21
    const/4 v7, 0x1

    .line 23
    aput-object v6, v5, v7

    .line 24
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    const-string v3, "pokeLong"

    .line 29
    const/4 v5, 0x3

    .line 31
    new-array v8, v5, [Ljava/lang/Class;

    .line 32
    aput-object p0, v8, v2

    .line 34
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    aput-object v9, v8, v7

    .line 38
    aput-object v6, v8, v4

    .line 40
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    const-string v3, "pokeInt"

    .line 45
    new-array v8, v5, [Ljava/lang/Class;

    .line 47
    aput-object p0, v8, v2

    .line 49
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    aput-object v9, v8, v7

    .line 53
    aput-object v6, v8, v4

    .line 55
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    const-string v3, "peekInt"

    .line 60
    new-array v8, v4, [Ljava/lang/Class;

    .line 62
    aput-object p0, v8, v2

    .line 64
    aput-object v6, v8, v7

    .line 66
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    const-string v3, "pokeByte"

    .line 71
    new-array v6, v4, [Ljava/lang/Class;

    .line 73
    aput-object p0, v6, v2

    .line 75
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 77
    aput-object v8, v6, v7

    .line 79
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    const-string v3, "peekByte"

    .line 84
    filled-new-array {p0}, [Ljava/lang/Class;

    .line 86
    move-result-object v6

    .line 89
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    const-string v3, "pokeByteArray"

    .line 93
    const/4 v6, 0x4

    .line 95
    new-array v8, v6, [Ljava/lang/Class;

    .line 96
    aput-object p0, v8, v2

    .line 98
    aput-object v0, v8, v7

    .line 100
    aput-object v9, v8, v4

    .line 102
    aput-object v9, v8, v5

    .line 104
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    const-string v3, "peekByteArray"

    .line 109
    new-array v6, v6, [Ljava/lang/Class;

    .line 111
    aput-object p0, v6, v2

    .line 113
    aput-object v0, v6, v7

    .line 115
    aput-object v9, v6, v4

    .line 117
    aput-object v9, v6, v5

    .line 119
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    return v7

    .line 124
    :catchall_0
    return v2
    .line 125
.end method

.method public static getBoolean(Ljava/lang/Object;J)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    sget-boolean v4, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 10
    goto :goto_0

    .line 13
    :pswitch_0
    if-eqz v4, :cond_1

    .line 14
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    move v2, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :pswitch_1
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 32
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    .line 34
    move-result v2

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    if-eqz v4, :cond_2

    .line 39
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    .line 41
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    :goto_1
    return v2

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
.end method

.method public static getByte([BJ)B
    .locals 3

    .line 1
    sget-wide v0, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 2
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 5
    iget p2, p1, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 7
    sget-boolean v2, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    .line 9
    packed-switch p2, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    if-eqz v2, :cond_0

    .line 15
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    .line 17
    move-result p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    .line 22
    move-result p0

    .line 25
    goto :goto_1

    .line 26
    :pswitch_1
    iget-object p1, p1, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 27
    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 29
    move-result p0

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    if-eqz v2, :cond_1

    .line 34
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    .line 36
    move-result p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    .line 41
    move-result p0

    .line 44
    :goto_1
    return p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 46
.end method

.method public static getByteBigEndian(Ljava/lang/Object;J)B
    .locals 2

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    and-long/2addr v0, p1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    .line 5
    move-result p0

    .line 8
    not-long p1, p1

    .line 9
    const-wide/16 v0, 0x3

    .line 10
    and-long/2addr p1, v0

    .line 12
    const/4 v0, 0x3

    .line 13
    shl-long/2addr p1, v0

    .line 14
    long-to-int p1, p1

    .line 15
    ushr-int/2addr p0, p1

    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    int-to-byte p0, p0

    .line 19
    return p0
    .line 20
.end method

.method public static getByteLittleEndian(Ljava/lang/Object;J)B
    .locals 2

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    and-long/2addr v0, p1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    .line 5
    move-result p0

    .line 8
    const-wide/16 v0, 0x3

    .line 9
    and-long/2addr p1, v0

    .line 11
    const/4 v0, 0x3

    .line 12
    shl-long/2addr p1, v0

    .line 13
    long-to-int p1, p1

    .line 14
    ushr-int/2addr p0, p1

    .line 15
    and-int/lit16 p0, p0, 0xff

    .line 16
    int-to-byte p0, p0

    .line 18
    return p0
    .line 19
.end method

.method public static getDouble(Ljava/lang/Object;J)D
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 4
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 12
    move-result-wide p0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 16
    move-result-wide p0

    .line 19
    goto :goto_1

    .line 20
    :pswitch_1
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    .line 21
    move-result-wide p0

    .line 24
    goto :goto_1

    .line 25
    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide p0

    .line 29
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 30
    move-result-wide p0

    .line 33
    :goto_1
    return-wide p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public static getFloat(Ljava/lang/Object;J)F
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 4
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 12
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    move-result p0

    .line 19
    goto :goto_1

    .line 20
    :pswitch_1
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    .line 21
    move-result p0

    .line 24
    goto :goto_1

    .line 25
    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 26
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 30
    move-result p0

    .line 33
    :goto_1
    return p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public static getInt(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static getLong(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 6
    move-result-wide p0

    .line 9
    return-wide p0
    .line 10
.end method

.method public static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public static putBoolean(Ljava/lang/Object;JZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 4
    sget-boolean v2, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    if-eqz v2, :cond_0

    .line 12
    int-to-byte p3, p3

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    .line 15
    goto :goto_1

    .line 18
    :cond_0
    int-to-byte p3, p3

    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    .line 20
    goto :goto_1

    .line 23
    :pswitch_1
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 26
    goto :goto_1

    .line 29
    :goto_0
    if-eqz v2, :cond_1

    .line 30
    int-to-byte p3, p3

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    .line 33
    goto :goto_1

    .line 36
    :cond_1
    int-to-byte p3, p3

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    .line 38
    :goto_1
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 42
.end method

.method public static putByte([BJB)V
    .locals 3

    .line 1
    sget-wide v0, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 2
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 5
    iget p2, p1, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 7
    sget-boolean v2, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    .line 9
    packed-switch p2, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    if-eqz v2, :cond_0

    .line 15
    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    .line 17
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    .line 21
    goto :goto_1

    .line 24
    :pswitch_1
    iget-object p1, p1, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 25
    invoke-virtual {p1, p0, v0, v1, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 27
    goto :goto_1

    .line 30
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    .line 33
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    .line 37
    :goto_1
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 42
.end method

.method public static putByteBigEndian(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    and-long/2addr v0, p1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    .line 5
    move-result v2

    .line 8
    long-to-int p1, p1

    .line 9
    not-int p1, p1

    .line 10
    and-int/lit8 p1, p1, 0x3

    .line 11
    shl-int/lit8 p1, p1, 0x3

    .line 13
    const/16 p2, 0xff

    .line 15
    shl-int v3, p2, p1

    .line 17
    not-int v3, v3

    .line 19
    and-int/2addr v2, v3

    .line 20
    and-int/2addr p2, p3

    .line 21
    shl-int p1, p2, p1

    .line 22
    or-int/2addr p1, v2

    .line 24
    invoke-static {p1, v0, v1, p0}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 25
    return-void
    .line 28
.end method

.method public static putByteLittleEndian(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    and-long/2addr v0, p1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    .line 5
    move-result v2

    .line 8
    long-to-int p1, p1

    .line 9
    and-int/lit8 p1, p1, 0x3

    .line 10
    shl-int/lit8 p1, p1, 0x3

    .line 12
    const/16 p2, 0xff

    .line 14
    shl-int v3, p2, p1

    .line 16
    not-int v3, v3

    .line 18
    and-int/2addr v2, v3

    .line 19
    and-int/2addr p2, p3

    .line 20
    shl-int p1, p2, p1

    .line 21
    or-int/2addr p1, v2

    .line 23
    invoke-static {p1, v0, v1, p0}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 24
    return-void
    .line 27
.end method

.method public static putDouble(Ljava/lang/Object;JD)V
    .locals 14

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 10
    move-result-wide v6

    .line 13
    iget-object v2, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 14
    move-object v3, p0

    .line 16
    move-wide v4, p1

    .line 17
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 18
    goto :goto_1

    .line 21
    :pswitch_1
    iget-object v8, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 22
    move-object v9, p0

    .line 24
    move-wide v10, p1

    .line 25
    move-wide/from16 v12, p3

    .line 26
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 28
    goto :goto_1

    .line 31
    :goto_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 32
    move-result-wide v4

    .line 35
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 36
    move-object v1, p0

    .line 38
    move-wide v2, p1

    .line 39
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 40
    :goto_1
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 44
.end method

.method public static putFloat(Ljava/lang/Object;JF)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 4
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 12
    move-result p3

    .line 15
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 16
    goto :goto_1

    .line 19
    :pswitch_1
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 20
    goto :goto_1

    .line 23
    :goto_0
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 24
    move-result p3

    .line 27
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 28
    :goto_1
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 32
.end method

.method public static putInt(IJLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v0, p3, p1, p2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 6
    return-void
    .line 9
.end method

.method public static putObject(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 2
    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method
