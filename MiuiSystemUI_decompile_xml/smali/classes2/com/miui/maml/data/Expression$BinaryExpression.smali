.class Lcom/miui/maml/data/Expression$BinaryExpression;
.super Lcom/miui/maml/data/Expression;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mExp1:Lcom/miui/maml/data/Expression;

.field private mExp2:Lcom/miui/maml/data/Expression;

.field private mOpe:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 7
    iput-object p2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 9
    iput-object p3, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 11
    if-ne p3, v0, :cond_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    const-string p1, "BinaryExpression: invalid operator:"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    const-string p1, "Expression"

    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
    .line 34
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 7
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 12
    return-void
    .line 15
.end method

.method public evaluate()D
    .locals 9

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_9

    .line 13
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 15
    const-wide/16 v3, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 19
    const-string p0, "Expression"

    .line 22
    const-string v0, "fail to evalute BinaryExpression, invalid operator"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-wide v3

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 30
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 32
    move-result-wide v5

    .line 35
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 38
    move-result-wide v7

    .line 41
    cmpg-double p0, v5, v7

    .line 42
    if-gtz p0, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    move-wide v1, v3

    .line 47
    :goto_0
    return-wide v1

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 49
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 51
    move-result-wide v5

    .line 54
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 55
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 57
    move-result-wide v7

    .line 60
    cmpg-double p0, v5, v7

    .line 61
    if-gez p0, :cond_1

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    move-wide v1, v3

    .line 66
    :goto_1
    return-wide v1

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 68
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 70
    move-result-wide v5

    .line 73
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 76
    move-result-wide v7

    .line 79
    cmpl-double p0, v5, v7

    .line 80
    if-ltz p0, :cond_2

    .line 82
    goto :goto_2

    .line 84
    :cond_2
    move-wide v1, v3

    .line 85
    :goto_2
    return-wide v1

    .line 86
    :pswitch_3
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 87
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 89
    move-result-wide v5

    .line 92
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 93
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 95
    move-result-wide v7

    .line 98
    cmpl-double p0, v5, v7

    .line 99
    if-lez p0, :cond_3

    .line 101
    goto :goto_3

    .line 103
    :cond_3
    move-wide v1, v3

    .line 104
    :goto_3
    return-wide v1

    .line 105
    :pswitch_4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 106
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 108
    move-result-wide v5

    .line 111
    cmpl-double v0, v5, v3

    .line 112
    if-gtz v0, :cond_5

    .line 114
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 116
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 118
    move-result-wide v5

    .line 121
    cmpl-double p0, v5, v3

    .line 122
    if-lez p0, :cond_4

    .line 124
    goto :goto_4

    .line 126
    :cond_4
    move-wide v1, v3

    .line 127
    :cond_5
    :goto_4
    return-wide v1

    .line 128
    :pswitch_5
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 129
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 131
    move-result-wide v5

    .line 134
    cmpl-double v0, v5, v3

    .line 135
    if-lez v0, :cond_6

    .line 137
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 139
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 141
    move-result-wide v5

    .line 144
    cmpl-double p0, v5, v3

    .line 145
    if-lez p0, :cond_6

    .line 147
    goto :goto_5

    .line 149
    :cond_6
    move-wide v1, v3

    .line 150
    :goto_5
    return-wide v1

    .line 151
    :pswitch_6
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 152
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 154
    move-result-wide v5

    .line 157
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 158
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 160
    move-result-wide v7

    .line 163
    cmpl-double p0, v5, v7

    .line 164
    if-eqz p0, :cond_7

    .line 166
    goto :goto_6

    .line 168
    :cond_7
    move-wide v1, v3

    .line 169
    :goto_6
    return-wide v1

    .line 170
    :pswitch_7
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 171
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 173
    move-result-wide v5

    .line 176
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 177
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 179
    move-result-wide v7

    .line 182
    cmpl-double p0, v5, v7

    .line 183
    if-nez p0, :cond_8

    .line 185
    goto :goto_7

    .line 187
    :cond_8
    move-wide v1, v3

    .line 188
    :goto_7
    return-wide v1

    .line 189
    :pswitch_8
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 190
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 192
    move-result-wide v0

    .line 195
    double-to-long v0, v0

    .line 196
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 197
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 199
    move-result-wide v2

    .line 202
    double-to-long v2, v2

    .line 203
    long-to-int p0, v2

    .line 204
    shr-long/2addr v0, p0

    .line 205
    long-to-double v0, v0

    .line 206
    return-wide v0

    .line 207
    :pswitch_9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 208
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 210
    move-result-wide v0

    .line 213
    double-to-long v0, v0

    .line 214
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 215
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 217
    move-result-wide v2

    .line 220
    double-to-long v2, v2

    .line 221
    long-to-int p0, v2

    .line 222
    shl-long/2addr v0, p0

    .line 223
    long-to-double v0, v0

    .line 224
    return-wide v0

    .line 225
    :pswitch_a
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 226
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 228
    move-result-wide v0

    .line 231
    double-to-long v0, v0

    .line 232
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 233
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 235
    move-result-wide v2

    .line 238
    double-to-long v2, v2

    .line 239
    xor-long/2addr v0, v2

    .line 240
    long-to-double v0, v0

    .line 241
    return-wide v0

    .line 242
    :pswitch_b
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 243
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 245
    move-result-wide v0

    .line 248
    double-to-long v0, v0

    .line 249
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 250
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 252
    move-result-wide v2

    .line 255
    double-to-long v2, v2

    .line 256
    or-long/2addr v0, v2

    .line 257
    long-to-double v0, v0

    .line 258
    return-wide v0

    .line 259
    :pswitch_c
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 260
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 262
    move-result-wide v0

    .line 265
    double-to-long v0, v0

    .line 266
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 267
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 269
    move-result-wide v2

    .line 272
    double-to-long v2, v2

    .line 273
    and-long/2addr v0, v2

    .line 274
    long-to-double v0, v0

    .line 275
    return-wide v0

    .line 276
    :pswitch_d
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 277
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 279
    move-result-wide v0

    .line 282
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 283
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 285
    move-result-wide v2

    .line 288
    rem-double/2addr v0, v2

    .line 289
    return-wide v0

    .line 290
    :pswitch_e
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 291
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 293
    move-result-wide v0

    .line 296
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 297
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 299
    move-result-wide v2

    .line 302
    div-double/2addr v0, v2

    .line 303
    return-wide v0

    .line 304
    :pswitch_f
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 305
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 307
    move-result-wide v0

    .line 310
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 311
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 313
    move-result-wide v2

    .line 316
    mul-double/2addr v2, v0

    .line 317
    return-wide v2

    .line 318
    :pswitch_10
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 319
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 321
    move-result-wide v0

    .line 324
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 325
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 327
    move-result-wide v2

    .line 330
    add-double/2addr v2, v0

    .line 331
    return-wide v2

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 333
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 335
    move-result-wide v0

    .line 338
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 339
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 341
    move-result-wide v2

    .line 344
    sub-double/2addr v0, v2

    .line 345
    return-wide v0

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 348
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    sget-object v2, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 14
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    move-result p0

    .line 21
    aget p0, v2, p0

    .line 22
    const/4 v2, 0x4

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq p0, v2, :cond_0

    .line 26
    const-string p0, "Expression"

    .line 28
    const-string v0, "fail to evalute string BinaryExpression, invalid operator"

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-object v3

    .line 35
    :cond_0
    if-nez v0, :cond_1

    .line 36
    if-nez v1, :cond_1

    .line 38
    return-object v3

    .line 40
    :cond_1
    if-nez v0, :cond_2

    .line 41
    return-object v1

    .line 43
    :cond_2
    if-nez v1, :cond_3

    .line 44
    return-object v0

    .line 46
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

