.class public final Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final access$insertPreSortedElementsWithFewestMisOrderings(Ljava/util/List;Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 21
    move v5, v0

    .line 22
    move v6, v5

    .line 23
    move v4, v1

    .line 24
    :goto_1
    if-ge v1, v3, :cond_3

    .line 25
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v7

    .line 30
    invoke-interface {p2, v2, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 31
    move-result v7

    .line 34
    if-gez v7, :cond_0

    .line 35
    const/4 v7, -0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    if-lez v7, :cond_1

    .line 39
    const/4 v7, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move v7, v0

    .line 43
    :goto_2
    add-int/2addr v5, v7

    .line 44
    if-le v5, v6, :cond_2

    .line 45
    add-int/lit8 v4, v1, 0x1

    .line 47
    move v6, v5

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_1

    .line 52
    :cond_3
    invoke-interface {p0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53
    add-int/lit8 v1, v4, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    return-void
    .line 59
.end method


# virtual methods
.method public final isSorted(Ljava/util/List;Ljava/util/Comparator;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-gt p0, v0, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    invoke-interface {p2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 28
    move-result p1

    .line 31
    if-lez p1, :cond_1

    .line 32
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    move-object p1, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v0
    .line 38
.end method
