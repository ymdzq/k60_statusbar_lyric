.class public final Lkotlin/coroutines/CombinedContext;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext;
.implements Ljava/io/Serializable;


# instance fields
.field private final element:Lkotlin/coroutines/CoroutineContext$Element;

.field private final left:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 5
    iput-object p1, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 7
    return-void
    .line 9
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkotlin/coroutines/CombinedContext;->size()I

    .line 2
    move-result v0

    .line 5
    new-array v1, v0, [Lkotlin/coroutines/CoroutineContext;

    .line 6
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 10
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    new-instance v4, Lkotlin/coroutines/CombinedContext$writeReplace$1;

    .line 15
    invoke-direct {v4, v1, v2}, Lkotlin/coroutines/CombinedContext$writeReplace$1;-><init>([Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 17
    invoke-virtual {p0, v3, v4}, Lkotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 20
    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 23
    if-ne p0, v0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-eqz p0, :cond_1

    .line 30
    new-instance p0, Lkotlin/coroutines/CombinedContext$Serialized;

    .line 32
    invoke-direct {p0, v1}, Lkotlin/coroutines/CombinedContext$Serialized;-><init>([Lkotlin/coroutines/CoroutineContext;)V

    .line 34
    return-object p0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    const-string v0, "Check failed."

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
    .line 49
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-eq p0, p1, :cond_2

    .line 2
    instance-of v0, p1, Lkotlin/coroutines/CombinedContext;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Lkotlin/coroutines/CombinedContext;

    .line 9
    invoke-virtual {p1}, Lkotlin/coroutines/CombinedContext;->size()I

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0}, Lkotlin/coroutines/CombinedContext;->size()I

    .line 15
    move-result v2

    .line 18
    if-ne v0, v2, :cond_3

    .line 19
    :goto_0
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 21
    invoke-interface {v0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 23
    move-result-object v2

    .line 26
    invoke-virtual {p1, v2}, Lkotlin/coroutines/CombinedContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 27
    move-result-object v2

    .line 30
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    move p0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 39
    instance-of v0, p0, Lkotlin/coroutines/CombinedContext;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    check-cast p0, Lkotlin/coroutines/CombinedContext;

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    check-cast p0, Lkotlin/coroutines/CoroutineContext$Element;

    .line 48
    invoke-interface {p0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lkotlin/coroutines/CombinedContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 54
    move-result-object p1

    .line 57
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result p0

    .line 61
    :goto_1
    if-eqz p0, :cond_3

    .line 62
    :cond_2
    const/4 v1, 0x1

    .line 64
    :cond_3
    return v1
    .line 65
.end method

.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 2
    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public final get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 2
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v0

    .line 10
    :cond_0
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 11
    instance-of v0, p0, Lkotlin/coroutines/CombinedContext;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    check-cast p0, Lkotlin/coroutines/CombinedContext;

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result v0

    .line 7
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
    .line 15
.end method

.method public final minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 2
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 10
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 13
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 15
    move-result-object p1

    .line 18
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 19
    if-ne p1, v0, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 24
    if-ne p1, v0, :cond_2

    .line 26
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    .line 31
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$Element;

    .line 33
    invoke-direct {v0, p0, p1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 35
    move-object p0, v0

    .line 38
    :goto_0
    return-object p0
    .line 39
.end method

.method public final plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final size()I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    :goto_0
    iget-object p0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 3
    instance-of v1, p0, Lkotlin/coroutines/CombinedContext;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    check-cast p0, Lkotlin/coroutines/CombinedContext;

    .line 9
    goto :goto_1

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_1
    if-nez p0, :cond_1

    .line 13
    return v0

    .line 15
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 16
    goto :goto_0
    .line 18
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "["

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, ""

    .line 9
    sget-object v2, Lkotlin/coroutines/CombinedContext$toString$1;->INSTANCE:Lkotlin/coroutines/CombinedContext$toString$1;

    .line 11
    invoke-virtual {p0, v1, v2}, Lkotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const/16 p0, 0x5d

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method
