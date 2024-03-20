.class public final Lcom/android/systemui/statusbar/BatteryIcon;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBatteryColumns:I

.field public mChargeDarkLevel:I

.field public mChargeDigitDarkLevel:I

.field public mChargeDigitLevel:I

.field public mChargeLevel:I

.field public final mContext:Landroid/content/Context;

.field public mDarkLevel:I

.field public mDigitalDarkLevel:I

.field public mDigitalLevel:I

.field public mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPerformanceModeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPerformanceModeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPerformanceModeIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPerformanceModeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPowerSaveDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPowerSaveDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

.field public mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field public final mGraphicRes2Drawables:Landroid/util/SparseArray;

.field public mLevel:I

.field public mPerformanceModeDarkLevel:I

.field public mPerformanceModeDigitDarkLevel:I

.field public mPerformanceModeDigitLevel:I

.field public mPerformanceModeLevel:I

.field public mPowerSaveDarkLevel:I

.field public mPowerSaveDigitDarkLevel:I

.field public mPowerSaveDigitLevel:I

.field public mPowerSaveLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    .line 10
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mLevel:I

    .line 13
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mDarkLevel:I

    .line 15
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalLevel:I

    .line 17
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalDarkLevel:I

    .line 19
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeLevel:I

    .line 21
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDarkLevel:I

    .line 23
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitLevel:I

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitDarkLevel:I

    .line 27
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveLevel:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDarkLevel:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitLevel:I

    .line 33
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitDarkLevel:I

    .line 35
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeLevel:I

    .line 37
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDarkLevel:I

    .line 39
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitLevel:I

    .line 41
    iput v0, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitDarkLevel:I

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p1

    .line 50
    const v0, 0x7f0b000c    # @integer/battery_columns '1'

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 54
    move-result p1

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/BatteryIcon;->mBatteryColumns:I

    .line 58
    return-void
    .line 60
.end method