.method public isNull()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_3

    .line 14
    const/4 v3, 0x4

    .line 16
    if-eq v0, v3, :cond_3

    .line 17
    const/4 v3, 0x5

    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    const/4 v3, 0x6

    .line 22
    if-eq v0, v3, :cond_0

    .line 23
    const/4 v3, 0x7

    .line 25
    if-eq v0, v3, :cond_0

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 28
    return v2

    .line 31
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 34
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 42
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    :cond_1
    move v1, v2

    .line 48
    :cond_2
    return v1

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 58
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 60
    move-result p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    move v1, v2

    .line 66
    :cond_4
    return v1

    .line 67
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 68
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 2
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 15
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    .line 17
    move-result-object v1

    .line 20
    if-eqz v0, :cond_5

    .line 21
    if-eqz v1, :cond_5

    .line 23
    sget-object v3, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 25
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    move-result p0

    .line 32
    aget p0, v3, p0

    .line 33
    const/4 v3, 0x1

    .line 35
    if-eq p0, v3, :cond_4

    .line 36
    const/4 v3, 0x4

    .line 38
    if-eq p0, v3, :cond_3

    .line 39
    const/4 v3, 0x5

    .line 41
    if-eq p0, v3, :cond_2

    .line 42
    const/4 v3, 0x6

    .line 44
    if-eq p0, v3, :cond_1

    .line 45
    const/4 v3, 0x7

    .line 47
    if-eq p0, v3, :cond_0

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p0

    .line 55
    :catch_0
    return-object v2

    .line 56
    :cond_1
    :try_start_1
    sget-object p0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    .line 57
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 59
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    return-object p0

    .line 63
    :catch_1
    return-object v2

    .line 64
    :cond_2
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 65
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_3
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 70
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_4
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 75
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_5
    :goto_0
    const-string p0, "Expression"

    .line 80
    const-string v0, "fail to PRECISE evalute BinaryExpression, invalid operator"

    .line 82
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-object v2
    .line 87
.end method
