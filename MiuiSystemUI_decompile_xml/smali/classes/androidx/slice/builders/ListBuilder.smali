.class public final Landroidx/slice/builders/ListBuilder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mImpl:Landroidx/slice/builders/impl/ListBuilder;

.field public final mSpecs:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 5
    invoke-direct {v0, p2}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 7
    sget-object v1, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    sget-object p2, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    .line 16
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    const-class v1, Landroid/app/slice/SliceManager;

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Landroid/app/slice/SliceManager;

    .line 28
    invoke-virtual {p1, p2}, Landroid/app/slice/SliceManager;->getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;

    .line 30
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroidx/slice/SliceConvert;->wrap(Ljava/util/Set;)Landroidx/collection/ArraySet;

    .line 34
    move-result-object p1

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    .line 38
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    move-object p1, p2

    .line 43
    :goto_0
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder;->mSpecs:Ljava/util/List;

    .line 44
    sget-object p1, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    .line 46
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    .line 48
    move-result p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    new-instance p2, Landroidx/slice/builders/impl/ListBuilderImpl;

    .line 54
    new-instance v1, Landroidx/slice/SystemClock;

    .line 56
    invoke-direct {v1}, Landroidx/slice/SystemClock;-><init>()V

    .line 58
    invoke-direct {p2, v0, p1, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/SystemClock;)V

    .line 61
    goto :goto_1

    .line 64
    :cond_1
    sget-object p1, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    .line 65
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    .line 67
    move-result p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    new-instance p2, Landroidx/slice/builders/impl/ListBuilderImpl;

    .line 73
    new-instance v1, Landroidx/slice/SystemClock;

    .line 75
    invoke-direct {v1}, Landroidx/slice/SystemClock;-><init>()V

    .line 77
    invoke-direct {p2, v0, p1, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/SystemClock;)V

    .line 80
    goto :goto_1

    .line 83
    :cond_2
    sget-object p1, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    .line 84
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    .line 86
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    new-instance p2, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    .line 92
    invoke-direct {p2, v0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    const/4 p2, 0x0

    .line 98
    :goto_1
    if-eqz p2, :cond_4

    .line 99
    iput-object p2, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 101
    invoke-interface {p2}, Landroidx/slice/builders/impl/ListBuilder;->setTtl()V

    .line 103
    return-void

    .line 106
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    const-string p1, "No valid specs found"

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    throw p0
    .line 114
.end method


# virtual methods
.method public final checkCompatible(Landroidx/slice/SliceSpec;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder;->mSpecs:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/slice/SliceSpec;

    .line 16
    iget-object v4, v3, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    .line 18
    iget-object v5, p1, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v4

    .line 25
    const/4 v5, 0x1

    .line 26
    if-nez v4, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    iget v3, v3, Landroidx/slice/SliceSpec;->mRevision:I

    .line 30
    iget v4, p1, Landroidx/slice/SliceSpec;->mRevision:I

    .line 32
    if-lt v3, v4, :cond_1

    .line 34
    move v3, v5

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    move v3, v1

    .line 38
    :goto_2
    if-eqz v3, :cond_2

    .line 39
    move v1, v5

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    :goto_3
    return v1
    .line 46
.end method
