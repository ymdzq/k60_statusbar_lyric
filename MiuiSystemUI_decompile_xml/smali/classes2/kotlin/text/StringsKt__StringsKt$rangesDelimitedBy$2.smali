.class final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $delimitersList:Ljava/util/List;

.field final synthetic $ignoreCase:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    .line 2
    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    check-cast p2, Ljava/lang/Number;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p2

    .line 9
    iget-object v0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    .line 10
    iget-boolean p0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    .line 12
    const/4 v7, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p0, :cond_3

    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 18
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v2, v3, :cond_3

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    if-ne p0, v3, :cond_1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/String;

    .line 37
    const/4 v0, 0x4

    .line 39
    invoke-static {p1, p0, p2, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 40
    move-result p1

    .line 43
    if-gez p1, :cond_0

    .line 44
    goto/16 :goto_4

    .line 46
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 51
    new-instance p2, Lkotlin/Pair;

    .line 52
    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    goto/16 :goto_5

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    const-string p1, "List has more than one element."

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 66
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 67
    const-string p1, "List is empty."

    .line 69
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0

    .line 74
    :cond_3
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 75
    if-gez p2, :cond_4

    .line 77
    move p2, v1

    .line 79
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 80
    move-result v1

    .line 83
    invoke-direct {v2, p2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 84
    instance-of v1, p1, Ljava/lang/String;

    .line 87
    if-eqz v1, :cond_a

    .line 89
    iget v8, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 91
    iget v9, v2, Lkotlin/ranges/IntProgression;->step:I

    .line 93
    if-lez v9, :cond_5

    .line 95
    if-le p2, v8, :cond_6

    .line 97
    :cond_5
    if-gez v9, :cond_10

    .line 99
    if-gt v8, p2, :cond_10

    .line 101
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v10

    .line 106
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v1

    .line 110
    if-eqz v1, :cond_8

    .line 111
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v11

    .line 116
    move-object v4, v11

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    const/4 v1, 0x0

    .line 120
    move-object v5, p1

    .line 121
    check-cast v5, Ljava/lang/String;

    .line 122
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 124
    move-result v3

    .line 127
    move v2, p2

    .line 128
    move v6, p0

    .line 129
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->regionMatches(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 130
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    goto :goto_1

    .line 136
    :cond_8
    move-object v11, v7

    .line 137
    :goto_1
    check-cast v11, Ljava/lang/String;

    .line 138
    if-eqz v11, :cond_9

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object p0

    .line 145
    new-instance p2, Lkotlin/Pair;

    .line 146
    invoke-direct {p2, p0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    goto :goto_5

    .line 151
    :cond_9
    if-eq p2, v8, :cond_10

    .line 152
    add-int/2addr p2, v9

    .line 154
    goto :goto_0

    .line 155
    :cond_a
    iget v1, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 156
    iget v2, v2, Lkotlin/ranges/IntProgression;->step:I

    .line 158
    if-lez v2, :cond_b

    .line 160
    if-le p2, v1, :cond_c

    .line 162
    :cond_b
    if-gez v2, :cond_10

    .line 164
    if-gt v1, p2, :cond_10

    .line 166
    :cond_c
    :goto_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object v3

    .line 171
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v4

    .line 175
    if-eqz v4, :cond_e

    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v4

    .line 181
    move-object v5, v4

    .line 182
    check-cast v5, Ljava/lang/String;

    .line 183
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 185
    move-result v6

    .line 188
    invoke-static {v5, p1, p2, v6, p0}, Lkotlin/text/StringsKt__StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    .line 189
    move-result v5

    .line 192
    if-eqz v5, :cond_d

    .line 193
    goto :goto_3

    .line 195
    :cond_e
    move-object v4, v7

    .line 196
    :goto_3
    check-cast v4, Ljava/lang/String;

    .line 197
    if-eqz v4, :cond_f

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object p0

    .line 204
    new-instance p2, Lkotlin/Pair;

    .line 205
    invoke-direct {p2, p0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    goto :goto_5

    .line 210
    :cond_f
    if-eq p2, v1, :cond_10

    .line 211
    add-int/2addr p2, v2

    .line 213
    goto :goto_2

    .line 214
    :cond_10
    :goto_4
    move-object p2, v7

    .line 215
    :goto_5
    if-eqz p2, :cond_11

    .line 216
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 218
    move-result-object p0

    .line 221
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 222
    move-result-object p1

    .line 225
    check-cast p1, Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 228
    move-result p1

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object p1

    .line 235
    new-instance v7, Lkotlin/Pair;

    .line 236
    invoke-direct {v7, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    :cond_11
    return-object v7
    .line 241
.end method
