.class public final Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;
.super Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final supportsUnsafeArrayOperations()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    .line 7
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const-class v0, Ljava/lang/Object;

    .line 12
    invoke-super {p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    .line 14
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-result-object p0

    .line 27
    const-string v1, "getByte"

    .line 28
    const/4 v3, 0x2

    .line 30
    new-array v4, v3, [Ljava/lang/Class;

    .line 31
    aput-object v0, v4, v2

    .line 33
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 35
    const/4 v6, 0x1

    .line 37
    aput-object v5, v4, v6

    .line 38
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    const-string v1, "putByte"

    .line 43
    const/4 v4, 0x3

    .line 45
    new-array v7, v4, [Ljava/lang/Class;

    .line 46
    aput-object v0, v7, v2

    .line 48
    aput-object v5, v7, v6

    .line 50
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 52
    aput-object v8, v7, v3

    .line 54
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    const-string v1, "getBoolean"

    .line 59
    filled-new-array {v0, v5}, [Ljava/lang/Class;

    .line 61
    move-result-object v7

    .line 64
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    const-string v1, "putBoolean"

    .line 68
    new-array v7, v4, [Ljava/lang/Class;

    .line 70
    aput-object v0, v7, v2

    .line 72
    aput-object v5, v7, v6

    .line 74
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 76
    aput-object v8, v7, v3

    .line 78
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    const-string v1, "getFloat"

    .line 83
    filled-new-array {v0, v5}, [Ljava/lang/Class;

    .line 85
    move-result-object v7

    .line 88
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    const-string v1, "putFloat"

    .line 92
    new-array v7, v4, [Ljava/lang/Class;

    .line 94
    aput-object v0, v7, v2

    .line 96
    aput-object v5, v7, v6

    .line 98
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 100
    aput-object v8, v7, v3

    .line 102
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 104
    const-string v1, "getDouble"

    .line 107
    filled-new-array {v0, v5}, [Ljava/lang/Class;

    .line 109
    move-result-object v7

    .line 112
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    const-string v1, "putDouble"

    .line 116
    new-array v4, v4, [Ljava/lang/Class;

    .line 118
    aput-object v0, v4, v2

    .line 120
    aput-object v5, v4, v6

    .line 122
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 124
    aput-object v0, v4, v3

    .line 126
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    move v2, v6

    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    invoke-static {p0}, Lcom/google/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 134
    :goto_0
    return v2

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 138
.end method
