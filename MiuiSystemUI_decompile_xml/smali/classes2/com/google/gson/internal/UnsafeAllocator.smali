.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;


# direct methods
.method public static -$$Nest$smassertInstantiable(Ljava/lang/Class;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 9
    const-string v1, "UnsafeAllocator is used for non-instantiable type: "

    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 17
    throw v0
    .line 20
.end method

.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "newInstance"

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    const-string/jumbo v4, "sun.misc.Unsafe"

    .line 7
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v4

    .line 13
    const-string/jumbo v5, "theUnsafe"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 17
    move-result-object v5

    .line 20
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 21
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 27
    const-string v6, "allocateInstance"

    .line 28
    new-array v7, v3, [Ljava/lang/Class;

    .line 30
    const-class v8, Ljava/lang/Class;

    .line 32
    aput-object v8, v7, v2

    .line 34
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v4

    .line 39
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$1;

    .line 40
    invoke-direct {v6, v4, v5}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 45
    :catch_0
    const/4 v4, 0x2

    .line 46
    :try_start_1
    const-class v5, Ljava/io/ObjectStreamClass;

    .line 47
    const-string v6, "getConstructorId"

    .line 49
    new-array v7, v3, [Ljava/lang/Class;

    .line 51
    const-class v8, Ljava/lang/Class;

    .line 53
    aput-object v8, v7, v2

    .line 55
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    move-result-object v5

    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    new-array v6, v3, [Ljava/lang/Object;

    .line 64
    const-class v7, Ljava/lang/Object;

    .line 66
    aput-object v7, v6, v2

    .line 68
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v1

    .line 79
    const-class v5, Ljava/io/ObjectStreamClass;

    .line 80
    new-array v6, v4, [Ljava/lang/Class;

    .line 82
    const-class v7, Ljava/lang/Class;

    .line 84
    aput-object v7, v6, v2

    .line 86
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 88
    aput-object v7, v6, v3

    .line 90
    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    move-result-object v5

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$2;

    .line 99
    invoke-direct {v6, v1, v5}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(ILjava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    goto :goto_0

    .line 104
    :catch_1
    :try_start_2
    const-class v1, Ljava/io/ObjectInputStream;

    .line 105
    new-array v4, v4, [Ljava/lang/Class;

    .line 107
    const-class v5, Ljava/lang/Class;

    .line 109
    aput-object v5, v4, v2

    .line 111
    const-class v2, Ljava/lang/Class;

    .line 113
    aput-object v2, v4, v3

    .line 115
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    move-result-object v0

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 121
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$3;

    .line 124
    invoke-direct {v6, v0}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    goto :goto_0

    .line 129
    :catch_2
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$4;

    .line 130
    invoke-direct {v6}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    .line 132
    :goto_0
    sput-object v6, Lcom/google/gson/internal/UnsafeAllocator;->INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;

    .line 135
    return-void
    .line 137
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.end method
