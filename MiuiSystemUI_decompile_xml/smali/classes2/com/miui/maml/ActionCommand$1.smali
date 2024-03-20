.class synthetic Lcom/miui/maml/ActionCommand$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$SoundManager$Command:[I

.field static final synthetic $SwitchMap$com$miui$maml$data$VariableType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    sput-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 9
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 21
    sget-object v3, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :catch_1
    const/4 v2, 0x3

    .line 31
    :try_start_2
    sget-object v3, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 32
    sget-object v4, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 34
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 36
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    :catch_2
    const/4 v3, 0x4

    .line 42
    :try_start_3
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 43
    sget-object v5, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 45
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 47
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    :catch_3
    const/4 v4, 0x5

    .line 53
    :try_start_4
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 54
    sget-object v6, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 56
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 58
    move-result v6

    .line 61
    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 62
    :catch_4
    invoke-static {}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 64
    move-result-object v5

    .line 67
    array-length v5, v5

    .line 68
    new-array v5, v5, [I

    .line 69
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    .line 71
    :try_start_5
    sget-object v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 73
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 75
    move-result v6

    .line 78
    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 79
    :catch_5
    :try_start_6
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    .line 81
    sget-object v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 83
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 85
    move-result v6

    .line 88
    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 89
    :catch_6
    :try_start_7
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    .line 91
    sget-object v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 93
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 95
    move-result v6

    .line 98
    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 99
    :catch_7
    :try_start_8
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    .line 101
    sget-object v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 103
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 105
    move-result v6

    .line 108
    aput v3, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 109
    :catch_8
    :try_start_9
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    .line 111
    sget-object v6, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 113
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 115
    move-result v6

    .line 118
    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 119
    :catch_9
    invoke-static {}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->values()[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 121
    move-result-object v5

    .line 124
    array-length v5, v5

    .line 125
    new-array v5, v5, [I

    .line 126
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 128
    :try_start_a
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 130
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 132
    move-result v6

    .line 135
    aput v1, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 136
    :catch_a
    :try_start_b
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 138
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 140
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 142
    move-result v6

    .line 145
    aput v0, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 146
    :catch_b
    :try_start_c
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 148
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 150
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 152
    move-result v6

    .line 155
    aput v2, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 156
    :catch_c
    :try_start_d
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 158
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 160
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 162
    move-result v6

    .line 165
    aput v3, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 166
    :catch_d
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->values()[Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 168
    move-result-object v5

    .line 171
    array-length v5, v5

    .line 172
    new-array v5, v5, [I

    .line 173
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 175
    :try_start_e
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 177
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 179
    move-result v6

    .line 182
    aput v1, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 183
    :catch_e
    :try_start_f
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 185
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 187
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 189
    move-result v6

    .line 192
    aput v0, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 193
    :catch_f
    :try_start_10
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 195
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 197
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 199
    move-result v6

    .line 202
    aput v2, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 203
    :catch_10
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->values()[Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 205
    move-result-object v5

    .line 208
    array-length v5, v5

    .line 209
    new-array v5, v5, [I

    .line 210
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 212
    :try_start_11
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 214
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 216
    move-result v6

    .line 219
    aput v1, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 220
    :catch_11
    :try_start_12
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 222
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 224
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 226
    move-result v6

    .line 229
    aput v0, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 230
    :catch_12
    :try_start_13
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 232
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 234
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 236
    move-result v6

    .line 239
    aput v2, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 240
    :catch_13
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 242
    move-result-object v5

    .line 245
    array-length v5, v5

    .line 246
    new-array v5, v5, [I

    .line 247
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 249
    :try_start_14
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 251
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 253
    move-result v6

    .line 256
    aput v1, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 257
    :catch_14
    :try_start_15
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 259
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 261
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 263
    move-result v6

    .line 266
    aput v0, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 267
    :catch_15
    :try_start_16
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 269
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 271
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 273
    move-result v6

    .line 276
    aput v2, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 277
    :catch_16
    :try_start_17
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 279
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 281
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 283
    move-result v6

    .line 286
    aput v3, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 287
    :catch_17
    invoke-static {}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 289
    move-result-object v5

    .line 292
    array-length v5, v5

    .line 293
    new-array v5, v5, [I

    .line 294
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    .line 296
    :try_start_18
    sget-object v6, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 298
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 300
    move-result v6

    .line 303
    aput v1, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 304
    :catch_18
    :try_start_19
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    .line 306
    sget-object v6, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 308
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 310
    move-result v6

    .line 313
    aput v0, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 314
    :catch_19
    invoke-static {}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 316
    move-result-object v5

    .line 319
    array-length v5, v5

    .line 320
    new-array v5, v5, [I

    .line 321
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 323
    :try_start_1a
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 325
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 327
    move-result v6

    .line 330
    aput v1, v5, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 331
    :catch_1a
    :try_start_1b
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 333
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 335
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 337
    move-result v6

    .line 340
    aput v0, v5, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 341
    :catch_1b
    :try_start_1c
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 343
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 345
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 347
    move-result v6

    .line 350
    aput v2, v5, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 351
    :catch_1c
    :try_start_1d
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 353
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 355
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 357
    move-result v6

    .line 360
    aput v3, v5, v6
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 361
    :catch_1d
    :try_start_1e
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 363
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 365
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 367
    move-result v6

    .line 370
    aput v4, v5, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 371
    :catch_1e
    :try_start_1f
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 373
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 375
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 377
    move-result v6

    .line 380
    const/4 v7, 0x6

    .line 381
    aput v7, v5, v6
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 382
    :catch_1f
    :try_start_20
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 384
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 386
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 388
    move-result v6

    .line 391
    const/4 v7, 0x7

    .line 392
    aput v7, v5, v6
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    .line 393
    :catch_20
    :try_start_21
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 395
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 397
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 399
    move-result v6

    .line 402
    const/16 v7, 0x8

    .line 403
    aput v7, v5, v6
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    .line 405
    :catch_21
    :try_start_22
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 407
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 409
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 411
    move-result v6

    .line 414
    const/16 v7, 0x9

    .line 415
    aput v7, v5, v6
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    .line 417
    :catch_22
    :try_start_23
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 419
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 421
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 423
    move-result v6

    .line 426
    const/16 v7, 0xa

    .line 427
    aput v7, v5, v6
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    .line 429
    :catch_23
    :try_start_24
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 431
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 433
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 435
    move-result v6

    .line 438
    const/16 v7, 0xb

    .line 439
    aput v7, v5, v6
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    .line 441
    :catch_24
    :try_start_25
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 443
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 445
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 447
    move-result v6

    .line 450
    const/16 v7, 0xc

    .line 451
    aput v7, v5, v6
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    .line 453
    :catch_25
    :try_start_26
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 455
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 457
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 459
    move-result v6

    .line 462
    const/16 v7, 0xd

    .line 463
    aput v7, v5, v6
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    .line 465
    :catch_26
    :try_start_27
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 467
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 469
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 471
    move-result v6

    .line 474
    const/16 v7, 0xe

    .line 475
    aput v7, v5, v6
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    .line 477
    :catch_27
    invoke-static {}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 479
    move-result-object v5

    .line 482
    array-length v5, v5

    .line 483
    new-array v5, v5, [I

    .line 484
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    .line 486
    :try_start_28
    sget-object v6, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 488
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 490
    move-result v6

    .line 493
    aput v1, v5, v6
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    .line 494
    :catch_28
    invoke-static {}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 496
    move-result-object v5

    .line 499
    array-length v5, v5

    .line 500
    new-array v5, v5, [I

    .line 501
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    .line 503
    :try_start_29
    sget-object v6, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 505
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 507
    move-result v6

    .line 510
    aput v1, v5, v6
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    .line 511
    :catch_29
    :try_start_2a
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    .line 513
    sget-object v6, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 515
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 517
    move-result v6

    .line 520
    aput v0, v5, v6
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 521
    :catch_2a
    invoke-static {}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 523
    move-result-object v5

    .line 526
    array-length v5, v5

    .line 527
    new-array v5, v5, [I

    .line 528
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 530
    :try_start_2b
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 532
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 534
    move-result v6

    .line 537
    aput v1, v5, v6
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 538
    :catch_2b
    :try_start_2c
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 540
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 542
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 544
    move-result v6

    .line 547
    aput v0, v5, v6
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    .line 548
    :catch_2c
    :try_start_2d
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 550
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 552
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 554
    move-result v6

    .line 557
    aput v2, v5, v6
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    .line 558
    :catch_2d
    :try_start_2e
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 560
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 562
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 564
    move-result v6

    .line 567
    aput v3, v5, v6
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    .line 568
    :catch_2e
    :try_start_2f
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 570
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 572
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 574
    move-result v6

    .line 577
    aput v4, v5, v6
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 578
    :catch_2f
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->values()[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 580
    move-result-object v4

    .line 583
    array-length v4, v4

    .line 584
    new-array v4, v4, [I

    .line 585
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 587
    :try_start_30
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 589
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 591
    move-result v5

    .line 594
    aput v1, v4, v5
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    .line 595
    :catch_30
    :try_start_31
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 597
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 599
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 601
    move-result v5

    .line 604
    aput v0, v4, v5
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    .line 605
    :catch_31
    :try_start_32
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 607
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 609
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 611
    move-result v5

    .line 614
    aput v2, v4, v5
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    .line 615
    :catch_32
    :try_start_33
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 617
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 619
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 621
    move-result v5

    .line 624
    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    .line 625
    :catch_33
    invoke-static {}, Lcom/miui/maml/SoundManager$Command;->values()[Lcom/miui/maml/SoundManager$Command;

    .line 627
    move-result-object v4

    .line 630
    array-length v4, v4

    .line 631
    new-array v4, v4, [I

    .line 632
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 634
    :try_start_34
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Play:Lcom/miui/maml/SoundManager$Command;

    .line 636
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 638
    move-result v5

    .line 641
    aput v1, v4, v5
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    .line 642
    :catch_34
    :try_start_35
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 644
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Pause:Lcom/miui/maml/SoundManager$Command;

    .line 646
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 648
    move-result v5

    .line 651
    aput v0, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    .line 652
    :catch_35
    :try_start_36
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 654
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Resume:Lcom/miui/maml/SoundManager$Command;

    .line 656
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 658
    move-result v5

    .line 661
    aput v2, v4, v5
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    .line 662
    :catch_36
    :try_start_37
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 664
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Stop:Lcom/miui/maml/SoundManager$Command;

    .line 666
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 668
    move-result v5

    .line 671
    aput v3, v4, v5
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    .line 672
    :catch_37
    invoke-static {}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 674
    move-result-object v4

    .line 677
    array-length v4, v4

    .line 678
    new-array v4, v4, [I

    .line 679
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 681
    :try_start_38
    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 683
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 685
    move-result v5

    .line 688
    aput v1, v4, v5
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    .line 689
    :catch_38
    :try_start_39
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 691
    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 693
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 695
    move-result v5

    .line 698
    aput v0, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    .line 699
    :catch_39
    :try_start_3a
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 701
    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 703
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 705
    move-result v5

    .line 708
    aput v2, v4, v5
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    .line 709
    :catch_3a
    :try_start_3b
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 711
    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 713
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 715
    move-result v5

    .line 718
    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    .line 719
    :catch_3b
    invoke-static {}, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 721
    move-result-object v4

    .line 724
    array-length v4, v4

    .line 725
    new-array v4, v4, [I

    .line 726
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    .line 728
    :try_start_3c
    sget-object v5, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 730
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 732
    move-result v5

    .line 735
    aput v1, v4, v5
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    .line 736
    :catch_3c
    invoke-static {}, Lcom/miui/maml/data/VariableType;->values()[Lcom/miui/maml/data/VariableType;

    .line 738
    move-result-object v4

    .line 741
    array-length v4, v4

    .line 742
    new-array v4, v4, [I

    .line 743
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 745
    :try_start_3d
    sget-object v5, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 747
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 749
    move-result v5

    .line 752
    aput v1, v4, v5
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    .line 753
    :catch_3d
    :try_start_3e
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 755
    sget-object v4, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    .line 757
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 759
    move-result v4

    .line 762
    aput v0, v1, v4
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    .line 763
    :catch_3e
    :try_start_3f
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 765
    sget-object v1, Lcom/miui/maml/data/VariableType;->JSONO:Lcom/miui/maml/data/VariableType;

    .line 767
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 769
    move-result v1

    .line 772
    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    .line 773
    :catch_3f
    :try_start_40
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 775
    sget-object v1, Lcom/miui/maml/data/VariableType;->JSONA:Lcom/miui/maml/data/VariableType;

    .line 777
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 779
    move-result v1

    .line 782
    aput v3, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    .line 783
    :catch_40
    return-void
    .line 785
.end method
