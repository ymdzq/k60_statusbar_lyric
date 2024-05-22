.class public abstract Lkotlin/text/StringsKt__IndentKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    .line 8
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    goto :goto_1

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 18
    :goto_0
    if-eqz p2, :cond_2

    .line 20
    check-cast p1, Ljava/lang/CharSequence;

    .line 22
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24
    goto :goto_1

    .line 27
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    .line 28
    if-eqz p2, :cond_3

    .line 30
    check-cast p1, Ljava/lang/Character;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 34
    move-result p1

    .line 37
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 38
    goto :goto_1

    .line 41
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 46
    :goto_1
    return-void
    .line 49
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v3, :cond_1

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    move-object v5, v3

    .line 26
    check-cast v5, Ljava/lang/String;

    .line 27
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v5

    .line 32
    xor-int/2addr v4, v5

    .line 33
    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 42
    move-result v3

    .line 45
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v1

    .line 52
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 56
    const/4 v5, 0x0

    .line 57
    if-eqz v3, :cond_5

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/String;

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 66
    move-result v6

    .line 69
    :goto_2
    const/4 v7, -0x1

    .line 70
    if-ge v5, v6, :cond_3

    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 73
    move-result v8

    .line 76
    invoke-static {v8}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    .line 77
    move-result v8

    .line 80
    xor-int/2addr v8, v4

    .line 81
    if-eqz v8, :cond_2

    .line 82
    goto :goto_3

    .line 84
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 85
    goto :goto_2

    .line 87
    :cond_3
    move v5, v7

    .line 88
    :goto_3
    if-ne v5, v7, :cond_4

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 91
    move-result v5

    .line 94
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_1

    .line 102
    :cond_5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    .line 103
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/Integer;

    .line 107
    if-eqz v1, :cond_6

    .line 109
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v1

    .line 114
    goto :goto_4

    .line 115
    :cond_6
    move v1, v5

    .line 116
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 117
    move-result p0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 121
    move-result v2

    .line 124
    mul-int/2addr v2, v5

    .line 125
    add-int/2addr v2, p0

    .line 126
    sget-object p0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    .line 127
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 129
    move-result v3

    .line 132
    new-instance v6, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object v0

    .line 141
    move v7, v5

    .line 142
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result v8

    .line 146
    if-eqz v8, :cond_f

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object v8

    .line 152
    add-int/lit8 v9, v7, 0x1

    .line 153
    const/4 v10, 0x0

    .line 155
    if-ltz v7, :cond_e

    .line 156
    check-cast v8, Ljava/lang/String;

    .line 158
    if-eqz v7, :cond_7

    .line 160
    if-ne v7, v3, :cond_8

    .line 162
    :cond_7
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 164
    move-result v7

    .line 167
    if-eqz v7, :cond_8

    .line 168
    goto :goto_8

    .line 170
    :cond_8
    if-ltz v1, :cond_9

    .line 171
    move v7, v4

    .line 173
    goto :goto_6

    .line 174
    :cond_9
    move v7, v5

    .line 175
    :goto_6
    if-eqz v7, :cond_d

    .line 176
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 178
    move-result v7

    .line 181
    if-le v1, v7, :cond_a

    .line 182
    goto :goto_7

    .line 184
    :cond_a
    move v7, v1

    .line 185
    :goto_7
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 186
    move-result-object v7

    .line 189
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    move-result-object v7

    .line 193
    move-object v10, v7

    .line 194
    check-cast v10, Ljava/lang/String;

    .line 195
    if-nez v10, :cond_b

    .line 197
    move-object v10, v8

    .line 199
    :cond_b
    :goto_8
    if-eqz v10, :cond_c

    .line 200
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_c
    move v7, v9

    .line 205
    goto :goto_5

    .line 206
    :cond_d
    const-string p0, "Requested character count "

    .line 207
    const-string v0, " is less than zero."

    .line 209
    invoke-static {p0, v1, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object p0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 217
    move-result-object p0

    .line 220
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 221
    throw v0

    .line 224
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 225
    throw v10

    .line 228
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    const-string v0, "\n"

    .line 234
    invoke-static {v6, p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object p0

    .line 242
    return-object p0
    .line 243
.end method

.method public static trimMargin$default(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    const-string/jumbo v0, "|"

    .line 2
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    move-result v1

    .line 8
    xor-int/lit8 v1, v1, 0x1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result p0

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    mul-int/2addr v2, v3

    .line 26
    add-int/2addr v2, p0

    .line 27
    sget-object p0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    .line 28
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 30
    move-result v4

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v1

    .line 42
    move v6, v3

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v7

    .line 47
    if-eqz v7, :cond_a

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v7

    .line 53
    add-int/lit8 v8, v6, 0x1

    .line 54
    const/4 v9, 0x0

    .line 56
    if-ltz v6, :cond_9

    .line 57
    check-cast v7, Ljava/lang/String;

    .line 59
    if-eqz v6, :cond_0

    .line 61
    if-ne v6, v4, :cond_1

    .line 63
    :cond_0
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v6

    .line 68
    if-eqz v6, :cond_1

    .line 69
    goto :goto_4

    .line 71
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 72
    move-result v6

    .line 75
    move v10, v3

    .line 76
    :goto_1
    const/4 v11, -0x1

    .line 77
    if-ge v10, v6, :cond_3

    .line 78
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    .line 80
    move-result v12

    .line 83
    invoke-static {v12}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    .line 84
    move-result v12

    .line 87
    xor-int/lit8 v12, v12, 0x1

    .line 88
    if-eqz v12, :cond_2

    .line 90
    goto :goto_2

    .line 92
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 93
    goto :goto_1

    .line 95
    :cond_3
    move v10, v11

    .line 96
    :goto_2
    if-ne v10, v11, :cond_4

    .line 97
    goto :goto_3

    .line 99
    :cond_4
    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 100
    move-result v6

    .line 103
    if-eqz v6, :cond_5

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 106
    move-result v6

    .line 109
    add-int/2addr v6, v10

    .line 110
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    move-result-object v9

    .line 114
    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    .line 115
    invoke-interface {p0, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object v6

    .line 120
    move-object v9, v6

    .line 121
    check-cast v9, Ljava/lang/String;

    .line 122
    if-nez v9, :cond_7

    .line 124
    :cond_6
    move-object v9, v7

    .line 126
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 127
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_8
    move v6, v8

    .line 132
    goto :goto_0

    .line 133
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 134
    throw v9

    .line 137
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 140
    const-string v0, "\n"

    .line 143
    invoke-static {v5, p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string v0, "marginPrefix must be non-blank string."

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p0
    .line 164
.end method
