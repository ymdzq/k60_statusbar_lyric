.class public abstract Lkotlin/collections/builders/ListBuilderKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final arrayOfUninitializedElements(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_1

    .line 7
    new-array p0, p0, [Ljava/lang/Object;

    .line 9
    return-object p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string v0, "capacity must be non-negative."

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
    .line 23
.end method

.method public static final resetRange(II[Ljava/lang/Object;)V
    .locals 1

    .line 1
    :goto_0
    if-ge p0, p1, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 4
    aput-object v0, p2, p0

    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    return-void
    .line 10
.end method
