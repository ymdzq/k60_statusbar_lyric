.class public final enum Lcom/miui/maml/data/VariableType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/VariableType;

.field public static final enum BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum BYTE_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum CHAR_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum FLOAT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum INT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum INVALID:Lcom/miui/maml/data/VariableType;

.field public static final enum JSONA:Lcom/miui/maml/data/VariableType;

.field public static final enum JSONO:Lcom/miui/maml/data/VariableType;

.field public static final enum LONG_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum NUM:Lcom/miui/maml/data/VariableType;

.field public static final enum NUM_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum OBJ:Lcom/miui/maml/data/VariableType;

.field public static final enum OBJ_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum SHORT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum STR:Lcom/miui/maml/data/VariableType;

.field public static final enum STR_ARR:Lcom/miui/maml/data/VariableType;


# instance fields
.field public final mTypeClass:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v1, Lcom/miui/maml/data/VariableType;

    .line 2
    move-object v0, v1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "INVALID"

    .line 7
    invoke-direct {v1, v4, v2, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 9
    sput-object v1, Lcom/miui/maml/data/VariableType;->INVALID:Lcom/miui/maml/data/VariableType;

    .line 12
    new-instance v2, Lcom/miui/maml/data/VariableType;

    .line 14
    move-object v1, v2

    .line 16
    const/4 v3, 0x1

    .line 17
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 18
    const-string v5, "NUM"

    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 22
    sput-object v2, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 25
    new-instance v3, Lcom/miui/maml/data/VariableType;

    .line 27
    move-object v2, v3

    .line 29
    const-string v4, "STR"

    .line 30
    const/4 v5, 0x2

    .line 32
    const-class v15, Ljava/lang/String;

    .line 33
    invoke-direct {v3, v4, v5, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 35
    sput-object v3, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    .line 38
    new-instance v4, Lcom/miui/maml/data/VariableType;

    .line 40
    move-object v3, v4

    .line 42
    const-string v5, "OBJ"

    .line 43
    const/4 v6, 0x3

    .line 45
    const-class v14, Ljava/lang/Object;

    .line 46
    invoke-direct {v4, v5, v6, v14}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 48
    sput-object v4, Lcom/miui/maml/data/VariableType;->OBJ:Lcom/miui/maml/data/VariableType;

    .line 51
    new-instance v5, Lcom/miui/maml/data/VariableType;

    .line 53
    move-object v4, v5

    .line 55
    const/4 v6, 0x4

    .line 56
    const-class v7, Lorg/json/JSONObject;

    .line 57
    const-string v8, "JSONO"

    .line 59
    invoke-direct {v5, v8, v6, v7}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 61
    sput-object v5, Lcom/miui/maml/data/VariableType;->JSONO:Lcom/miui/maml/data/VariableType;

    .line 64
    new-instance v6, Lcom/miui/maml/data/VariableType;

    .line 66
    move-object v5, v6

    .line 68
    const/4 v7, 0x5

    .line 69
    const-class v8, Lorg/json/JSONArray;

    .line 70
    const-string v9, "JSONA"

    .line 72
    invoke-direct {v6, v9, v7, v8}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 74
    sput-object v6, Lcom/miui/maml/data/VariableType;->JSONA:Lcom/miui/maml/data/VariableType;

    .line 77
    new-instance v7, Lcom/miui/maml/data/VariableType;

    .line 79
    move-object v6, v7

    .line 81
    const/4 v8, 0x6

    .line 82
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 83
    const-string v10, "NUM_ARR"

    .line 85
    invoke-direct {v7, v10, v8, v9}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 87
    sput-object v7, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 90
    new-instance v8, Lcom/miui/maml/data/VariableType;

    .line 92
    move-object v7, v8

    .line 94
    const/4 v9, 0x7

    .line 95
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 96
    const-string v11, "DOUBLE_ARR"

    .line 98
    invoke-direct {v8, v11, v9, v10}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 100
    sput-object v8, Lcom/miui/maml/data/VariableType;->DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

    .line 103
    new-instance v9, Lcom/miui/maml/data/VariableType;

    .line 105
    move-object v8, v9

    .line 107
    const/16 v10, 0x8

    .line 108
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 110
    const-string v12, "FLOAT_ARR"

    .line 112
    invoke-direct {v9, v12, v10, v11}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 114
    sput-object v9, Lcom/miui/maml/data/VariableType;->FLOAT_ARR:Lcom/miui/maml/data/VariableType;

    .line 117
    new-instance v10, Lcom/miui/maml/data/VariableType;

    .line 119
    move-object v9, v10

    .line 121
    const/16 v11, 0x9

    .line 122
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 124
    const-string v13, "INT_ARR"

    .line 126
    invoke-direct {v10, v13, v11, v12}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 128
    sput-object v10, Lcom/miui/maml/data/VariableType;->INT_ARR:Lcom/miui/maml/data/VariableType;

    .line 131
    new-instance v11, Lcom/miui/maml/data/VariableType;

    .line 133
    move-object v10, v11

    .line 135
    const/16 v12, 0xa

    .line 136
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 138
    move-object/from16 v16, v14

    .line 140
    const-string v14, "SHORT_ARR"

    .line 142
    invoke-direct {v11, v14, v12, v13}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 144
    sput-object v11, Lcom/miui/maml/data/VariableType;->SHORT_ARR:Lcom/miui/maml/data/VariableType;

    .line 147
    new-instance v12, Lcom/miui/maml/data/VariableType;

    .line 149
    move-object v11, v12

    .line 151
    const/16 v13, 0xb

    .line 152
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 154
    move-object/from16 v17, v15

    .line 156
    const-string v15, "BYTE_ARR"

    .line 158
    invoke-direct {v12, v15, v13, v14}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 160
    sput-object v12, Lcom/miui/maml/data/VariableType;->BYTE_ARR:Lcom/miui/maml/data/VariableType;

    .line 163
    new-instance v13, Lcom/miui/maml/data/VariableType;

    .line 165
    move-object v12, v13

    .line 167
    const/16 v14, 0xc

    .line 168
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 170
    move-object/from16 v18, v0

    .line 172
    const-string v0, "LONG_ARR"

    .line 174
    invoke-direct {v13, v0, v14, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 176
    sput-object v13, Lcom/miui/maml/data/VariableType;->LONG_ARR:Lcom/miui/maml/data/VariableType;

    .line 179
    new-instance v0, Lcom/miui/maml/data/VariableType;

    .line 181
    move-object v13, v0

    .line 183
    const/16 v14, 0xd

    .line 184
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 186
    move-object/from16 v19, v1

    .line 188
    const-string v1, "BOOLEAN_ARR"

    .line 190
    invoke-direct {v0, v1, v14, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 192
    sput-object v0, Lcom/miui/maml/data/VariableType;->BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

    .line 195
    new-instance v0, Lcom/miui/maml/data/VariableType;

    .line 197
    move-object/from16 v1, v16

    .line 199
    move-object v14, v0

    .line 201
    const/16 v15, 0xe

    .line 202
    move-object/from16 v20, v2

    .line 204
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 206
    move-object/from16 v21, v3

    .line 208
    const-string v3, "CHAR_ARR"

    .line 210
    invoke-direct {v0, v3, v15, v2}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 212
    sput-object v0, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    .line 215
    new-instance v0, Lcom/miui/maml/data/VariableType;

    .line 217
    move-object/from16 v2, v17

    .line 219
    move-object v15, v0

    .line 221
    const-string v3, "STR_ARR"

    .line 222
    move-object/from16 v17, v4

    .line 224
    const/16 v4, 0xf

    .line 226
    invoke-direct {v0, v3, v4, v2}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 228
    sput-object v0, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    .line 231
    new-instance v0, Lcom/miui/maml/data/VariableType;

    .line 233
    move-object/from16 v16, v0

    .line 235
    const-string v2, "OBJ_ARR"

    .line 237
    const/16 v3, 0x10

    .line 239
    invoke-direct {v0, v2, v3, v1}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 241
    sput-object v0, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    .line 244
    move-object/from16 v4, v17

    .line 246
    move-object/from16 v0, v18

    .line 248
    move-object/from16 v1, v19

    .line 250
    move-object/from16 v2, v20

    .line 252
    move-object/from16 v3, v21

    .line 254
    filled-new-array/range {v0 .. v16}, [Lcom/miui/maml/data/VariableType;

    .line 256
    move-result-object v0

    .line 259
    sput-object v0, Lcom/miui/maml/data/VariableType;->$VALUES:[Lcom/miui/maml/data/VariableType;

    .line 260
    return-void
    .line 262
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 5
    return-void
    .line 7
.end method

.method public static parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;
    .locals 1

    .line 1
    const-string v0, "number"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 10
    return-object p0

    .line 12
    :cond_0
    const-string/jumbo v0, "string"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    sget-object p0, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    .line 22
    return-object p0

    .line 24
    :cond_1
    const-string v0, "object"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    sget-object p0, Lcom/miui/maml/data/VariableType;->OBJ:Lcom/miui/maml/data/VariableType;

    .line 33
    return-object p0

    .line 35
    :cond_2
    const-string v0, "jsonO"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    sget-object p0, Lcom/miui/maml/data/VariableType;->JSONO:Lcom/miui/maml/data/VariableType;

    .line 44
    return-object p0

    .line 46
    :cond_3
    const-string v0, "jsonA"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    sget-object p0, Lcom/miui/maml/data/VariableType;->JSONA:Lcom/miui/maml/data/VariableType;

    .line 55
    return-object p0

    .line 57
    :cond_4
    const-string v0, "number[]"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 66
    return-object p0

    .line 68
    :cond_5
    const-string v0, "double[]"

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    sget-object p0, Lcom/miui/maml/data/VariableType;->DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

    .line 77
    return-object p0

    .line 79
    :cond_6
    const-string v0, "float[]"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 85
    if-eqz v0, :cond_7

    .line 86
    sget-object p0, Lcom/miui/maml/data/VariableType;->FLOAT_ARR:Lcom/miui/maml/data/VariableType;

    .line 88
    return-object p0

    .line 90
    :cond_7
    const-string v0, "int[]"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_8

    .line 97
    sget-object p0, Lcom/miui/maml/data/VariableType;->INT_ARR:Lcom/miui/maml/data/VariableType;

    .line 99
    return-object p0

    .line 101
    :cond_8
    const-string/jumbo v0, "short[]"

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    move-result v0

    .line 108
    if-eqz v0, :cond_9

    .line 109
    sget-object p0, Lcom/miui/maml/data/VariableType;->SHORT_ARR:Lcom/miui/maml/data/VariableType;

    .line 111
    return-object p0

    .line 113
    :cond_9
    const-string v0, "byte[]"

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    move-result v0

    .line 119
    if-eqz v0, :cond_a

    .line 120
    sget-object p0, Lcom/miui/maml/data/VariableType;->BYTE_ARR:Lcom/miui/maml/data/VariableType;

    .line 122
    return-object p0

    .line 124
    :cond_a
    const-string v0, "long[]"

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    move-result v0

    .line 130
    if-eqz v0, :cond_b

    .line 131
    sget-object p0, Lcom/miui/maml/data/VariableType;->LONG_ARR:Lcom/miui/maml/data/VariableType;

    .line 133
    return-object p0

    .line 135
    :cond_b
    const-string v0, "boolean[]"

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 138
    move-result v0

    .line 141
    if-eqz v0, :cond_c

    .line 142
    sget-object p0, Lcom/miui/maml/data/VariableType;->BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

    .line 144
    return-object p0

    .line 146
    :cond_c
    const-string v0, "char[]"

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    move-result v0

    .line 152
    if-eqz v0, :cond_d

    .line 153
    sget-object p0, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    .line 155
    return-object p0

    .line 157
    :cond_d
    const-string/jumbo v0, "string[]"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 161
    move-result v0

    .line 164
    if-eqz v0, :cond_e

    .line 165
    sget-object p0, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    .line 167
    return-object p0

    .line 169
    :cond_e
    const-string v0, "object[]"

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 172
    move-result p0

    .line 175
    if-eqz p0, :cond_f

    .line 176
    sget-object p0, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    .line 178
    return-object p0

    .line 180
    :cond_f
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 181
    return-object p0
    .line 183
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/data/VariableType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/VariableType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/data/VariableType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/VariableType;->$VALUES:[Lcom/miui/maml/data/VariableType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/data/VariableType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/VariableType;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public isArray()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result p0

    .line 17
    sget-object v0, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v0

    .line 23
    if-gt p0, v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public isNumber()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 2
    if-ne p0, v0, :cond_0

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
.end method

.method public isNumberArray()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result p0

    .line 17
    sget-object v0, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v0

    .line 23
    if-gt p0, v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public isNumberOrStringArray()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result p0

    .line 17
    sget-object v0, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v0

    .line 23
    if-gt p0, v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method
