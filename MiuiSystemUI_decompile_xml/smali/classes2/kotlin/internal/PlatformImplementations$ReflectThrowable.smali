.class public abstract Lkotlin/internal/PlatformImplementations$ReflectThrowable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final addSuppressed:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Ljava/lang/Throwable;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 4
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/4 v5, 0x0

    .line 11
    if-ge v4, v2, :cond_3

    .line 12
    aget-object v6, v1, v4

    .line 14
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 16
    move-result-object v7

    .line 19
    const-string v8, "addSuppressed"

    .line 20
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v7

    .line 25
    if-eqz v7, :cond_1

    .line 26
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 28
    move-result-object v7

    .line 31
    array-length v8, v7

    .line 32
    const/4 v9, 0x1

    .line 33
    if-ne v8, v9, :cond_0

    .line 34
    aget-object v5, v7, v3

    .line 36
    :cond_0
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    move v9, v3

    .line 45
    :goto_1
    if-eqz v9, :cond_2

    .line 46
    move-object v5, v6

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    :goto_2
    sput-object v5, Lkotlin/internal/PlatformImplementations$ReflectThrowable;->addSuppressed:Ljava/lang/reflect/Method;

    .line 53
    array-length v0, v1

    .line 55
    :goto_3
    if-ge v3, v0, :cond_5

    .line 56
    aget-object v2, v1, v3

    .line 58
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 63
    const-string v4, "getSuppressed"

    .line 64
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    goto :goto_4

    .line 72
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_3

    .line 75
    :cond_5
    :goto_4
    return-void
    .line 76
.end method
