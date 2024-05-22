.class public abstract Lkotlin/jvm/internal/TypeIntrinsics;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 1
    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMutableCollection;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "kotlin.collections.MutableCollection"

    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const/4 p0, 0x0

    .line 16
    throw p0

    .line 17
    :cond_1
    :goto_0
    :try_start_0
    check-cast p0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-class v0, Lkotlin/jvm/internal/TypeIntrinsics;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    throw p0
    .line 31
.end method

.method public static asMutableMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 1
    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMutableMap;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "kotlin.collections.MutableMap"

    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const/4 p0, 0x0

    .line 16
    throw p0

    .line 17
    :cond_1
    :goto_0
    :try_start_0
    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-class v0, Lkotlin/jvm/internal/TypeIntrinsics;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    throw p0
    .line 31
.end method

.method public static beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(ILjava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "kotlin.jvm.functions.Function"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {p1, p0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const/4 p0, 0x0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    return-void
    .line 30
.end method

.method public static isFunctionOfArity(ILjava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lkotlin/Function;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionBase;

    .line 7
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lkotlin/jvm/internal/FunctionBase;

    .line 12
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionBase;->getArity()I

    .line 14
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lkotlin/jvm/functions/Function0;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Lkotlin/jvm/functions/Function1;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    move p1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    instance-of v0, p1, Lkotlin/jvm/functions/Function2;

    .line 31
    if-eqz v0, :cond_3

    .line 33
    const/4 p1, 0x2

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    instance-of v0, p1, Lkotlin/jvm/functions/Function3;

    .line 37
    if-eqz v0, :cond_4

    .line 39
    const/4 p1, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    instance-of v0, p1, Lkotlin/jvm/functions/Function4;

    .line 43
    if-eqz v0, :cond_5

    .line 45
    const/4 p1, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_5
    instance-of v0, p1, Lkotlin/jvm/functions/Function5;

    .line 49
    if-eqz v0, :cond_6

    .line 51
    const/4 p1, 0x5

    .line 53
    goto :goto_0

    .line 54
    :cond_6
    instance-of p1, p1, Lkotlin/jvm/functions/Function6;

    .line 55
    if-eqz p1, :cond_7

    .line 57
    const/4 p1, 0x6

    .line 59
    goto :goto_0

    .line 60
    :cond_7
    const/4 p1, -0x1

    .line 61
    :goto_0
    if-ne p1, p0, :cond_8

    .line 62
    move v1, v2

    .line 64
    :cond_8
    return v1
    .line 65
.end method

.method public static throwCce(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    const-string p0, "null"

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    const-string v0, " cannot be cast to "

    .line 15
    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/ClassCastException;

    .line 21
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 23
    const-class p0, Lkotlin/jvm/internal/TypeIntrinsics;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    throw p1
    .line 35
.end method
