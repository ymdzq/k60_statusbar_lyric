.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mAllowHandleSolidColor:Z

.field public final mContext:Landroid/content/Context;

.field public mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

.field public mFinalIconSize:I

.field public mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field public mSuggestType:I

.field public mThemeColor:I

.field public mUiThreadInitTask:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 7
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final build()Landroid/window/SplashScreenView;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    .line 4
    const/4 v2, 0x3

    .line 6
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    .line 7
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 9
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 13
    const-wide/16 v8, 0x20

    .line 15
    const/4 v10, 0x0

    .line 17
    if-eq v1, v2, :cond_1d

    .line 18
    const/4 v2, 0x4

    .line 20
    if-eq v1, v2, :cond_1d

    .line 21
    const/4 v2, 0x6

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    goto/16 :goto_e

    .line 26
    :cond_0
    iget-object v1, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 28
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    .line 30
    const v11, 0x3f99999a    # 1.2f

    .line 32
    if-eqz v2, :cond_3

    .line 35
    iget v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 37
    if-eqz v1, :cond_1

    .line 39
    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 41
    if-ne v1, v6, :cond_2

    .line 43
    :cond_1
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 45
    int-to-float v1, v1

    .line 47
    mul-float/2addr v1, v11

    .line 48
    float-to-int v1, v1

    .line 49
    iput v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 50
    :cond_2
    invoke-virtual {v0, v2, v10, v10}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 52
    move-object/from16 v16, v3

    .line 55
    move-object/from16 v23, v4

    .line 57
    goto/16 :goto_f

    .line 59
    :cond_3
    iget v1, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 61
    int-to-float v1, v1

    .line 63
    iget v2, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 64
    int-to-float v2, v2

    .line 66
    div-float/2addr v1, v2

    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 72
    move-result-object v2

    .line 75
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 76
    int-to-float v12, v2

    .line 78
    const/high16 v13, 0x3f000000    # 0.5f

    .line 79
    invoke-static {v1, v12, v11, v13}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 81
    move-result v1

    .line 84
    float-to-int v1, v1

    .line 85
    const-string v11, "getIcon"

    .line 86
    invoke-static {v8, v9, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 88
    iget-object v11, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    .line 91
    iput-boolean v10, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 93
    iget-object v12, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedContext:Landroid/content/Context;

    .line 95
    if-ge v2, v1, :cond_6

    .line 97
    const/16 v13, 0x140

    .line 99
    if-ge v2, v13, :cond_6

    .line 101
    iget-object v13, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    .line 103
    if-nez v13, :cond_4

    .line 105
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object v13

    .line 110
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 111
    move-result-object v13

    .line 114
    invoke-virtual {v12, v13}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 115
    move-result-object v13

    .line 118
    iput-object v13, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    .line 119
    new-instance v13, Lcom/android/launcher3/icons/IconProvider;

    .line 121
    iget-object v14, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    .line 123
    invoke-direct {v13, v14}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 125
    iput-object v13, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 128
    :cond_4
    :try_start_0
    iget-object v13, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 132
    move-result-object v13

    .line 135
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 136
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 138
    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 142
    :catch_0
    move-object v13, v5

    .line 143
    :goto_0
    if-eqz v13, :cond_5

    .line 144
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 146
    move-result-object v14

    .line 149
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 150
    move-result-object v15

    .line 153
    iput v1, v14, Landroid/content/res/Configuration;->densityDpi:I

    .line 154
    iput v1, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 156
    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 158
    :cond_5
    iget-object v14, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 161
    invoke-virtual {v14, v4, v1}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    .line 163
    move-result-object v14

    .line 166
    iput-boolean v6, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 167
    if-eqz v13, :cond_7

    .line 169
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 171
    move-result-object v6

    .line 174
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 175
    move-result-object v15

    .line 178
    iput v2, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 179
    iput v2, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 181
    invoke-virtual {v13, v6, v15}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 183
    goto :goto_1

    .line 186
    :cond_6
    iget-object v2, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 187
    invoke-virtual {v2, v4, v1}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    .line 189
    move-result-object v14

    .line 192
    :cond_7
    :goto_1
    if-nez v14, :cond_8

    .line 193
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 195
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 199
    move-result-object v14

    .line 202
    :cond_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 203
    instance-of v2, v14, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 206
    if-nez v2, :cond_9

    .line 208
    move-object/from16 v16, v3

    .line 210
    move-object/from16 v23, v4

    .line 212
    move v3, v10

    .line 214
    goto/16 :goto_b

    .line 215
    :cond_9
    const-string v2, "processAdaptiveIcon"

    .line 217
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 219
    move-object v2, v14

    .line 222
    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 223
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 225
    move-result-object v6

    .line 228
    iget-object v8, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    .line 229
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 231
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    .line 233
    move-result v12

    .line 236
    iget v13, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    .line 237
    iget-object v15, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    .line 239
    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-result-object v15

    .line 244
    check-cast v15, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    .line 245
    mul-int/lit8 v12, v12, 0x1f

    .line 247
    add-int/2addr v12, v13

    .line 249
    filled-new-array {v10}, [I

    .line 250
    move-result-object v13

    .line 253
    if-eqz v15, :cond_a

    .line 254
    iget-object v8, v15, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mIconColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 256
    invoke-static {v8, v12, v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->getCache([Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;I[I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;

    .line 258
    move-result-object v8

    .line 261
    check-cast v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 262
    if-eqz v8, :cond_b

    .line 264
    move-object/from16 v23, v4

    .line 266
    goto/16 :goto_7

    .line 268
    :cond_a
    new-instance v15, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    .line 270
    invoke-direct {v15}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;-><init>()V

    .line 272
    iget-object v8, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    .line 275
    invoke-virtual {v8, v9, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_b
    instance-of v8, v6, Landroid/graphics/drawable/LayerDrawable;

    .line 280
    const v9, 0x1989e980

    .line 282
    if-eqz v8, :cond_d

    .line 285
    move-object v8, v6

    .line 287
    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    .line 288
    invoke-virtual {v8}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 290
    move-result v16

    .line 293
    if-lez v16, :cond_d

    .line 294
    sget-boolean v16, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 296
    move-object/from16 v23, v4

    .line 298
    if-eqz v16, :cond_c

    .line 300
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 302
    invoke-static {v4, v9, v10, v5, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :cond_c
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 307
    move-result-object v4

    .line 310
    goto :goto_2

    .line 311
    :cond_d
    move-object/from16 v23, v4

    .line 312
    move-object v4, v6

    .line 314
    :goto_2
    if-nez v4, :cond_e

    .line 315
    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 317
    sget-object v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->WHITE_LIST_NOT_MODIFY_SPLASHSCREEN:Ljava/util/ArrayList;

    .line 319
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 321
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 323
    move-result v8

    .line 326
    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 327
    invoke-direct {v4, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 330
    goto :goto_4

    .line 333
    :cond_e
    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    .line 334
    if-eqz v5, :cond_f

    .line 336
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 338
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .line 340
    invoke-direct {v5, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 342
    goto :goto_3

    .line 345
    :cond_f
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;

    .line 346
    const/4 v8, 0x2

    .line 348
    invoke-direct {v5, v4, v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 349
    :goto_3
    move-object v4, v5

    .line 352
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 353
    move-result-object v2

    .line 356
    instance-of v5, v2, Landroid/graphics/drawable/LayerDrawable;

    .line 357
    if-eqz v5, :cond_11

    .line 359
    move-object v5, v2

    .line 361
    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 362
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 364
    move-result v8

    .line 367
    if-lez v8, :cond_11

    .line 368
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 370
    if-eqz v2, :cond_10

    .line 372
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 374
    const/4 v8, 0x0

    .line 376
    invoke-static {v2, v9, v10, v8, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_10
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 380
    move-result-object v2

    .line 383
    :cond_11
    if-nez v2, :cond_12

    .line 384
    new-instance v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 386
    sget-object v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->WHITE_LIST_NOT_MODIFY_SPLASHSCREEN:Ljava/util/ArrayList;

    .line 388
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 390
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 392
    move-result v8

    .line 395
    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 396
    invoke-direct {v2, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 399
    goto :goto_6

    .line 402
    :cond_12
    instance-of v5, v2, Landroid/graphics/drawable/ColorDrawable;

    .line 403
    if-eqz v5, :cond_13

    .line 405
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 407
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 409
    invoke-direct {v5, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 411
    goto :goto_5

    .line 414
    :cond_13
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;

    .line 415
    invoke-direct {v5, v2, v10}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 417
    :goto_5
    move-object v2, v5

    .line 420
    :goto_6
    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 421
    invoke-interface {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    .line 423
    move-result v18

    .line 426
    invoke-interface {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    .line 427
    move-result v19

    .line 430
    invoke-interface {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->isComplexColor()Z

    .line 431
    move-result v20

    .line 434
    invoke-interface {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->isGrayscale()Z

    .line 435
    move-result v21

    .line 438
    invoke-interface {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->passFilterRatio()F

    .line 439
    move-result v22

    .line 442
    move-object/from16 v16, v8

    .line 443
    move/from16 v17, v12

    .line 445
    invoke-direct/range {v16 .. v22}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;-><init>(IIIZZF)V

    .line 447
    iget-object v2, v15, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mIconColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 450
    aget v4, v13, v10

    .line 452
    aput-object v8, v2, v4

    .line 454
    :goto_7
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 456
    iget v4, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mBgColor:I

    .line 458
    iget v5, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgColor:I

    .line 460
    iget-boolean v9, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgComplex:Z

    .line 462
    if-eqz v2, :cond_15

    .line 464
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 466
    move-result-object v2

    .line 469
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 470
    move-result-object v2

    .line 473
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 474
    move-result-object v12

    .line 477
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 478
    move-result-object v12

    .line 481
    iget v13, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;->mReuseCount:I

    .line 482
    if-lez v13, :cond_14

    .line 484
    const/4 v10, 0x1

    .line 486
    :cond_14
    iget v13, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 487
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 489
    move-result-object v13

    .line 492
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 493
    move-result-object v13

    .line 496
    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 497
    move-object/from16 v16, v3

    .line 499
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 501
    move-result-object v3

    .line 504
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 505
    move-result-object v10

    .line 508
    filled-new-array {v2, v12, v3, v10, v13}, [Ljava/lang/Object;

    .line 509
    move-result-object v2

    .line 512
    const v3, -0x4403dfe6

    .line 513
    const/16 v10, 0xf0

    .line 516
    const/4 v12, 0x0

    .line 518
    invoke-static {v15, v3, v10, v12, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 519
    goto :goto_8

    .line 522
    :cond_15
    move-object/from16 v16, v3

    .line 523
    :goto_8
    if-nez v9, :cond_19

    .line 525
    iget-object v2, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 527
    iget v2, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 529
    if-nez v2, :cond_19

    .line 531
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 533
    invoke-static {v2, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisRgbSimilarInHsv(II)Z

    .line 535
    move-result v2

    .line 538
    if-nez v2, :cond_16

    .line 539
    iget-boolean v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgGrayscale:Z

    .line 541
    if-eqz v2, :cond_19

    .line 543
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 545
    invoke-static {v2, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisRgbSimilarInHsv(II)Z

    .line 547
    move-result v2

    .line 550
    if-nez v2, :cond_19

    .line 551
    :cond_16
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 553
    if-eqz v2, :cond_17

    .line 555
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 557
    const v3, 0x74d3726b

    .line 559
    const/4 v4, 0x0

    .line 562
    const/4 v5, 0x0

    .line 563
    invoke-static {v2, v3, v5, v4, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 564
    :cond_17
    iget v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgNonTranslucentRatio:F

    .line 567
    const v3, 0x3ee38e39

    .line 569
    cmpg-float v2, v2, v3

    .line 572
    if-gez v2, :cond_18

    .line 574
    const v2, 0x3f99999a    # 1.2f

    .line 576
    goto :goto_9

    .line 579
    :cond_18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 580
    :goto_9
    iget v3, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 582
    int-to-float v3, v3

    .line 584
    mul-float/2addr v3, v2

    .line 585
    const/high16 v2, 0x3f000000    # 0.5f

    .line 586
    add-float/2addr v3, v2

    .line 588
    float-to-int v2, v3

    .line 589
    iput v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 590
    iget-boolean v2, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 592
    const/4 v3, 0x0

    .line 594
    invoke-virtual {v0, v6, v3, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 595
    goto :goto_a

    .line 598
    :cond_19
    const/4 v3, 0x0

    .line 599
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 600
    if-eqz v2, :cond_1a

    .line 602
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 604
    const v4, 0x4cd0edba    # 1.09538768E8f

    .line 606
    const/4 v5, 0x0

    .line 609
    invoke-static {v2, v4, v3, v5, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 610
    :cond_1a
    iget-boolean v2, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 613
    invoke-virtual {v0, v14, v3, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 615
    :goto_a
    const-wide/16 v8, 0x20

    .line 618
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 620
    const/4 v10, 0x1

    .line 623
    :goto_b
    if-nez v10, :cond_1c

    .line 624
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 626
    if-eqz v2, :cond_1b

    .line 628
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 630
    const v4, 0x34f4b3e9

    .line 632
    const/4 v5, 0x0

    .line 635
    invoke-static {v2, v4, v3, v5, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 636
    goto :goto_c

    .line 639
    :cond_1b
    const/4 v2, 0x0

    .line 640
    move-object v5, v2

    .line 641
    :goto_c
    const-string v2, "legacy_icon_factory"

    .line 642
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 644
    new-instance v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder$ShapeIconFactory;

    .line 647
    iget-object v4, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 649
    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 651
    invoke-direct {v2, v4, v1, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder$ShapeIconFactory;-><init>(Landroid/content/Context;II)V

    .line 653
    invoke-virtual {v2, v14, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 656
    move-result-object v1

    .line 659
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 663
    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 665
    iget-boolean v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 668
    const/4 v4, 0x1

    .line 670
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 671
    goto :goto_d

    .line 674
    :cond_1c
    const/4 v5, 0x0

    .line 675
    :goto_d
    move v10, v3

    .line 676
    goto :goto_f

    .line 677
    :cond_1d
    :goto_e
    move-object/from16 v16, v3

    .line 678
    move-object/from16 v23, v4

    .line 680
    iput v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 682
    :goto_f
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 684
    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 686
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    .line 688
    if-eqz v2, :cond_20

    .line 690
    array-length v4, v2

    .line 692
    if-lez v4, :cond_1e

    .line 693
    aget-object v4, v2, v10

    .line 695
    goto :goto_10

    .line 697
    :cond_1e
    move-object v4, v5

    .line 698
    :goto_10
    array-length v6, v2

    .line 699
    const/4 v8, 0x1

    .line 700
    if-le v6, v8, :cond_1f

    .line 701
    aget-object v2, v2, v8

    .line 703
    move-object v5, v2

    .line 705
    :cond_1f
    move-object v2, v5

    .line 706
    move-object v5, v4

    .line 707
    goto :goto_11

    .line 708
    :cond_20
    move-object v2, v5

    .line 709
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 710
    move-result v4

    .line 713
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 714
    move-result v4

    .line 717
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 718
    move-result-object v6

    .line 721
    move-object/from16 v8, v23

    .line 722
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 724
    invoke-static {}, Landroid/app/TaskSnapshotHelperStub;->get()Landroid/app/TaskSnapshotHelperStub;

    .line 726
    move-result-object v10

    .line 729
    move-object/from16 v11, v16

    .line 730
    invoke-interface {v10, v11, v6, v9}, Landroid/app/TaskSnapshotHelperStub;->ensureEnable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 732
    move-result v6

    .line 735
    if-eqz v6, :cond_21

    .line 736
    invoke-static {}, Landroid/app/TaskSnapshotHelperStub;->get()Landroid/app/TaskSnapshotHelperStub;

    .line 738
    move-result-object v6

    .line 741
    sget-object v9, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->launchPackageName:Ljava/lang/String;

    .line 742
    invoke-interface {v6, v9}, Landroid/app/TaskSnapshotHelperStub;->isMiuiHome(Ljava/lang/String;)Z

    .line 744
    move-result v6

    .line 747
    if-eqz v6, :cond_21

    .line 748
    invoke-static {}, Landroid/app/TaskSnapshotHelperStub;->get()Landroid/app/TaskSnapshotHelperStub;

    .line 750
    move-result-object v6

    .line 753
    invoke-interface {v6, v11, v4, v8}, Landroid/app/TaskSnapshotHelperStub;->setBackgroundWithQS(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 754
    move-result-object v4

    .line 757
    iput-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 758
    :cond_21
    const-string v4, "fillViewWithIcon"

    .line 760
    const-wide/16 v8, 0x20

    .line 762
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 764
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 770
    iget-object v6, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 772
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 774
    move-result-object v6

    .line 777
    invoke-direct {v4, v11, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 778
    new-instance v6, Landroid/window/SplashScreenView$Builder;

    .line 781
    invoke-direct {v6, v4}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 783
    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 786
    invoke-virtual {v6, v4}, Landroid/window/SplashScreenView$Builder;->setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;

    .line 788
    move-result-object v4

    .line 791
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 792
    invoke-virtual {v4, v6}, Landroid/window/SplashScreenView$Builder;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 794
    move-result-object v4

    .line 797
    invoke-virtual {v4, v1}, Landroid/window/SplashScreenView$Builder;->setIconSize(I)Landroid/window/SplashScreenView$Builder;

    .line 798
    move-result-object v1

    .line 801
    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView$Builder;->setIconBackground(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 802
    move-result-object v1

    .line 805
    invoke-virtual {v1, v5}, Landroid/window/SplashScreenView$Builder;->setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 806
    move-result-object v1

    .line 809
    invoke-virtual {v1, v3}, Landroid/window/SplashScreenView$Builder;->setUiThreadInitConsumer(Ljava/util/function/Consumer;)Landroid/window/SplashScreenView$Builder;

    .line 810
    move-result-object v1

    .line 813
    iget-boolean v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mAllowHandleSolidColor:Z

    .line 814
    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView$Builder;->setAllowHandleSolidColor(Z)Landroid/window/SplashScreenView$Builder;

    .line 816
    move-result-object v1

    .line 819
    iget v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    .line 820
    const/4 v2, 0x1

    .line 822
    if-ne v0, v2, :cond_22

    .line 823
    iget-object v0, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 825
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    .line 827
    if-eqz v0, :cond_22

    .line 829
    iget v2, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    .line 831
    iget v3, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    .line 833
    invoke-virtual {v1, v0, v2, v3}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    .line 835
    :cond_22
    invoke-virtual {v1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    .line 838
    move-result-object v0

    .line 841
    const-wide/16 v1, 0x20

    .line 842
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 844
    return-object v0
    .line 847
.end method

.method public final createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iget v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 6
    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 8
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    .line 10
    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    .line 12
    move-object v1, p2

    .line 14
    move-object v2, p1

    .line 15
    move v5, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    .line 17
    filled-new-array {p2}, [Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 24
    goto :goto_4

    .line 26
    :cond_0
    iget-object p2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 27
    iget p2, p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 29
    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 31
    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 33
    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 35
    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 40
    if-eq p2, v1, :cond_1

    .line 42
    const/4 v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v1, v0

    .line 46
    :goto_0
    instance-of v2, p1, Landroid/graphics/drawable/Animatable;

    .line 47
    if-eqz v2, :cond_2

    .line 49
    new-instance p3, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconAnimateListener;

    .line 51
    invoke-direct {p3, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconAnimateListener;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 53
    goto :goto_1

    .line 56
    :cond_2
    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 57
    if-eqz v2, :cond_3

    .line 59
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    .line 61
    move-object v2, v1

    .line 63
    move-object v3, p1

    .line 64
    move v6, p3

    .line 65
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    .line 66
    goto :goto_2

    .line 69
    :cond_3
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    .line 70
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable;

    .line 72
    invoke-direct {v3, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 74
    move-object v2, v0

    .line 77
    move v6, p3

    .line 78
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    .line 79
    move-object p3, v0

    .line 82
    :goto_1
    move v0, v1

    .line 83
    move-object v1, p3

    .line 84
    :goto_2
    if-eqz v0, :cond_4

    .line 85
    new-instance p1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    .line 87
    invoke-direct {p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(I)V

    .line 89
    goto :goto_3

    .line 92
    :cond_4
    const/4 p1, 0x0

    .line 93
    :goto_3
    filled-new-array {v1, p1}, [Landroid/graphics/drawable/Drawable;

    .line 94
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 98
    :goto_4
    return-void
    .line 100
.end method
