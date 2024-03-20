.class public Lcom/miui/maml/data/StringFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lcom/miui/maml/data/StringFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 5
    return-void
    .line 7
.end method

.method public static load()V
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 2
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 7
    const-string/jumbo v1, "strToLowerCase"

    .line 10
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 13
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 16
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 20
    const-string/jumbo v1, "strToUpperCase"

    .line 23
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 26
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 29
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 33
    const-string/jumbo v1, "strTrim"

    .line 36
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 39
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 42
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 44
    const/4 v3, 0x3

    .line 46
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 47
    const-string/jumbo v1, "strReplace"

    .line 50
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 53
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 56
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 58
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 60
    const-string/jumbo v1, "strReplaceAll"

    .line 63
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 66
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 69
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 71
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 73
    const-string/jumbo v1, "strReplaceFirst"

    .line 76
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 79
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 82
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 84
    const/4 v3, 0x2

    .line 86
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 87
    const-string/jumbo v1, "strContains"

    .line 90
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 93
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 96
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 98
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 100
    const-string/jumbo v1, "strStartsWith"

    .line 103
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 106
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 109
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 111
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 113
    const-string/jumbo v1, "strEndsWith"

    .line 116
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 119
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 122
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 124
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 126
    const-string/jumbo v1, "strIsEmpty"

    .line 129
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 132
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 135
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 137
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 139
    const-string/jumbo v1, "strMatches"

    .line 142
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 145
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 148
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 150
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 152
    const-string/jumbo v1, "strIndexOf"

    .line 155
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 158
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 161
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 163
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 165
    const-string/jumbo v1, "strLastIndexOf"

    .line 168
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 171
    return-void
    .line 174
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 9

    .line 1
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 14
    const/4 p2, 0x0

    .line 17
    aget-object p2, p1, p2

    .line 18
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 29
    aget v1, v0, v1

    .line 30
    const/4 v4, 0x7

    .line 32
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 33
    if-eq v1, v4, :cond_6

    .line 35
    const/4 v1, 0x1

    .line 37
    aget-object p1, p1, v1

    .line 38
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result v1

    .line 49
    aget v0, v0, v1

    .line 50
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 52
    const-string v1, "Expression"

    .line 54
    packed-switch v0, :pswitch_data_1

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    const-string p2, "fail to evalute FunctionExpression, invalid function: "

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-wide v2

    .line 82
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/StringFunctions;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    invoke-static {p0, v2, v3}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    .line 87
    move-result-wide p0

    .line 90
    return-wide p0

    .line 91
    :pswitch_1
    if-eqz p2, :cond_0

    .line 92
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 96
    move-result p0

    .line 99
    int-to-double v7, p0

    .line 100
    :cond_0
    return-wide v7

    .line 101
    :pswitch_2
    if-eqz p2, :cond_1

    .line 102
    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 106
    move-result p0

    .line 109
    int-to-double v7, p0

    .line 110
    :cond_1
    return-wide v7

    .line 111
    :pswitch_3
    if-eqz p2, :cond_2

    .line 112
    if-eqz p1, :cond_2

    .line 114
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 116
    move-result p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    if-eqz p0, :cond_2

    .line 120
    move-wide v2, v5

    .line 122
    goto :goto_0

    .line 123
    :catch_0
    const-string p0, "invaid pattern of matches: "

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    :goto_0
    return-wide v2

    .line 133
    :pswitch_4
    if-eqz p2, :cond_3

    .line 134
    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 138
    move-result p0

    .line 141
    if-eqz p0, :cond_3

    .line 142
    move-wide v2, v5

    .line 144
    :cond_3
    return-wide v2

    .line 145
    :pswitch_5
    if-eqz p2, :cond_4

    .line 146
    if-eqz p1, :cond_4

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 150
    move-result p0

    .line 153
    if-eqz p0, :cond_4

    .line 154
    move-wide v2, v5

    .line 156
    :cond_4
    return-wide v2

    .line 157
    :pswitch_6
    if-eqz p2, :cond_5

    .line 158
    if-eqz p1, :cond_5

    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 162
    move-result p0

    .line 165
    if-eqz p0, :cond_5

    .line 166
    move-wide v2, v5

    .line 168
    :cond_5
    return-wide v2

    .line 169
    :cond_6
    if-eqz p2, :cond_7

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 172
    move-result p0

    .line 175
    if-eqz p0, :cond_8

    .line 176
    :cond_7
    move-wide v2, v5

    .line 178
    :cond_8
    return-wide v2

    .line 179
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 196
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 12
    const/4 p2, 0x0

    .line 15
    aget-object p2, p1, p2

    .line 16
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p2, :cond_0

    .line 23
    return-object v1

    .line 25
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/StringFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 26
    move-result-wide p0

    .line 29
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v2

    .line 40
    aget v2, v0, v2

    .line 41
    packed-switch v2, :pswitch_data_1

    .line 43
    const/4 v2, 0x1

    .line 46
    aget-object v2, p1, v2

    .line 47
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 52
    const/4 v3, 0x2

    .line 53
    aget-object p1, p1, v3

    .line 54
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    if-eqz v2, :cond_2

    .line 60
    if-nez p1, :cond_1

    .line 62
    goto :goto_0

    .line 64
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 80
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 82
    move-result v3

    .line 85
    aget v0, v0, v3

    .line 86
    const-string v3, "Expression"

    .line 88
    packed-switch v0, :pswitch_data_2

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    const-string p2, "fail to evaluteStr FunctionExpression, invalid function: "

    .line 95
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 112
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v1

    .line 116
    :pswitch_4
    :try_start_0
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object p0

    .line 121
    :catch_0
    const-string p0, "invaid pattern of replaceFirst:"

    .line 122
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 127
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-object p2

    .line 131
    :pswitch_5
    :try_start_1
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object p0
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    return-object p0

    .line 136
    :catch_1
    const-string p0, "invaid pattern of replaceAll: "

    .line 137
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 142
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object p2

    .line 146
    :pswitch_6
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :cond_2
    :goto_0
    return-object p2

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 172
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
    .line 182
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
