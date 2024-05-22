.class public Lcom/miui/maml/data/JsonFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lcom/miui/maml/data/JsonFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 5
    return-void
    .line 7
.end method

.method public static load()V
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 2
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_STRING:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 7
    const-string v1, "jsonGetString"

    .line 10
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 12
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 15
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_BOOLEAN:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 19
    const-string v1, "jsonGetBoolean"

    .line 22
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 24
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 27
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_INT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 31
    const-string v1, "jsonGetInt"

    .line 34
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 36
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 39
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 43
    const-string v1, "jsonGetObject"

    .line 46
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 48
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 51
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 53
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 55
    const-string v1, "jsonGetArray"

    .line 58
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 60
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 63
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_GET_INDEX:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 65
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 67
    const-string v1, "jsonArrayGetIndex"

    .line 70
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 72
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 75
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 77
    const/4 v3, 0x0

    .line 79
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 80
    const-string v1, "newJsonObject"

    .line 83
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 85
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 88
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 90
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 92
    const-string v1, "newJsonArray"

    .line 95
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 97
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 100
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_LENGTH:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 102
    const/4 v3, 0x1

    .line 104
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 105
    const-string v1, "getJsonArrayLength"

    .line 108
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 110
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 113
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_OBJECT_EQUALS:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 115
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 117
    const-string v1, "jsonObjectEquals"

    .line 120
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 122
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 125
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 127
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 129
    const-string/jumbo v1, "strToJson"

    .line 132
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 135
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 138
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_STR_FROM_JSON:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 140
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 142
    const-string v1, "jsonToStr"

    .line 145
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 147
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 150
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 152
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 154
    const-string v1, "isJsonObject"

    .line 157
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 159
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 162
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 164
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 166
    const-string v1, "isJsonArray"

    .line 169
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 171
    return-void
    .line 174
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 5

    .line 1
    sget-object p2, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    iget-object p0, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 9
    aget p0, p2, p0

    .line 10
    const/4 p2, 0x1

    .line 12
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    const-wide/16 v2, 0x0

    .line 15
    const/4 v4, 0x0

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 18
    goto/16 :goto_5

    .line 21
    :pswitch_0
    aget-object p0, p1, v4

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 25
    move-result-object p0

    .line 28
    if-eqz p0, :cond_4

    .line 29
    aget-object p1, p1, p2

    .line 31
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 37
    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    move-wide v0, v2

    .line 52
    :goto_0
    return-wide v0

    .line 53
    :pswitch_1
    aget-object p0, p1, v4

    .line 54
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 56
    move-result-object p0

    .line 59
    if-eqz p0, :cond_4

    .line 60
    aget-object p1, p1, p2

    .line 62
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 68
    move-result p0

    .line 71
    :goto_1
    int-to-double p0, p0

    .line 72
    return-wide p0

    .line 73
    :pswitch_2
    aget-object p0, p1, v4

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 76
    move-result-object p0

    .line 79
    if-eqz p0, :cond_1

    .line 80
    goto :goto_2

    .line 82
    :cond_1
    move-wide v0, v2

    .line 83
    :goto_2
    return-wide v0

    .line 84
    :pswitch_3
    aget-object p0, p1, v4

    .line 85
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 87
    move-result-object p0

    .line 90
    if-eqz p0, :cond_2

    .line 91
    goto :goto_3

    .line 93
    :cond_2
    move-wide v0, v2

    .line 94
    :goto_3
    return-wide v0

    .line 95
    :pswitch_4
    aget-object p0, p1, v4

    .line 96
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 98
    move-result-object p0

    .line 101
    aget-object p1, p1, p2

    .line 102
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 104
    move-result-object p1

    .line 107
    if-eqz p0, :cond_4

    .line 108
    if-eqz p1, :cond_4

    .line 110
    if-ne p0, p1, :cond_3

    .line 112
    goto :goto_4

    .line 114
    :cond_3
    move-wide v0, v2

    .line 115
    :goto_4
    return-wide v0

    .line 116
    :pswitch_5
    aget-object p0, p1, v4

    .line 117
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 119
    move-result-object p0

    .line 122
    if-eqz p0, :cond_4

    .line 123
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 125
    move-result p0

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    :goto_5
    return-wide v2

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method

.method public evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/16 v1, 0xd

    .line 12
    if-eq v0, v1, :cond_1

    .line 14
    const/16 v1, 0xe

    .line 16
    if-eq v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Lorg/json/JSONArray;

    .line 21
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 23
    return-object p0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    aget-object v0, p1, v0

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 30
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    const/4 p0, 0x1

    .line 36
    aget-object p0, p1, p0

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 43
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;

    .line 48
    move-result-object p0

    .line 51
    return-object p0
    .line 52
.end method

.method public evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    goto :goto_1

    .line 17
    :pswitch_0
    aget-object v0, p1, v2

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 20
    move-result-object v0

    .line 23
    aget-object v1, p1, v1

    .line 24
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 26
    move-result-wide v1

    .line 29
    double-to-int v1, v1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 33
    move-result v2

    .line 36
    if-ge v1, v2, :cond_1

    .line 37
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 39
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    return-object p0

    .line 43
    :pswitch_1
    aget-object p0, p1, v2

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 52
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    goto :goto_0

    .line 57
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    return-object p1

    .line 59
    :pswitch_2
    new-instance p0, Lorg/json/JSONObject;

    .line 60
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    return-object p0

    .line 65
    :pswitch_3
    aget-object v0, p1, v2

    .line 66
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 68
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    aget-object p0, p1, v1

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 80
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :catch_1
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;

    .line 85
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 90
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    aget-object p0, p1, v1

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 20
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    :cond_0
    return-object v2

    .line 30
    :pswitch_1
    aget-object p0, p1, v1

    .line 31
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 33
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    const/4 p2, 0x1

    .line 39
    aget-object p1, p1, p2

    .line 40
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/JsonFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 51
    move-result-wide p0

    .line 54
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_1
    :goto_0
    return-object v2

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 62
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
