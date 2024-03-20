.class public final Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    .line 1
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1c

    .line 5
    if-nez p0, :cond_0

    .line 7
    goto/16 :goto_b

    .line 9
    :cond_0
    if-ltz p2, :cond_1c

    .line 11
    if-gez p3, :cond_1

    .line 13
    goto/16 :goto_b

    .line 15
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    move-result v1

    .line 20
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v1, v4, :cond_3

    .line 27
    if-eq v2, v4, :cond_3

    .line 29
    if-eq v1, v2, :cond_2

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    move v5, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    move v5, v3

    .line 36
    :goto_1
    if-eqz v5, :cond_4

    .line 37
    goto/16 :goto_b

    .line 39
    :cond_4
    if-eqz p4, :cond_19

    .line 41
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result p2

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 47
    move-result p4

    .line 50
    if-ltz v1, :cond_e

    .line 51
    if-ge p4, v1, :cond_5

    .line 53
    goto :goto_4

    .line 55
    :cond_5
    if-gez p2, :cond_6

    .line 56
    goto :goto_4

    .line 58
    :cond_6
    :goto_2
    move p4, v0

    .line 59
    :goto_3
    if-nez p2, :cond_7

    .line 60
    goto :goto_5

    .line 62
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 63
    if-gez v1, :cond_9

    .line 65
    if-eqz p4, :cond_8

    .line 67
    goto :goto_4

    .line 69
    :cond_8
    move v1, v0

    .line 70
    goto :goto_5

    .line 71
    :cond_9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 72
    move-result v5

    .line 75
    if-eqz p4, :cond_b

    .line 76
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 78
    move-result p4

    .line 81
    if-nez p4, :cond_a

    .line 82
    goto :goto_4

    .line 84
    :cond_a
    add-int/lit8 p2, p2, -0x1

    .line 85
    goto :goto_2

    .line 87
    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 88
    move-result v6

    .line 91
    if-nez v6, :cond_c

    .line 92
    add-int/lit8 p2, p2, -0x1

    .line 94
    goto :goto_3

    .line 96
    :cond_c
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 97
    move-result p4

    .line 100
    if-eqz p4, :cond_d

    .line 101
    goto :goto_4

    .line 103
    :cond_d
    move p4, v3

    .line 104
    goto :goto_3

    .line 105
    :cond_e
    :goto_4
    move v1, v4

    .line 106
    :goto_5
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 107
    move-result p2

    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 111
    move-result p3

    .line 114
    if-ltz v2, :cond_17

    .line 115
    if-ge p3, v2, :cond_f

    .line 117
    goto :goto_8

    .line 119
    :cond_f
    if-gez p2, :cond_10

    .line 120
    goto :goto_8

    .line 122
    :cond_10
    :goto_6
    move p4, v0

    .line 123
    :goto_7
    if-nez p2, :cond_11

    .line 124
    move p3, v2

    .line 126
    goto :goto_9

    .line 127
    :cond_11
    if-lt v2, p3, :cond_12

    .line 128
    if-eqz p4, :cond_18

    .line 130
    goto :goto_8

    .line 132
    :cond_12
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 133
    move-result v5

    .line 136
    if-eqz p4, :cond_14

    .line 137
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 139
    move-result p4

    .line 142
    if-nez p4, :cond_13

    .line 143
    goto :goto_8

    .line 145
    :cond_13
    add-int/lit8 p2, p2, -0x1

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 148
    goto :goto_6

    .line 150
    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 151
    move-result v6

    .line 154
    if-nez v6, :cond_15

    .line 155
    add-int/lit8 p2, p2, -0x1

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 159
    goto :goto_7

    .line 161
    :cond_15
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 162
    move-result p4

    .line 165
    if-eqz p4, :cond_16

    .line 166
    goto :goto_8

    .line 168
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 169
    move p4, v3

    .line 171
    goto :goto_7

    .line 172
    :cond_17
    :goto_8
    move p3, v4

    .line 173
    :cond_18
    :goto_9
    if-eq v1, v4, :cond_1c

    .line 174
    if-ne p3, v4, :cond_1a

    .line 176
    goto :goto_b

    .line 178
    :cond_19
    sub-int/2addr v1, p2

    .line 179
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 180
    move-result v1

    .line 183
    add-int/2addr v2, p3

    .line 184
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 185
    move-result p2

    .line 188
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 189
    move-result p3

    .line 192
    :cond_1a
    const-class p2, Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 193
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 195
    move-result-object p2

    .line 198
    check-cast p2, [Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 199
    if-eqz p2, :cond_1c

    .line 201
    array-length p4, p2

    .line 203
    if-lez p4, :cond_1c

    .line 204
    array-length p4, p2

    .line 206
    move v2, v0

    .line 207
    :goto_a
    if-ge v2, p4, :cond_1b

    .line 208
    aget-object v4, p2, v2

    .line 210
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    .line 212
    move-result v5

    .line 215
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    .line 216
    move-result v4

    .line 219
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 220
    move-result v1

    .line 223
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 224
    move-result p3

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 228
    goto :goto_a

    .line 230
    :cond_1b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 231
    move-result p2

    .line 234
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 235
    move-result p4

    .line 238
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 239
    move-result p3

    .line 242
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 243
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 246
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 249
    move v0, v3

    .line 252
    :cond_1c
    :goto_b
    return v0
    .line 253
.end method
