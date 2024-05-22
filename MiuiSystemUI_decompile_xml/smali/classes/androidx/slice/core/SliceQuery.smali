.class public abstract Landroidx/slice/core/SliceQuery;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 1

    .line 1
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 5
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    new-instance p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 1

    .line 2
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, p3, v2}, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v1, p0, v0}, Landroidx/slice/core/SliceQuery;->findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;Ljava/util/List;)V

    return-object v0
.end method

.method public static findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;Ljava/util/List;)V
    .locals 3

    .line 5
    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    .line 7
    invoke-virtual {p1, v0}, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->filter(Landroidx/slice/SliceItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_0

    .line 9
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v2, "slice"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "action"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    .line 14
    iget-object v0, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 15
    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;
    .locals 3

    .line 1
    :cond_0
    :goto_0
    move-object v0, p0

    .line 2
    check-cast v0, Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/slice/SliceItem;

    .line 15
    invoke-interface {p1, v0}, Landroidx/slice/core/SliceQuery$Filter;->filter(Landroidx/slice/SliceItem;)Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    return-object v0

    .line 23
    :cond_1
    if-eqz v0, :cond_0

    .line 24
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 26
    const-string/jumbo v2, "slice"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 37
    const-string v2, "action"

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 47
    move-result-object v0

    .line 50
    iget-object v0, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 51
    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 56
    :cond_3
    const/4 p0, 0x0

    .line 57
    return-object p0
    .line 58
.end method

.method public static findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 3
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    new-instance p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 2
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/4 v3, 0x0

    .line 7
    if-ge v2, v0, :cond_3

    .line 8
    aget-object v4, p0, v2

    .line 10
    invoke-static {v4, p1}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    .line 12
    move-result v5

    .line 15
    if-eqz v5, :cond_2

    .line 16
    if-eqz p2, :cond_1

    .line 18
    iget-object v5, v4, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 20
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    move v5, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 31
    :goto_2
    if-eqz v5, :cond_2

    .line 32
    invoke-static {v4, p3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 34
    move-result v5

    .line 37
    if-eqz v5, :cond_2

    .line 38
    invoke-static {v4, v3}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 40
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    return-object v4

    .line 46
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_3
    return-object v3
    .line 50
.end method

.method public static varargs hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_2

    .line 8
    aget-object v3, p1, v2

    .line 10
    invoke-virtual {p0, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 12
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_2
    return v0
    .line 23
.end method

.method public static varargs hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    aget-object v4, p1, v3

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v5

    .line 16
    if-nez v5, :cond_1

    .line 17
    invoke-virtual {p0, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 19
    move-result v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    return v2

    .line 25
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    return v0
    .line 29
.end method
