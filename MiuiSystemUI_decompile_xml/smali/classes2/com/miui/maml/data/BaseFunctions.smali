.class public Lcom/miui/maml/data/BaseFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lcom/miui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lcom/miui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 5
    return-void
    .line 7
.end method

.method private digit(II)I
    .locals 3

    .line 1
    const/4 p0, -0x1

    .line 2
    if-gtz p2, :cond_0

    .line 3
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez p1, :cond_1

    .line 8
    if-ne p2, v1, :cond_1

    .line 10
    return v0

    .line 12
    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 13
    add-int/lit8 v2, p2, -0x1

    .line 15
    if-ge v0, v2, :cond_2

    .line 17
    div-int/lit8 p1, p1, 0xa

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_2
    if-lez p1, :cond_3

    .line 24
    rem-int/lit8 p0, p1, 0xa

    .line 26
    :cond_3
    return p0
    .line 28
.end method

.method public static load()V
    .locals 5

    .line 1
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 2
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 7
    const-string v1, "rand"

    .line 10
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 12
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 15
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 17
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 20
    const-string/jumbo v1, "sin"

    .line 23
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 26
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 29
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 33
    const-string v1, "cos"

    .line 36
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 38
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 41
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 43
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 45
    const-string/jumbo v1, "tan"

    .line 48
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 51
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 54
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 58
    const-string v1, "asin"

    .line 61
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 63
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 66
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 68
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 70
    const-string v1, "acos"

    .line 73
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 75
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 78
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 80
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 82
    const-string v1, "atan"

    .line 85
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 87
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 90
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 92
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 94
    const-string/jumbo v1, "sinh"

    .line 97
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 100
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 103
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 105
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 107
    const-string v1, "cosh"

    .line 110
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 112
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 115
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 117
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 119
    const-string/jumbo v1, "sqrt"

    .line 122
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 125
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 128
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 130
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 132
    const-string v1, "abs"

    .line 135
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 137
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 140
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 142
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 144
    const-string v1, "len"

    .line 147
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 149
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 152
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 154
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 156
    const-string v1, "eval"

    .line 159
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 161
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 164
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 166
    const/4 v3, 0x2

    .line 168
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 169
    const-string v1, "preciseeval"

    .line 172
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 174
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 177
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 179
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 181
    const-string v1, "round"

    .line 184
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 186
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 189
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 191
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 193
    const-string v1, "int"

    .line 196
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 198
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 201
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 203
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 205
    const-string v1, "num"

    .line 208
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 210
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 213
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 215
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 217
    const-string v1, "isnull"

    .line 220
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 222
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 225
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 227
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 229
    const-string v1, "not"

    .line 232
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 234
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 237
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 239
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 241
    const-string v1, "min"

    .line 244
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 246
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 249
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 251
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 253
    const-string v1, "max"

    .line 256
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 258
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 261
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 263
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 265
    const-string v1, "pow"

    .line 268
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 270
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 273
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 275
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 277
    const-string v1, "log"

    .line 280
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 282
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 285
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 287
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 289
    const-string v1, "log10"

    .line 292
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 294
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 297
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 299
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 301
    const-string v1, "digit"

    .line 304
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 306
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 309
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 311
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 313
    const-string v1, "eq"

    .line 316
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 318
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 321
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 323
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 325
    const-string v1, "ne"

    .line 328
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 330
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 333
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 335
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 337
    const-string v1, "ge"

    .line 340
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 342
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 345
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 347
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 349
    const-string v1, "gt"

    .line 352
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 354
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 357
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 359
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 361
    const-string v1, "le"

    .line 364
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 366
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 369
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 371
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 373
    const-string v1, "lt"

    .line 376
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 378
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 381
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 383
    const/4 v4, 0x3

    .line 385
    invoke-direct {v0, v1, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 386
    const-string v1, "ifelse"

    .line 389
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 391
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 394
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 396
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 398
    const-string v1, "and"

    .line 401
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 403
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 406
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 408
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 410
    const-string v1, "or"

    .line 413
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 415
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 418
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 420
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 422
    const-string v1, "eqs"

    .line 425
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 427
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 430
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 432
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 434
    const-string/jumbo v1, "substr"

    .line 437
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 440
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 443
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 445
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 447
    const-string v1, "hash"

    .line 450
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 452
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;

    .line 455
    invoke-direct {v0}, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;-><init>()V

    .line 457
    const-string v1, "nullobj"

    .line 460
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 462
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 465
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 467
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 469
    const-string v1, "floor"

    .line 472
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 474
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 477
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 479
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 481
    const-string v1, "ceil"

    .line 484
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 486
    return-void
    .line 489
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 10

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 10
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_19

    .line 13
    const/4 v1, 0x0

    .line 15
    aget-object v3, p1, v1

    .line 16
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 18
    move-result-wide v3

    .line 21
    iget-object v5, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 22
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 24
    move-result v5

    .line 27
    aget v0, v0, v5

    .line 28
    const-string v5, "Expression"

    .line 30
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 32
    const-wide/16 v8, 0x0

    .line 34
    packed-switch v0, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string p2, "fail to evalute FunctionExpression, invalid function: "

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-wide v8

    .line 62
    :pswitch_0
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 63
    move-result-wide p0

    .line 66
    return-wide p0

    .line 67
    :pswitch_1
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 68
    move-result-wide p0

    .line 71
    return-wide p0

    .line 72
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-static {p0, v8, v9}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    .line 77
    move-result-wide p0

    .line 80
    return-wide p0

    .line 81
    :pswitch_3
    aget-object p0, p1, v1

    .line 82
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    aget-object p1, p1, v2

    .line 88
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    move-result p0

    .line 97
    if-eqz p0, :cond_0

    .line 98
    goto :goto_0

    .line 100
    :cond_0
    move-wide v6, v8

    .line 101
    :goto_0
    return-wide v6

    .line 102
    :pswitch_4
    array-length p0, p1

    .line 103
    :goto_1
    if-ge v1, p0, :cond_2

    .line 104
    aget-object p2, p1, v1

    .line 106
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 108
    move-result-wide v2

    .line 111
    cmpl-double p2, v2, v8

    .line 112
    if-lez p2, :cond_1

    .line 114
    return-wide v6

    .line 116
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 117
    goto :goto_1

    .line 119
    :cond_2
    return-wide v8

    .line 120
    :pswitch_5
    array-length p0, p1

    .line 121
    :goto_2
    if-ge v1, p0, :cond_4

    .line 122
    aget-object p2, p1, v1

    .line 124
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 126
    move-result-wide v2

    .line 129
    cmpg-double p2, v2, v8

    .line 130
    if-gtz p2, :cond_3

    .line 132
    return-wide v8

    .line 134
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 135
    goto :goto_2

    .line 137
    :cond_4
    return-wide v6

    .line 138
    :pswitch_6
    array-length p2, p1

    .line 139
    rem-int/lit8 v0, p2, 0x2

    .line 140
    if-eq v0, v2, :cond_5

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    const-string p2, "function parameter number should be 2*n+1: "

    .line 146
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 163
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-wide v8

    .line 167
    :cond_5
    :goto_3
    add-int/lit8 p0, p2, -0x1

    .line 168
    div-int/lit8 v0, p0, 0x2

    .line 170
    if-ge v1, v0, :cond_7

    .line 172
    mul-int/lit8 p0, v1, 0x2

    .line 174
    aget-object v0, p1, p0

    .line 176
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 178
    move-result-wide v3

    .line 181
    cmpl-double v0, v3, v8

    .line 182
    if-lez v0, :cond_6

    .line 184
    add-int/2addr p0, v2

    .line 186
    aget-object p0, p1, p0

    .line 187
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 189
    move-result-wide p0

    .line 192
    return-wide p0

    .line 193
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 194
    goto :goto_3

    .line 196
    :cond_7
    aget-object p0, p1, p0

    .line 197
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 199
    move-result-wide p0

    .line 202
    return-wide p0

    .line 203
    :pswitch_7
    aget-object p0, p1, v2

    .line 204
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 206
    move-result-wide p0

    .line 209
    cmpg-double p0, v3, p0

    .line 210
    if-gez p0, :cond_8

    .line 212
    goto :goto_4

    .line 214
    :cond_8
    move-wide v6, v8

    .line 215
    :goto_4
    return-wide v6

    .line 216
    :pswitch_8
    aget-object p0, p1, v2

    .line 217
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 219
    move-result-wide p0

    .line 222
    cmpg-double p0, v3, p0

    .line 223
    if-gtz p0, :cond_9

    .line 225
    goto :goto_5

    .line 227
    :cond_9
    move-wide v6, v8

    .line 228
    :goto_5
    return-wide v6

    .line 229
    :pswitch_9
    aget-object p0, p1, v2

    .line 230
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 232
    move-result-wide p0

    .line 235
    cmpl-double p0, v3, p0

    .line 236
    if-lez p0, :cond_a

    .line 238
    goto :goto_6

    .line 240
    :cond_a
    move-wide v6, v8

    .line 241
    :goto_6
    return-wide v6

    .line 242
    :pswitch_a
    aget-object p0, p1, v2

    .line 243
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 245
    move-result-wide p0

    .line 248
    cmpl-double p0, v3, p0

    .line 249
    if-ltz p0, :cond_b

    .line 251
    goto :goto_7

    .line 253
    :cond_b
    move-wide v6, v8

    .line 254
    :goto_7
    return-wide v6

    .line 255
    :pswitch_b
    aget-object p0, p1, v2

    .line 256
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 258
    move-result-wide p0

    .line 261
    cmpl-double p0, v3, p0

    .line 262
    if-eqz p0, :cond_c

    .line 264
    goto :goto_8

    .line 266
    :cond_c
    move-wide v6, v8

    .line 267
    :goto_8
    return-wide v6

    .line 268
    :pswitch_c
    aget-object p0, p1, v2

    .line 269
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 271
    move-result-wide p0

    .line 274
    cmpl-double p0, v3, p0

    .line 275
    if-nez p0, :cond_d

    .line 277
    goto :goto_9

    .line 279
    :cond_d
    move-wide v6, v8

    .line 280
    :goto_9
    return-wide v6

    .line 281
    :pswitch_d
    double-to-int p2, v3

    .line 282
    aget-object p1, p1, v2

    .line 283
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 285
    move-result-wide v0

    .line 288
    double-to-int p1, v0

    .line 289
    invoke-direct {p0, p2, p1}, Lcom/miui/maml/data/BaseFunctions;->digit(II)I

    .line 290
    move-result p0

    .line 293
    int-to-double p0, p0

    .line 294
    return-wide p0

    .line 295
    :pswitch_e
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    .line 296
    move-result-wide p0

    .line 299
    return-wide p0

    .line 300
    :pswitch_f
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 301
    move-result-wide p0

    .line 304
    return-wide p0

    .line 305
    :pswitch_10
    aget-object p0, p1, v2

    .line 306
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 308
    move-result-wide p0

    .line 311
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 312
    move-result-wide p0

    .line 315
    return-wide p0

    .line 316
    :pswitch_11
    aget-object p0, p1, v2

    .line 317
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 319
    move-result-wide p0

    .line 322
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(DD)D

    .line 323
    move-result-wide p0

    .line 326
    return-wide p0

    .line 327
    :pswitch_12
    aget-object p0, p1, v2

    .line 328
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 330
    move-result-wide p0

    .line 333
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 334
    move-result-wide p0

    .line 337
    return-wide p0

    .line 338
    :pswitch_13
    cmpl-double p0, v3, v8

    .line 339
    if-lez p0, :cond_e

    .line 341
    move-wide v6, v8

    .line 343
    :cond_e
    return-wide v6

    .line 344
    :pswitch_14
    aget-object p0, p1, v1

    .line 345
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 347
    move-result p0

    .line 350
    if-eqz p0, :cond_f

    .line 351
    goto :goto_a

    .line 353
    :cond_f
    move-wide v6, v8

    .line 354
    :goto_a
    return-wide v6

    .line 355
    :pswitch_15
    return-wide v3

    .line 356
    :pswitch_16
    double-to-long p0, v3

    .line 357
    long-to-int p0, p0

    .line 358
    int-to-double p0, p0

    .line 359
    return-wide p0

    .line 360
    :pswitch_17
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 361
    move-result-wide p0

    .line 364
    long-to-double p0, p0

    .line 365
    return-wide p0

    .line 366
    :pswitch_18
    aget-object v0, p1, v1

    .line 367
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 372
    if-nez v0, :cond_10

    .line 373
    return-wide v8

    .line 375
    :cond_10
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    move-result v1

    .line 381
    if-nez v1, :cond_11

    .line 382
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 384
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 386
    move-result-object p2

    .line 389
    iput-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 390
    :cond_11
    iget-object p0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 392
    if-eqz p0, :cond_12

    .line 394
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    .line 396
    move-result-object p0

    .line 399
    goto :goto_b

    .line 400
    :cond_12
    const/4 p0, 0x0

    .line 401
    :goto_b
    if-eqz p0, :cond_14

    .line 402
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 404
    move-result p2

    .line 407
    aget-object p1, p1, v2

    .line 408
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 410
    move-result-wide v0

    .line 413
    double-to-int p1, v0

    .line 414
    if-lez p1, :cond_13

    .line 415
    if-le p2, p1, :cond_13

    .line 417
    const/4 p2, 0x4

    .line 419
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 420
    move-result-object p0

    .line 423
    :cond_13
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 424
    move-result-wide p0

    .line 427
    return-wide p0

    .line 428
    :cond_14
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 429
    return-wide p0

    .line 431
    :pswitch_19
    aget-object p1, p1, v1

    .line 432
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 434
    move-result-object p1

    .line 437
    if-nez p1, :cond_15

    .line 438
    return-wide v8

    .line 440
    :cond_15
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    move-result v0

    .line 446
    if-nez v0, :cond_16

    .line 447
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 449
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 451
    move-result-object p1

    .line 454
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 455
    :cond_16
    iget-object p0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 457
    if-nez p0, :cond_17

    .line 459
    goto :goto_c

    .line 461
    :cond_17
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 462
    move-result-wide v8

    .line 465
    :goto_c
    return-wide v8

    .line 466
    :pswitch_1a
    aget-object p0, p1, v1

    .line 467
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 469
    move-result-object p0

    .line 472
    if-nez p0, :cond_18

    .line 473
    return-wide v8

    .line 475
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 476
    move-result p0

    .line 479
    int-to-double p0, p0

    .line 480
    return-wide p0

    .line 481
    :pswitch_1b
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 482
    move-result-wide p0

    .line 485
    return-wide p0

    .line 486
    :pswitch_1c
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 487
    move-result-wide p0

    .line 490
    return-wide p0

    .line 491
    :pswitch_1d
    invoke-static {v3, v4}, Ljava/lang/Math;->cosh(D)D

    .line 492
    move-result-wide p0

    .line 495
    return-wide p0

    .line 496
    :pswitch_1e
    invoke-static {v3, v4}, Ljava/lang/Math;->sinh(D)D

    .line 497
    move-result-wide p0

    .line 500
    return-wide p0

    .line 501
    :pswitch_1f
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    .line 502
    move-result-wide p0

    .line 505
    return-wide p0

    .line 506
    :pswitch_20
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    .line 507
    move-result-wide p0

    .line 510
    return-wide p0

    .line 511
    :pswitch_21
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    .line 512
    move-result-wide p0

    .line 515
    return-wide p0

    .line 516
    :pswitch_22
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    .line 517
    move-result-wide p0

    .line 520
    return-wide p0

    .line 521
    :pswitch_23
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 522
    move-result-wide p0

    .line 525
    return-wide p0

    .line 526
    :pswitch_24
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 527
    move-result-wide p0

    .line 530
    return-wide p0

    .line 531
    :cond_19
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 532
    move-result-wide p0

    .line 535
    return-wide p0

    .line 536
    nop

    .line 537
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    .line 538
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/16 v1, 0xd

    .line 12
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eq v0, v1, :cond_b

    .line 16
    const/16 v1, 0x20

    .line 18
    const/4 v4, 0x1

    .line 20
    if-eq v0, v1, :cond_7

    .line 21
    const/16 v1, 0x24

    .line 23
    if-eq v0, v1, :cond_3

    .line 25
    const/16 v1, 0x27

    .line 27
    if-eq v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 31
    move-result-wide p0

    .line 34
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    aget-object p0, p1, v2

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    aget-object p1, p1, v4

    .line 46
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    if-eqz p0, :cond_2

    .line 52
    if-nez p1, :cond_1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p0, p1}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    :goto_0
    return-object v3

    .line 62
    :cond_3
    aget-object p0, p1, v2

    .line 63
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    if-nez p0, :cond_4

    .line 69
    return-object v3

    .line 71
    :cond_4
    array-length p2, p1

    .line 72
    aget-object v0, p1, v4

    .line 73
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 75
    move-result-wide v0

    .line 78
    double-to-int v0, v0

    .line 79
    const/4 v1, 0x3

    .line 80
    if-lt p2, v1, :cond_6

    .line 81
    const/4 p2, 0x2

    .line 83
    :try_start_0
    aget-object p1, p1, p2

    .line 84
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 86
    move-result-wide p1

    .line 89
    double-to-int p1, p1

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 91
    move-result p2

    .line 94
    if-le p1, p2, :cond_5

    .line 95
    move p1, p2

    .line 97
    :cond_5
    add-int/2addr p1, v0

    .line 98
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 104
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object p0

    .line 108
    :catch_0
    return-object v3

    .line 109
    :cond_7
    array-length p2, p1

    .line 110
    rem-int/lit8 v0, p2, 0x2

    .line 111
    if-eq v0, v4, :cond_8

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    const-string p2, "function parameter number should be 2*n+1: "

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    const-string p1, "Expression"

    .line 135
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v3

    .line 140
    :cond_8
    :goto_1
    add-int/lit8 p0, p2, -0x1

    .line 141
    div-int/lit8 v0, p0, 0x2

    .line 143
    if-ge v2, v0, :cond_a

    .line 145
    mul-int/lit8 p0, v2, 0x2

    .line 147
    aget-object v0, p1, p0

    .line 149
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 151
    move-result-wide v0

    .line 154
    const-wide/16 v5, 0x0

    .line 155
    cmpl-double v0, v0, v5

    .line 157
    if-lez v0, :cond_9

    .line 159
    add-int/2addr p0, v4

    .line 161
    aget-object p0, p1, p0

    .line 162
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 169
    goto :goto_1

    .line 171
    :cond_a
    aget-object p0, p1, p0

    .line 172
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :cond_b
    aget-object p1, p1, v2

    .line 179
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 184
    if-nez p1, :cond_c

    .line 185
    return-object v3

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    move-result v0

    .line 193
    if-nez v0, :cond_d

    .line 194
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 196
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 198
    move-result-object p1

    .line 201
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 202
    :cond_d
    iget-object p0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 204
    if-nez p0, :cond_e

    .line 206
    goto :goto_2

    .line 208
    :cond_e
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 209
    move-result-object v3

    .line 212
    :goto_2
    return-object v3
    .line 213
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 5
    return-void
    .line 7
.end method
