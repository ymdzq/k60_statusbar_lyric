.class public abstract Lkotlin/collections/CollectionsKt___CollectionsKt;
.super Lkotlin/collections/CollectionsKt__ReversedViewsKt;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/util/Collection;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    check-cast p0, Ljava/util/List;

    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 28
    move v0, v1

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_4

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    if-ltz v0, :cond_3

    .line 40
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    move p0, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 53
    const/4 p0, 0x0

    .line 56
    throw p0

    .line 57
    :cond_4
    const/4 p0, -0x1

    .line 58
    :goto_1
    if-ltz p0, :cond_5

    .line 59
    const/4 v1, 0x1

    .line 61
    :cond_5
    return v1
    .line 62
.end method

.method public static final distinct(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public static final drop(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    if-eqz v2, :cond_d

    .line 9
    if-nez p1, :cond_1

    .line 11
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    instance-of v2, p0, Ljava/util/Collection;

    .line 18
    if-eqz v2, :cond_9

    .line 20
    move-object v2, p0

    .line 22
    check-cast v2, Ljava/util/Collection;

    .line 23
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 25
    move-result v3

    .line 28
    sub-int/2addr v3, p1

    .line 29
    if-gtz v3, :cond_2

    .line 30
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 32
    return-object p0

    .line 34
    :cond_2
    if-ne v3, v1, :cond_6

    .line 35
    instance-of p1, p0, Ljava/util/List;

    .line 37
    if-eqz p1, :cond_3

    .line 39
    check-cast p0, Ljava/util/List;

    .line 41
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 61
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move-object p0, p1

    .line 73
    :goto_2
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 74
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 79
    const-string p1, "Collection is empty."

    .line 81
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 86
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    instance-of v3, p0, Ljava/util/List;

    .line 92
    if-eqz v3, :cond_a

    .line 94
    instance-of v0, p0, Ljava/util/RandomAccess;

    .line 96
    if-eqz v0, :cond_7

    .line 98
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 100
    move-result v0

    .line 103
    :goto_3
    if-ge p1, v0, :cond_8

    .line 104
    move-object v2, p0

    .line 106
    check-cast v2, Ljava/util/List;

    .line 107
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 p1, p1, 0x1

    .line 116
    goto :goto_3

    .line 118
    :cond_7
    check-cast p0, Ljava/util/List;

    .line 119
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 121
    move-result-object p0

    .line 124
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result p1

    .line 128
    if-eqz p1, :cond_8

    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object p1

    .line 134
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto :goto_4

    .line 138
    :cond_8
    return-object v1

    .line 139
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 140
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    :cond_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    move-result-object p0

    .line 148
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v2

    .line 152
    if-eqz v2, :cond_c

    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object v2

    .line 158
    if-lt v0, p1, :cond_b

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_5

    .line 164
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 165
    goto :goto_5

    .line 167
    :cond_c
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;

    .line 168
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_d
    const-string p0, "Requested element count "

    .line 173
    const-string v0, " is less than zero."

    .line 175
    invoke-static {p0, p1, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 180
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 183
    move-result-object p0

    .line 186
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p1
    .line 190
.end method

.method public static final elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/util/List;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/util/List;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;

    .line 13
    invoke-direct {v1, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;-><init>(I)V

    .line 15
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    check-cast p0, Ljava/util/List;

    .line 21
    if-ltz p1, :cond_1

    .line 23
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 25
    move-result v0

    .line 28
    if-gt p1, v0, :cond_1

    .line 29
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    throw v2

    .line 43
    :cond_2
    if-ltz p1, :cond_5

    .line 44
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_4

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    add-int/lit8 v4, v0, 0x1

    .line 61
    if-ne p1, v0, :cond_3

    .line 63
    move-object p0, v3

    .line 65
    :goto_1
    return-object p0

    .line 66
    :cond_3
    move v0, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    throw v2

    .line 76
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    throw v2
    .line 84
.end method

.method public static final elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/List;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/util/List;

    .line 6
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    if-gez p1, :cond_1

    .line 14
    return-object v0

    .line 16
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    add-int/lit8 v3, v1, 0x1

    .line 32
    if-ne p1, v1, :cond_2

    .line 34
    return-object v2

    .line 36
    :cond_2
    move v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-object v0
    .line 39
.end method

.method public static final first(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 14
    const-string v0, "List is empty."

    .line 16
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
    .line 21
.end method

.method public static final firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 6
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final firstOrNull(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getOrNull(ILjava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 4
    move-result v0

    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
    .line 16
.end method

.method public static final joinTo(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object p0

    .line 8
    const/4 p3, 0x0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    add-int/lit8 p3, p3, 0x1

    .line 20
    const/4 v1, 0x1

    .line 22
    if-le p3, v1, :cond_0

    .line 23
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 25
    :cond_0
    if-ltz p5, :cond_1

    .line 28
    if-gt p3, p5, :cond_2

    .line 30
    :cond_1
    invoke-static {p1, v0, p7}, Lkotlin/text/StringsKt__IndentKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    if-ltz p5, :cond_3

    .line 36
    if-le p3, p5, :cond_3

    .line 38
    invoke-interface {p1, p6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 40
    :cond_3
    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 43
    return-void
    .line 46
.end method

.method public static synthetic joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .locals 8

    .line 1
    const-string v4, ""

    .line 2
    const/4 v5, -0x1

    .line 4
    const-string v6, "..."

    .line 5
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, v4

    .line 11
    invoke-static/range {v0 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)V

    .line 12
    return-void
    .line 15
.end method

.method public static joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;
    .locals 8

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string p1, ", "

    .line 6
    :cond_0
    move-object v2, p1

    .line 8
    and-int/lit8 p1, p5, 0x2

    .line 9
    const-string v0, ""

    .line 11
    if-eqz p1, :cond_1

    .line 13
    move-object v3, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object v3, p2

    .line 17
    :goto_0
    and-int/lit8 p1, p5, 0x4

    .line 18
    if-eqz p1, :cond_2

    .line 20
    move-object v4, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v4, p3

    .line 24
    :goto_1
    and-int/lit8 p1, p5, 0x8

    .line 25
    if-eqz p1, :cond_3

    .line 27
    const/4 p1, -0x1

    .line 29
    goto :goto_2

    .line 30
    :cond_3
    const/4 p1, 0x0

    .line 31
    :goto_2
    move v5, p1

    .line 32
    and-int/lit8 p1, p5, 0x10

    .line 33
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_4

    .line 36
    const-string p1, "..."

    .line 38
    move-object v6, p1

    .line 40
    goto :goto_3

    .line 41
    :cond_4
    move-object v6, p2

    .line 42
    :goto_3
    and-int/lit8 p1, p5, 0x20

    .line 43
    if-eqz p1, :cond_5

    .line 45
    move-object v7, p2

    .line 47
    goto :goto_4

    .line 48
    :cond_5
    move-object v7, p4

    .line 49
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    move-object v0, p0

    .line 55
    move-object v1, p1

    .line 56
    invoke-static/range {v0 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    return-object p0
    .line 64
.end method

.method public static final last(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 8
    move-result v0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 17
    const-string v0, "List is empty."

    .line 19
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
    .line 24
.end method

.method public static final maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Number;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 20
    move-result v0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Number;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 36
    move-result v1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 40
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    move-result-object p0

    .line 48
    return-object p0
    .line 49
.end method

.method public static final minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Comparable;

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Comparable;

    .line 30
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 32
    move-result v2

    .line 35
    if-lez v2, :cond_1

    .line 36
    move-object v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v0
    .line 40
.end method

.method public static final minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 4
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-nez v2, :cond_1

    .line 28
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    move v2, v4

    .line 36
    move v4, v1

    .line 37
    :cond_1
    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    return-object v0
    .line 44
.end method

.method public static final plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;
    .locals 3

    .line 4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static final plus(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final sorted(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    move-result v2

    .line 13
    if-gt v2, v1, :cond_0

    .line 14
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    new-array p0, p0, [Ljava/lang/Comparable;

    .line 22
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    move-object v0, p0

    .line 28
    check-cast v0, [Ljava/lang/Comparable;

    .line 29
    array-length v2, v0

    .line 31
    if-le v2, v1, :cond_1

    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 34
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 42
    move-result-object p0

    .line 45
    move-object v0, p0

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v0

    .line 52
    if-le v0, v1, :cond_3

    .line 53
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    :cond_3
    return-object p0
    .line 58
.end method

.method public static final sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-gt v1, v2, :cond_0

    .line 14
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    new-array p0, p0, [Ljava/lang/Object;

    .line 22
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    array-length v0, p0

    .line 28
    if-le v0, v2, :cond_1

    .line 29
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 31
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 39
    move-result-object p0

    .line 42
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    return-object p0
    .line 46
.end method

.method public static final take(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    if-eqz v2, :cond_8

    .line 9
    if-nez p1, :cond_1

    .line 11
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 13
    return-object p0

    .line 15
    :cond_1
    instance-of v2, p0, Ljava/util/Collection;

    .line 16
    if-eqz v2, :cond_5

    .line 18
    move-object v2, p0

    .line 20
    check-cast v2, Ljava/util/Collection;

    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 23
    move-result v2

    .line 26
    if-lt p1, v2, :cond_2

    .line 27
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 29
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_2
    if-ne p1, v1, :cond_5

    .line 34
    instance-of p1, p0, Ljava/util/List;

    .line 36
    if-eqz p1, :cond_3

    .line 38
    check-cast p0, Ljava/util/List;

    .line 40
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 60
    :goto_1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 66
    const-string p1, "Collection is empty."

    .line 68
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 73
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p0

    .line 82
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v3

    .line 86
    if-eqz v3, :cond_7

    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/2addr v0, v1

    .line 96
    if-ne v0, p1, :cond_6

    .line 97
    :cond_7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;

    .line 99
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_8
    const-string p0, "Requested element count "

    .line 104
    const-string v0, " is less than zero."

    .line 106
    invoke-static {p0, p1, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 117
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1
    .line 121
.end method

.method public static final takeLast(ILjava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ltz p0, :cond_0

    .line 3
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-eqz v1, :cond_6

    .line 8
    if-nez p0, :cond_1

    .line 10
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 12
    return-object p0

    .line 14
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 18
    if-lt p0, v1, :cond_2

    .line 19
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_2
    if-ne p0, v0, :cond_3

    .line 26
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    instance-of v2, p1, Ljava/util/RandomAccess;

    .line 42
    if-eqz v2, :cond_4

    .line 44
    sub-int p0, v1, p0

    .line 46
    :goto_1
    if-ge p0, v1, :cond_5

    .line 48
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 p0, p0, 0x1

    .line 57
    goto :goto_1

    .line 59
    :cond_4
    sub-int/2addr v1, p0

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 61
    move-result-object p0

    .line 64
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result p1

    .line 68
    if-eqz p1, :cond_5

    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_2

    .line 78
    :cond_5
    return-object v0

    .line 79
    :cond_6
    const-string p1, "Requested element count "

    .line 80
    const-string v0, " is less than zero."

    .line 82
    invoke-static {p1, p0, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 93
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1
    .line 97
.end method

.method public static final toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    return-void
    .line 20
.end method

.method public static final toList(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    new-instance p0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    goto :goto_1

    .line 23
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    check-cast p0, Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    move-result-object p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 49
    :goto_1
    return-object p0

    .line 51
    :cond_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 52
    move-result-object p0

    .line 55
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;

    .line 56
    move-result-object p0

    .line 59
    return-object p0
    .line 60
.end method

.method public static final toMutableList(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/util/Collection;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19
    return-object v0
    .line 22
.end method

.method public static final toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    check-cast p0, Ljava/util/Collection;

    .line 8
    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19
    :goto_0
    return-object v0
    .line 22
.end method

.method public static final toSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    move-object v0, p0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    if-eq v2, v1, :cond_0

    .line 16
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 20
    move-result v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 24
    move-result v0

    .line 27
    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 28
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 31
    goto :goto_1

    .line 34
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    check-cast p0, Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    .line 41
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 55
    move-result-object v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 60
    :goto_1
    return-object v1

    .line 62
    :cond_3
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 63
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 65
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 68
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 71
    move-result p0

    .line 74
    if-eqz p0, :cond_5

    .line 75
    if-eq p0, v1, :cond_4

    .line 77
    goto :goto_2

    .line 79
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 88
    move-result-object v0

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 93
    :goto_2
    return-object v0
    .line 95
.end method

.method public static final zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 15
    move-result p0

    .line 18
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 19
    move-result p1

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result p0

    .line 26
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    new-instance v3, Lkotlin/Pair;

    .line 50
    invoke-direct {v3, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    return-object v2
    .line 59
.end method
