.class public abstract Lkotlin/collections/SetsKt__SetsKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final varargs setOf([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 3
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 5
    move-result-object p0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 10
    :goto_0
    return-object p0
    .line 12
.end method
