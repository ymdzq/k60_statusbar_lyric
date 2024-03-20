.class public Lmiuix/animation/font/VarFontUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DEFAULT_WGHT:I = 0x32

.field private static final FORMAT_WGHT:Ljava/lang/String; = "\'wght\' "

.field private static final IS_USING_VAR_FONT:Z

.field private static final KEY_FONT_WEIGHT:Ljava/lang/String; = "key_miui_font_weight_scale"

.field public static final MIN_WGHT:I

.field private static final MITYPE_WGHT:[I

.field private static final MIUI_WGHT:[I

.field private static final RULES:[[[I

.field private static final THEME_FONT_DIR:Ljava/lang/String; = "/data/system/theme/fonts/"


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    invoke-static {}, Lmiuix/animation/font/VarFontUtils;->isUsingThemeFont()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x6

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lmiuix/device/DeviceUtils;->getTotalRam()I

    .line 11
    move-result v0

    .line 14
    if-le v0, v2, :cond_0

    .line 15
    invoke-static {}, Lmiuix/animation/font/VarFontUtils;->isFontAnimDisabled()Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel()I

    .line 23
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v3

    .line 31
    :goto_0
    sput-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    .line 32
    if-eqz v0, :cond_1

    .line 34
    const/16 v0, 0xa

    .line 36
    new-array v4, v0, [I

    .line 38
    fill-array-data v4, :array_0

    .line 40
    sput-object v4, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    .line 43
    new-array v4, v0, [I

    .line 45
    fill-array-data v4, :array_1

    .line 47
    sput-object v4, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    .line 50
    sput v0, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    .line 52
    const/4 v0, 0x3

    .line 54
    new-array v4, v0, [[[I

    .line 55
    sput-object v4, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    .line 57
    const/4 v5, 0x5

    .line 59
    filled-new-array {v3, v5}, [I

    .line 60
    move-result-object v6

    .line 63
    filled-new-array {v3, v5}, [I

    .line 64
    move-result-object v7

    .line 67
    filled-new-array {v1, v2}, [I

    .line 68
    move-result-object v8

    .line 71
    const/4 v15, 0x2

    .line 72
    filled-new-array {v15, v2}, [I

    .line 73
    move-result-object v9

    .line 76
    const/4 v14, 0x7

    .line 77
    filled-new-array {v15, v14}, [I

    .line 78
    move-result-object v10

    .line 81
    const/16 v13, 0x8

    .line 82
    filled-new-array {v0, v13}, [I

    .line 84
    move-result-object v11

    .line 87
    const/4 v12, 0x4

    .line 88
    filled-new-array {v12, v13}, [I

    .line 89
    move-result-object v16

    .line 92
    const/16 v1, 0x9

    .line 93
    filled-new-array {v5, v1}, [I

    .line 95
    move-result-object v17

    .line 98
    filled-new-array {v2, v1}, [I

    .line 99
    move-result-object v18

    .line 102
    filled-new-array {v14, v1}, [I

    .line 103
    move-result-object v19

    .line 106
    move v1, v12

    .line 107
    move-object/from16 v12, v16

    .line 108
    move-object/from16 v13, v17

    .line 110
    move-object/from16 v14, v18

    .line 112
    move v2, v15

    .line 114
    move-object/from16 v15, v19

    .line 115
    filled-new-array/range {v6 .. v15}, [[I

    .line 117
    move-result-object v6

    .line 120
    aput-object v6, v4, v3

    .line 121
    filled-new-array {v3, v2}, [I

    .line 123
    move-result-object v22

    .line 126
    filled-new-array {v3, v0}, [I

    .line 127
    move-result-object v23

    .line 130
    const/4 v6, 0x1

    .line 131
    filled-new-array {v6, v1}, [I

    .line 132
    move-result-object v24

    .line 135
    filled-new-array {v6, v5}, [I

    .line 136
    move-result-object v25

    .line 139
    const/4 v6, 0x6

    .line 140
    filled-new-array {v2, v6}, [I

    .line 141
    move-result-object v26

    .line 144
    const/4 v7, 0x7

    .line 145
    filled-new-array {v2, v7}, [I

    .line 146
    move-result-object v27

    .line 149
    const/16 v8, 0x8

    .line 150
    filled-new-array {v0, v8}, [I

    .line 152
    move-result-object v28

    .line 155
    const/16 v9, 0x9

    .line 156
    filled-new-array {v1, v9}, [I

    .line 158
    move-result-object v29

    .line 161
    filled-new-array {v5, v9}, [I

    .line 162
    move-result-object v30

    .line 165
    filled-new-array {v6, v9}, [I

    .line 166
    move-result-object v31

    .line 169
    filled-new-array/range {v22 .. v31}, [[I

    .line 170
    move-result-object v6

    .line 173
    const/4 v9, 0x1

    .line 174
    aput-object v6, v4, v9

    .line 175
    filled-new-array {v3, v5}, [I

    .line 177
    move-result-object v20

    .line 180
    filled-new-array {v9, v5}, [I

    .line 181
    move-result-object v21

    .line 184
    filled-new-array {v2, v5}, [I

    .line 185
    move-result-object v22

    .line 188
    const/4 v3, 0x6

    .line 189
    filled-new-array {v0, v3}, [I

    .line 190
    move-result-object v23

    .line 193
    filled-new-array {v0, v3}, [I

    .line 194
    move-result-object v24

    .line 197
    filled-new-array {v1, v7}, [I

    .line 198
    move-result-object v25

    .line 201
    filled-new-array {v5, v8}, [I

    .line 202
    move-result-object v26

    .line 205
    filled-new-array {v3, v8}, [I

    .line 206
    move-result-object v27

    .line 209
    filled-new-array {v7, v8}, [I

    .line 210
    move-result-object v28

    .line 213
    const/16 v0, 0x9

    .line 214
    filled-new-array {v8, v0}, [I

    .line 216
    move-result-object v29

    .line 219
    filled-new-array/range {v20 .. v29}, [[I

    .line 220
    move-result-object v0

    .line 223
    aput-object v0, v4, v2

    .line 224
    goto :goto_1

    .line 226
    :cond_1
    sput v3, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    .line 227
    new-array v0, v3, [I

    .line 229
    sput-object v0, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    .line 231
    sput-object v0, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    .line 233
    new-array v0, v3, [[[I

    .line 235
    sput-object v0, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    .line 237
    :goto_1
    return-void

    .line 239
    :array_0
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x154
        0x190
        0x1e0
        0x21c
        0x276
        0x2bc
    .end array-data

    .line 240
    :array_1
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data
    .line 264
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaleWeight(IFII)I
    .locals 3

    .line 1
    sget-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lmiuix/animation/font/VarFontUtils;->getWeightRange(IF)[I

    .line 7
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    aget v0, p1, v0

    .line 12
    invoke-static {v0, p2}, Lmiuix/animation/font/VarFontUtils;->getWeightByType(II)I

    .line 14
    move-result v0

    .line 17
    invoke-static {p0, p2}, Lmiuix/animation/font/VarFontUtils;->getWeightByType(II)I

    .line 18
    move-result p0

    .line 21
    const/4 v1, 0x1

    .line 22
    aget p1, p1, v1

    .line 23
    invoke-static {p1, p2}, Lmiuix/animation/font/VarFontUtils;->getWeightByType(II)I

    .line 25
    move-result p1

    .line 28
    const/high16 p2, 0x3f800000    # 1.0f

    .line 29
    const/high16 v1, 0x42480000    # 50.0f

    .line 31
    const/16 v2, 0x32

    .line 33
    if-ge p3, v2, :cond_1

    .line 35
    int-to-float p1, p3

    .line 37
    div-float/2addr p1, v1

    .line 38
    sub-float/2addr p2, p1

    .line 39
    int-to-float p3, v0

    .line 40
    mul-float/2addr p2, p3

    .line 41
    int-to-float p0, p0

    .line 42
    mul-float/2addr p1, p0

    .line 43
    add-float/2addr p1, p2

    .line 44
    float-to-int p0, p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-le p3, v2, :cond_2

    .line 47
    sub-int/2addr p3, v2

    .line 49
    int-to-float p3, p3

    .line 50
    div-float/2addr p3, v1

    .line 51
    sub-float/2addr p2, p3

    .line 52
    int-to-float p0, p0

    .line 53
    mul-float/2addr p2, p0

    .line 54
    int-to-float p0, p1

    .line 55
    mul-float/2addr p3, p0

    .line 56
    add-float/2addr p3, p2

    .line 57
    float-to-int p0, p3

    .line 58
    :cond_2
    :goto_0
    return p0
    .line 59
.end method

.method public static getSysFontScale(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "key_miui_font_weight_scale"

    .line 6
    const/16 v1, 0x32

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method private static getWeightArray(I)[I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    .line 9
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    .line 12
    :goto_1
    return-object p0
    .line 14
.end method

.method private static getWeightByType(II)I
    .locals 0

    .line 1
    invoke-static {p1}, Lmiuix/animation/font/VarFontUtils;->getWeightArray(I)[I

    .line 2
    move-result-object p1

    .line 5
    aget p0, p1, p0

    .line 6
    return p0
    .line 8
.end method

.method private static getWeightRange(IF)[I
    .locals 1

    .line 1
    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-lez v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    cmpl-float v0, p1, v0

    .line 11
    if-lez v0, :cond_1

    .line 13
    const/high16 v0, 0x41400000    # 12.0f

    .line 15
    cmpg-float p1, p1, v0

    .line 17
    if-gez p1, :cond_1

    .line 19
    const/4 p1, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    sget-object v0, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    .line 24
    aget-object p1, v0, p1

    .line 26
    aget-object p0, p1, p0

    .line 28
    return-object p0
    .line 30
.end method

.method private static isFontAnimDisabled()Z
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "ro.miui.ui.font.animation"

    .line 2
    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "disable"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "miuix_anim"

    .line 16
    const-string v2, "isFontAnimationEnabled failed"

    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    const/4 v0, 0x0

    .line 23
    return v0
    .line 24
.end method

.method private static isUsingThemeFont()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    const-string v1, "/data/system/theme/fonts/"

    .line 4
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-lez v0, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v2, "miuix_anim"

    .line 28
    const-string v3, "isUsingThemeFont, failed to check theme font directory"

    .line 30
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :cond_1
    return v1
    .line 35
.end method

.method public static setVariationFont(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "\'wght\' "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 20
    :cond_0
    return-void
    .line 23
.end method
