.class public abstract Lkotlin/text/StringsKt__StringsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsKt;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    .line 3
    const/4 v6, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Ljava/lang/String;

    .line 8
    const/4 v0, 0x2

    .line 10
    invoke-static {p0, p1, v6, v4, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 11
    move-result p0

    .line 14
    if-ltz p0, :cond_1

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result v3

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    .line 26
    move-result p0

    .line 29
    if-ltz p0, :cond_1

    .line 30
    :goto_0
    const/4 v6, 0x1

    .line 32
    :cond_1
    return v6
    .line 33
.end method

.method public static final equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_1

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public static final getLastIndex(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    move-result p0

    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    return p0
    .line 8
.end method

.method public static final indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I
    .locals 6

    .line 1
    if-nez p3, :cond_1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    move-result v3

    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v0, p1

    .line 21
    move-object v1, p2

    .line 22
    move v2, p0

    .line 23
    move v4, p3

    .line 24
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    .line 25
    move-result p0

    .line 28
    :goto_1
    return p0
    .line 29
.end method

.method public static final indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p5, :cond_2

    .line 4
    new-instance p5, Lkotlin/ranges/IntRange;

    .line 6
    if-gez p2, :cond_0

    .line 8
    move p2, v1

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result v1

    .line 14
    if-le p3, v1, :cond_1

    .line 15
    move p3, v1

    .line 17
    :cond_1
    invoke-direct {p5, p2, p3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 18
    goto :goto_0

    .line 21
    :cond_2
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    .line 22
    move-result p5

    .line 25
    if-le p2, p5, :cond_3

    .line 26
    move p2, p5

    .line 28
    :cond_3
    if-gez p3, :cond_4

    .line 29
    move p3, v1

    .line 31
    :cond_4
    new-instance p5, Lkotlin/ranges/IntProgression;

    .line 32
    invoke-direct {p5, p2, p3, v0}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 34
    :goto_0
    instance-of p2, p0, Ljava/lang/String;

    .line 37
    if-eqz p2, :cond_8

    .line 39
    instance-of p2, p1, Ljava/lang/String;

    .line 41
    if-eqz p2, :cond_8

    .line 43
    iget p2, p5, Lkotlin/ranges/IntProgression;->first:I

    .line 45
    iget p3, p5, Lkotlin/ranges/IntProgression;->last:I

    .line 47
    iget p5, p5, Lkotlin/ranges/IntProgression;->step:I

    .line 49
    if-lez p5, :cond_5

    .line 51
    if-le p2, p3, :cond_6

    .line 53
    :cond_5
    if-gez p5, :cond_c

    .line 55
    if-gt p3, p2, :cond_c

    .line 57
    :cond_6
    :goto_1
    move-object v4, p1

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    .line 62
    move-object v5, p0

    .line 63
    check-cast v5, Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 66
    move-result v3

    .line 69
    move v2, p2

    .line 70
    move v6, p4

    .line 71
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->regionMatches(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 72
    move-result v1

    .line 75
    if-eqz v1, :cond_7

    .line 76
    return p2

    .line 78
    :cond_7
    if-eq p2, p3, :cond_c

    .line 79
    add-int/2addr p2, p5

    .line 81
    goto :goto_1

    .line 82
    :cond_8
    iget p2, p5, Lkotlin/ranges/IntProgression;->first:I

    .line 83
    iget p3, p5, Lkotlin/ranges/IntProgression;->last:I

    .line 85
    iget p5, p5, Lkotlin/ranges/IntProgression;->step:I

    .line 87
    if-lez p5, :cond_9

    .line 89
    if-le p2, p3, :cond_a

    .line 91
    :cond_9
    if-gez p5, :cond_c

    .line 93
    if-gt p3, p2, :cond_c

    .line 95
    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 97
    move-result v1

    .line 100
    invoke-static {p1, p0, p2, v1, p4}, Lkotlin/text/StringsKt__StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    .line 101
    move-result v1

    .line 104
    if-eqz v1, :cond_b

    .line 105
    return p2

    .line 107
    :cond_b
    if-eq p2, p3, :cond_c

    .line 108
    add-int/2addr p2, p5

    .line 110
    goto :goto_2

    .line 111
    :cond_c
    return v0
    .line 112
.end method

.method public static indexOf$default(Ljava/lang/CharSequence;C)I
    .locals 1

    .line 1
    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public static synthetic indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    .line 2
    :cond_1
    invoke-static {p2, p0, p1, p3}, Lkotlin/text/StringsKt__StringsKt;->indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static final isBlank(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_4

    .line 7
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result v2

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 18
    instance-of v2, v0, Ljava/util/Collection;

    .line 21
    if-eqz v2, :cond_1

    .line 23
    move-object v2, v0

    .line 25
    check-cast v2, Ljava/util/Collection;

    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    :cond_0
    move p0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    move-object v2, v0

    .line 46
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 47
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 49
    move-result v2

    .line 52
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 53
    move-result v2

    .line 56
    invoke-static {v2}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    .line 57
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    move p0, v3

    .line 63
    :goto_0
    if-eqz p0, :cond_3

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    move v1, v3

    .line 67
    :cond_4
    :goto_1
    return v1
    .line 68
.end method

.method public static final lines(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "\r\n"

    .line 2
    const-string v1, "\n"

    .line 4
    const-string v2, "\r"

    .line 6
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1, v1}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/text/DelimitedRangesSequence;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;

    .line 17
    invoke-direct {v1, p0}, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    new-instance p0, Lkotlin/sequences/TransformingSequence;

    .line 22
    invoke-direct {p0, v0, v1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 24
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public static padEnd$default(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-gt v1, v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    move-result-object p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    move-result p0

    .line 32
    sub-int/2addr v1, p0

    .line 33
    const/4 p0, 0x1

    .line 34
    invoke-direct {v2, p0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 35
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 38
    move-result-object p0

    .line 41
    :goto_0
    iget-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 42
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p0}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 46
    const/16 v1, 0x20

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    move-object p0, v0

    .line 55
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    return-object p0
    .line 60
.end method

.method public static final padStart(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 15
    move-result-object p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    move-result v2

    .line 30
    sub-int/2addr p1, v2

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, v2, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 33
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 36
    move-result-object p1

    .line 39
    :goto_0
    iget-boolean v1, p1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 40
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p1}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 44
    const/16 v1, 0x30

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 53
    move-object p0, v0

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    const-string v0, "Desired length "

    .line 64
    const-string v1, " is less than zero."

    .line 66
    invoke-static {v0, p1, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    .line 75
.end method

.method public static rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/text/DelimitedRangesSequence;
    .locals 2

    .line 1
    invoke-static {p3}, Lkotlin/text/StringsKt__StringsKt;->requireNonNegativeLimit(I)V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    move-result-object p1

    .line 8
    new-instance v0, Lkotlin/text/DelimitedRangesSequence;

    .line 9
    new-instance v1, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    .line 11
    invoke-direct {v1, p1, p2}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>(Ljava/util/List;Z)V

    .line 13
    const/4 p1, 0x0

    .line 16
    invoke-direct {v0, p0, p1, p3, v1}, Lkotlin/text/DelimitedRangesSequence;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    .line 17
    return-object v0
    .line 20
.end method

.method public static final regionMatches(IIILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    if-nez p5, :cond_0

    .line 2
    invoke-virtual {p3, p0, p4, p1, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 4
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p3

    .line 9
    move v1, p5

    .line 10
    move v2, p0

    .line 11
    move-object v3, p4

    .line 12
    move v4, p1

    .line 13
    move v5, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 15
    move-result p0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public static final regionMatchesImpl(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p2, :cond_3

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    move-result v1

    .line 8
    sub-int/2addr v1, p3

    .line 9
    if-ltz v1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result v1

    .line 15
    sub-int/2addr v1, p3

    .line 16
    if-le p2, v1, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    move v1, v0

    .line 20
    :goto_0
    if-ge v1, p3, :cond_2

    .line 21
    add-int v2, v0, v1

    .line 23
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    move-result v2

    .line 28
    add-int v3, p2, v1

    .line 29
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    move-result v3

    .line 34
    invoke-static {v2, v3, p4}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    .line 35
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    return v0

    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_3
    :goto_1
    return v0
    .line 47
.end method

.method public static replace$default(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x7c

    const/16 v1, 0x2502

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-ltz v5, :cond_4

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v5, v0

    .line 6
    :cond_2
    invoke-virtual {v4, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, v1, v2

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    add-int/2addr v1, v3

    .line 8
    invoke-static {v1, p0, p1, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v1

    if-gtz v1, :cond_2

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p0, v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public static final requireNonNegativeLimit(I)V
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
    return-void

    .line 9
    :cond_1
    const-string v0, "Limit must be non-negative, but was "

    .line 10
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
    .line 25
.end method

.method public static split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne v0, v2, :cond_3

    .line 5
    aget-object v0, p1, v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move v2, v1

    .line 16
    :goto_0
    if-nez v2, :cond_3

    .line 17
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->requireNonNegativeLimit(I)V

    .line 19
    invoke-static {v1, p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    .line 22
    move-result p1

    .line 25
    const/4 v2, -0x1

    .line 26
    if-eq p1, v2, :cond_2

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    const/16 v4, 0xa

    .line 31
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    move v4, v1

    .line 36
    :cond_1
    invoke-interface {p0, v4, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 37
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    move-result v4

    .line 51
    add-int/2addr v4, p1

    .line 52
    invoke-static {v4, p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    .line 53
    move-result p1

    .line 56
    if-ne p1, v2, :cond_1

    .line 57
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 59
    move-result p1

    .line 62
    invoke-interface {p0, v4, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 79
    move-result-object v3

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-static {p0, p1, v1, v1}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/text/DelimitedRangesSequence;

    .line 84
    move-result-object p1

    .line 87
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;

    .line 88
    invoke-direct {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;-><init>(Lkotlin/text/DelimitedRangesSequence;)V

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    .line 93
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 95
    move-result p1

    .line 98
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-virtual {v0}, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p1

    .line 105
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 115
    check-cast v0, Lkotlin/ranges/IntRange;

    .line 116
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 121
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_1

    .line 125
    :cond_4
    :goto_2
    return-object v3
    .line 126
.end method

.method public static final substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p1, Lkotlin/ranges/IntProgression;->first:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 11
    iget p1, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result p1

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
    .line 32
.end method

.method public static substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v1, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    move-result p1

    .line 15
    add-int/2addr p1, v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
    .line 25
.end method

.method public static final trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-gt v2, v0, :cond_4

    .line 10
    if-nez v3, :cond_0

    .line 12
    move v4, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v4, v0

    .line 16
    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    move-result v4

    .line 20
    invoke-static {v4}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    .line 21
    move-result v4

    .line 24
    if-nez v3, :cond_2

    .line 25
    if-nez v4, :cond_1

    .line 27
    move v3, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    if-nez v4, :cond_3

    .line 34
    goto :goto_2

    .line 36
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_4
    :goto_2
    add-int/2addr v0, v1

    .line 40
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 41
    move-result-object p0

    .line 44
    return-object p0
    .line 45
.end method
