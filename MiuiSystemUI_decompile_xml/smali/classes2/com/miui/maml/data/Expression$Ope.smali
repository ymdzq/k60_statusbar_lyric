.class final enum Lcom/miui/maml/data/Expression$Ope;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/Expression$Ope;

.field public static final enum ADD:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum AND:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_AND:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_OR:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum DIV:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum EQ:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum GE:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum GT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum INVALID:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum LE:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum LT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MIN:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MOD:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MUL:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum NEQ:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum NOT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum OR:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v1, Lcom/miui/maml/data/Expression$Ope;

    .line 2
    move-object v0, v1

    .line 4
    const-string v2, "ADD"

    .line 5
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 8
    sput-object v1, Lcom/miui/maml/data/Expression$Ope;->ADD:Lcom/miui/maml/data/Expression$Ope;

    .line 11
    new-instance v2, Lcom/miui/maml/data/Expression$Ope;

    .line 13
    move-object v1, v2

    .line 15
    const-string v3, "MIN"

    .line 16
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v2, Lcom/miui/maml/data/Expression$Ope;->MIN:Lcom/miui/maml/data/Expression$Ope;

    .line 22
    new-instance v3, Lcom/miui/maml/data/Expression$Ope;

    .line 24
    move-object v2, v3

    .line 26
    const-string v4, "MUL"

    .line 27
    const/4 v5, 0x2

    .line 29
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v3, Lcom/miui/maml/data/Expression$Ope;->MUL:Lcom/miui/maml/data/Expression$Ope;

    .line 33
    new-instance v4, Lcom/miui/maml/data/Expression$Ope;

    .line 35
    move-object v3, v4

    .line 37
    const-string v5, "DIV"

    .line 38
    const/4 v6, 0x3

    .line 40
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v4, Lcom/miui/maml/data/Expression$Ope;->DIV:Lcom/miui/maml/data/Expression$Ope;

    .line 44
    new-instance v5, Lcom/miui/maml/data/Expression$Ope;

    .line 46
    move-object v4, v5

    .line 48
    const-string v6, "MOD"

    .line 49
    const/4 v7, 0x4

    .line 51
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v5, Lcom/miui/maml/data/Expression$Ope;->MOD:Lcom/miui/maml/data/Expression$Ope;

    .line 55
    new-instance v6, Lcom/miui/maml/data/Expression$Ope;

    .line 57
    move-object v5, v6

    .line 59
    const-string v7, "BIT_AND"

    .line 60
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v6, Lcom/miui/maml/data/Expression$Ope;->BIT_AND:Lcom/miui/maml/data/Expression$Ope;

    .line 66
    new-instance v7, Lcom/miui/maml/data/Expression$Ope;

    .line 68
    move-object v6, v7

    .line 70
    const-string v8, "BIT_OR"

    .line 71
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 74
    sput-object v7, Lcom/miui/maml/data/Expression$Ope;->BIT_OR:Lcom/miui/maml/data/Expression$Ope;

    .line 77
    new-instance v8, Lcom/miui/maml/data/Expression$Ope;

    .line 79
    move-object v7, v8

    .line 81
    const-string v9, "BIT_XOR"

    .line 82
    const/4 v10, 0x7

    .line 84
    invoke-direct {v8, v9, v10}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v8, Lcom/miui/maml/data/Expression$Ope;->BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

    .line 88
    new-instance v9, Lcom/miui/maml/data/Expression$Ope;

    .line 90
    move-object v8, v9

    .line 92
    const-string v10, "BIT_NOT"

    .line 93
    const/16 v11, 0x8

    .line 95
    invoke-direct {v9, v10, v11}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 97
    sput-object v9, Lcom/miui/maml/data/Expression$Ope;->BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 100
    new-instance v10, Lcom/miui/maml/data/Expression$Ope;

    .line 102
    move-object v9, v10

    .line 104
    const-string v11, "BIT_LSHIFT"

    .line 105
    const/16 v12, 0x9

    .line 107
    invoke-direct {v10, v11, v12}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 109
    sput-object v10, Lcom/miui/maml/data/Expression$Ope;->BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 112
    new-instance v11, Lcom/miui/maml/data/Expression$Ope;

    .line 114
    move-object v10, v11

    .line 116
    const-string v12, "BIT_RSHIFT"

    .line 117
    const/16 v13, 0xa

    .line 119
    invoke-direct {v11, v12, v13}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v11, Lcom/miui/maml/data/Expression$Ope;->BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 124
    new-instance v12, Lcom/miui/maml/data/Expression$Ope;

    .line 126
    move-object v11, v12

    .line 128
    const-string v13, "NOT"

    .line 129
    const/16 v14, 0xb

    .line 131
    invoke-direct {v12, v13, v14}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 133
    sput-object v12, Lcom/miui/maml/data/Expression$Ope;->NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 136
    new-instance v13, Lcom/miui/maml/data/Expression$Ope;

    .line 138
    move-object v12, v13

    .line 140
    const-string v14, "EQ"

    .line 141
    const/16 v15, 0xc

    .line 143
    invoke-direct {v13, v14, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v13, Lcom/miui/maml/data/Expression$Ope;->EQ:Lcom/miui/maml/data/Expression$Ope;

    .line 148
    new-instance v14, Lcom/miui/maml/data/Expression$Ope;

    .line 150
    move-object v13, v14

    .line 152
    const-string v15, "NEQ"

    .line 153
    move-object/from16 v21, v0

    .line 155
    const/16 v0, 0xd

    .line 157
    invoke-direct {v14, v15, v0}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 159
    sput-object v14, Lcom/miui/maml/data/Expression$Ope;->NEQ:Lcom/miui/maml/data/Expression$Ope;

    .line 162
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 164
    move-object v14, v0

    .line 166
    const-string v15, "AND"

    .line 167
    move-object/from16 v22, v1

    .line 169
    const/16 v1, 0xe

    .line 171
    invoke-direct {v0, v15, v1}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 173
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->AND:Lcom/miui/maml/data/Expression$Ope;

    .line 176
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 178
    move-object v15, v0

    .line 180
    const-string v1, "OR"

    .line 181
    move-object/from16 v23, v2

    .line 183
    const/16 v2, 0xf

    .line 185
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 187
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->OR:Lcom/miui/maml/data/Expression$Ope;

    .line 190
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 192
    move-object/from16 v16, v0

    .line 194
    const-string v1, "GT"

    .line 196
    const/16 v2, 0x10

    .line 198
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 200
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->GT:Lcom/miui/maml/data/Expression$Ope;

    .line 203
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 205
    move-object/from16 v17, v0

    .line 207
    const-string v1, "GE"

    .line 209
    const/16 v2, 0x11

    .line 211
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 213
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->GE:Lcom/miui/maml/data/Expression$Ope;

    .line 216
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 218
    move-object/from16 v18, v0

    .line 220
    const-string v1, "LT"

    .line 222
    const/16 v2, 0x12

    .line 224
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 226
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->LT:Lcom/miui/maml/data/Expression$Ope;

    .line 229
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 231
    move-object/from16 v19, v0

    .line 233
    const-string v1, "LE"

    .line 235
    const/16 v2, 0x13

    .line 237
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 239
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->LE:Lcom/miui/maml/data/Expression$Ope;

    .line 242
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 244
    move-object/from16 v20, v0

    .line 246
    const-string v1, "INVALID"

    .line 248
    const/16 v2, 0x14

    .line 250
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 252
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 255
    move-object/from16 v0, v21

    .line 257
    move-object/from16 v1, v22

    .line 259
    move-object/from16 v2, v23

    .line 261
    filled-new-array/range {v0 .. v20}, [Lcom/miui/maml/data/Expression$Ope;

    .line 263
    move-result-object v0

    .line 266
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->$VALUES:[Lcom/miui/maml/data/Expression$Ope;

    .line 267
    return-void
    .line 269
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/Expression$Ope;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/data/Expression$Ope;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/Expression$Ope;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/data/Expression$Ope;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->$VALUES:[Lcom/miui/maml/data/Expression$Ope;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/data/Expression$Ope;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/Expression$Ope;

    .line 8
    return-object v0
    .line 10
.end method
