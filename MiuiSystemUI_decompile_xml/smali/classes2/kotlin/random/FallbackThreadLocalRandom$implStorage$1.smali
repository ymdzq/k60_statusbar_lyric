.class public final Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;
.super Ljava/lang/ThreadLocal;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/Random;

    .line 2
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