# virtual methods
.method public final generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    move/from16 v2, p1

    .line 4
    new-instance v3, Landroid/graphics/drawable/LevelListDrawable;

    .line 6
    invoke-direct {v3}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 8
    iget-object v4, v1, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    .line 11
    const/4 v5, 0x0

    .line 13
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    const/4 v6, 0x0

    .line 20
    if-nez v0, :cond_6

    .line 21
    new-instance v7, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v0, v1, Lcom/android/systemui/statusbar/BatteryIcon;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v8

    .line 33
    new-instance v9, Landroid/util/TypedValue;

    .line 34
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 36
    invoke-virtual {v8, v2, v9}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 43
    move-result-object v18

    .line 46
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object v10, v0

    .line 52
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :goto_0
    if-nez v18, :cond_0

    .line 56
    goto/16 :goto_4

    .line 58
    :cond_0
    iget v0, v9, Landroid/util/TypedValue;->density:I

    .line 60
    const/16 v9, 0xf0

    .line 62
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result v0

    .line 67
    if-ne v0, v9, :cond_1

    .line 68
    const/16 v9, 0x26

    .line 70
    goto :goto_1

    .line 72
    :cond_1
    const/16 v9, 0x140

    .line 73
    if-ne v0, v9, :cond_2

    .line 75
    const/16 v9, 0x32

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    const/16 v9, 0x280

    .line 80
    if-ne v0, v9, :cond_3

    .line 82
    const/16 v9, 0x48

    .line 84
    goto :goto_1

    .line 86
    :cond_3
    const/16 v9, 0x3c

    .line 87
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    .line 89
    move-result v10

    .line 92
    iget v1, v1, Lcom/android/systemui/statusbar/BatteryIcon;->mBatteryColumns:I

    .line 93
    div-int v1, v10, v1

    .line 95
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    .line 97
    move-result v10

    .line 100
    div-int v15, v10, v9

    .line 101
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    .line 103
    move-result v10

    .line 106
    div-int v14, v10, v1

    .line 107
    mul-int v10, v9, v1

    .line 109
    new-array v13, v10, [I

    .line 111
    move v12, v6

    .line 113
    :goto_2
    if-ge v12, v15, :cond_5

    .line 114
    move v11, v6

    .line 116
    :goto_3
    if-ge v11, v14, :cond_4

    .line 117
    const/16 v16, 0x0

    .line 119
    mul-int v17, v11, v1

    .line 121
    mul-int v19, v12, v9

    .line 123
    move-object/from16 v10, v18

    .line 125
    move/from16 v20, v11

    .line 127
    move-object v11, v13

    .line 129
    move/from16 v21, v12

    .line 130
    move/from16 v12, v16

    .line 132
    move-object/from16 v22, v13

    .line 134
    move v13, v1

    .line 136
    move/from16 v23, v14

    .line 137
    move/from16 v14, v17

    .line 139
    move/from16 v24, v15

    .line 141
    move/from16 v15, v19

    .line 143
    move/from16 v16, v1

    .line 145
    move/from16 v17, v9

    .line 147
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 149
    const/4 v11, 0x0

    .line 152
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 153
    move-object/from16 v10, v22

    .line 155
    move v12, v1

    .line 157
    move v14, v9

    .line 158
    invoke-static/range {v10 .. v15}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 159
    move-result-object v10

    .line 162
    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 163
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    invoke-direct {v11, v8, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 168
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v11, v20, 0x1

    .line 174
    move/from16 v12, v21

    .line 176
    move-object/from16 v13, v22

    .line 178
    move/from16 v14, v23

    .line 180
    move/from16 v15, v24

    .line 182
    goto :goto_3

    .line 184
    :cond_4
    move/from16 v21, v12

    .line 185
    move-object/from16 v22, v13

    .line 187
    move/from16 v23, v14

    .line 189
    move/from16 v24, v15

    .line 191
    add-int/lit8 v12, v21, 0x1

    .line 193
    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    :goto_4
    invoke-virtual {v4, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    move-object v0, v7

    .line 202
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 203
    move-result v1

    .line 206
    if-lez v1, :cond_d

    .line 207
    const/high16 v2, 0x42c80000    # 100.0f

    .line 209
    int-to-float v4, v1

    .line 211
    div-float/2addr v2, v4

    .line 212
    if-eqz p3, :cond_7

    .line 213
    move/from16 v4, p2

    .line 215
    goto :goto_5

    .line 217
    :cond_7
    add-int/lit8 v4, p2, -0xa

    .line 218
    if-gez v4, :cond_8

    .line 220
    move v4, v6

    .line 222
    :cond_8
    :goto_5
    if-eqz p3, :cond_9

    .line 223
    add-int/lit8 v7, p2, 0xa

    .line 225
    const/16 v8, 0x64

    .line 227
    if-le v7, v8, :cond_a

    .line 229
    move v7, v8

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    move/from16 v7, p2

    .line 233
    :cond_a
    :goto_6
    const v8, 0x3ecccccd    # 0.4f

    .line 235
    :goto_7
    if-ge v6, v1, :cond_d

    .line 238
    float-to-int v9, v8

    .line 240
    add-float/2addr v8, v2

    .line 241
    float-to-int v10, v8

    .line 242
    if-lt v10, v4, :cond_c

    .line 243
    if-le v9, v7, :cond_b

    .line 245
    goto :goto_8

    .line 247
    :cond_b
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v11

    .line 251
    check-cast v11, Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {v3, v9, v10, v11}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 254
    goto :goto_9

    .line 257
    :cond_c
    :goto_8
    invoke-virtual {v3, v9, v10, v5}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 258
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 261
    goto :goto_7

    .line 263
    :cond_d
    const/4 v0, 0x1

    .line 264
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/LevelListDrawable;->setAutoMirrored(Z)V

    .line 265
    return-object v3
    .line 268
.end method
