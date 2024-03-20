.class public abstract Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final unsafe:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public supportsUnsafeArrayOperations()Z
    .locals 9

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 5
    if-nez p0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object p0

    .line 13
    const-string v2, "objectFieldOffset"

    .line 14
    const/4 v3, 0x1

    .line 16
    new-array v4, v3, [Ljava/lang/Class;

    .line 17
    const-class v5, Ljava/lang/reflect/Field;

    .line 19
    aput-object v5, v4, v1

    .line 21
    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    const-string v2, "arrayBaseOffset"

    .line 26
    new-array v4, v3, [Ljava/lang/Class;

    .line 28
    const-class v5, Ljava/lang/Class;

    .line 30
    aput-object v5, v4, v1

    .line 32
    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    const-string v2, "arrayIndexScale"

    .line 37
    new-array v4, v3, [Ljava/lang/Class;

    .line 39
    const-class v5, Ljava/lang/Class;

    .line 41
    aput-object v5, v4, v1

    .line 43
    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    const-string v2, "getInt"

    .line 48
    const/4 v4, 0x2

    .line 50
    new-array v5, v4, [Ljava/lang/Class;

    .line 51
    aput-object v0, v5, v1

    .line 53
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 55
    aput-object v6, v5, v3

    .line 57
    invoke-virtual {p0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    const-string v2, "putInt"

    .line 62
    const/4 v5, 0x3

    .line 64
    new-array v7, v5, [Ljava/lang/Class;

    .line 65
    aput-object v0, v7, v1

    .line 67
    aput-object v6, v7, v3

    .line 69
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 71
    aput-object v8, v7, v4

    .line 73
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 75
    const-string v2, "getLong"

    .line 78
    new-array v7, v4, [Ljava/lang/Class;

    .line 80
    aput-object v0, v7, v1

    .line 82
    aput-object v6, v7, v3

    .line 84
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    const-string v2, "putLong"

    .line 89
    new-array v7, v5, [Ljava/lang/Class;

    .line 91
    aput-object v0, v7, v1

    .line 93
    aput-object v6, v7, v3

    .line 95
    aput-object v6, v7, v4

    .line 97
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    const-string v2, "getObject"

    .line 102
    new-array v7, v4, [Ljava/lang/Class;

    .line 104
    aput-object v0, v7, v1

    .line 106
    aput-object v6, v7, v3

    .line 108
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    const-string v2, "putObject"

    .line 113
    new-array v5, v5, [Ljava/lang/Class;

    .line 115
    aput-object v0, v5, v1

    .line 117
    aput-object v6, v5, v3

    .line 119
    aput-object v0, v5, v4

    .line 121
    invoke-virtual {p0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    return v3

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    invoke-static {p0}, Lcom/google/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 128
    return v1
    .line 131
.end method
