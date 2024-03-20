.class public abstract Lkotlinx/coroutines/internal/SystemPropsKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final systemProp(Ljava/lang/String;JJJ)J
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-wide/from16 v1, p3

    .line 4
    move-wide/from16 v3, p5

    .line 6
    sget v5, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    .line 8
    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v6, 0x0

    .line 15
    :goto_0
    if-nez v6, :cond_0

    .line 16
    move-wide/from16 v8, p1

    .line 18
    goto/16 :goto_8

    .line 20
    :cond_0
    invoke-static {}, Lkotlin/text/CharsKt__CharKt;->checkRadix()V

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 25
    move-result v7

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x1

    .line 30
    if-nez v7, :cond_2

    .line 31
    :cond_1
    :goto_1
    move-object v15, v6

    .line 33
    goto/16 :goto_5

    .line 34
    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 36
    move-result v10

    .line 39
    const/16 v11, 0x30

    .line 40
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 42
    move-result v11

    .line 45
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    if-gez v11, :cond_5

    .line 51
    if-ne v7, v9, :cond_3

    .line 53
    goto :goto_1

    .line 55
    :cond_3
    const/16 v11, 0x2d

    .line 56
    if-ne v10, v11, :cond_4

    .line 58
    const-wide/high16 v12, -0x8000000000000000L

    .line 60
    move v10, v9

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const/16 v11, 0x2b

    .line 64
    if-ne v10, v11, :cond_1

    .line 66
    move v11, v8

    .line 68
    move v10, v9

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move v10, v8

    .line 71
    :goto_2
    move v11, v10

    .line 72
    :goto_3
    const-wide/16 v16, 0x0

    .line 73
    move-wide/from16 v8, v16

    .line 75
    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 77
    :goto_4
    if-ge v10, v7, :cond_a

    .line 82
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    .line 84
    move-result v5

    .line 87
    const/16 v14, 0xa

    .line 88
    invoke-static {v5, v14}, Ljava/lang/Character;->digit(II)I

    .line 90
    move-result v5

    .line 93
    if-gez v5, :cond_6

    .line 94
    goto :goto_1

    .line 96
    :cond_6
    cmp-long v15, v8, v16

    .line 97
    if-gez v15, :cond_7

    .line 99
    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 101
    cmp-long v15, v16, v18

    .line 106
    if-nez v15, :cond_1

    .line 108
    move-object v15, v6

    .line 110
    move/from16 v20, v7

    .line 111
    int-to-long v6, v14

    .line 113
    div-long v16, v12, v6

    .line 114
    cmp-long v6, v8, v16

    .line 116
    if-gez v6, :cond_8

    .line 118
    goto :goto_5

    .line 120
    :cond_7
    move-object v15, v6

    .line 121
    move/from16 v20, v7

    .line 122
    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 124
    :cond_8
    int-to-long v6, v14

    .line 129
    mul-long/2addr v8, v6

    .line 130
    int-to-long v5, v5

    .line 131
    add-long v21, v12, v5

    .line 132
    cmp-long v7, v8, v21

    .line 134
    if-gez v7, :cond_9

    .line 136
    :goto_5
    const/4 v5, 0x0

    .line 138
    goto :goto_6

    .line 139
    :cond_9
    sub-long/2addr v8, v5

    .line 140
    add-int/lit8 v10, v10, 0x1

    .line 141
    move-object v6, v15

    .line 143
    move/from16 v7, v20

    .line 144
    goto :goto_4

    .line 146
    :cond_a
    move-object v15, v6

    .line 147
    if-eqz v11, :cond_b

    .line 148
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    move-result-object v5

    .line 153
    goto :goto_6

    .line 154
    :cond_b
    neg-long v5, v8

    .line 155
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    move-result-object v5

    .line 159
    :goto_6
    const-string v6, "\'"

    .line 160
    const-string v7, "System property \'"

    .line 162
    if-eqz v5, :cond_e

    .line 164
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 166
    move-result-wide v8

    .line 169
    cmp-long v5, v1, v8

    .line 170
    if-gtz v5, :cond_c

    .line 172
    cmp-long v5, v8, v3

    .line 174
    if-gtz v5, :cond_c

    .line 176
    const/4 v5, 0x1

    .line 178
    goto :goto_7

    .line 179
    :cond_c
    const/4 v5, 0x0

    .line 180
    :goto_7
    if-eqz v5, :cond_d

    .line 181
    :goto_8
    return-wide v8

    .line 183
    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, "\' should be in range "

    .line 194
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, ".."

    .line 202
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, ", but is \'"

    .line 210
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 228
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 229
    throw v5

    .line 232
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v0, "\' has unrecognized value \'"

    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    move-object v5, v15

    .line 248
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 262
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 263
    throw v1
    .line 266
.end method

.method public static systemProp$default(Ljava/lang/String;IIII)I
    .locals 7

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p2, 0x1

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 7
    if-eqz p4, :cond_1

    .line 9
    const p3, 0x7fffffff

    .line 11
    :cond_1
    int-to-long v1, p1

    .line 14
    int-to-long v3, p2

    .line 15
    int-to-long v5, p3

    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    .line 18
    move-result-wide p0

    .line 21
    long-to-int p0, p0

    .line 22
    return p0
    .line 23
.end method
