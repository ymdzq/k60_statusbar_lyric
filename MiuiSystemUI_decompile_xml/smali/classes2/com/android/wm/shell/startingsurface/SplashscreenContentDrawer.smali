.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final WHITE_LIST_NOT_MODIFY_SPLASHSCREEN:Ljava/util/ArrayList;


# instance fields
.field public mBrandingImageHeight:I

.field public mBrandingImageWidth:I

.field final mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

.field public mContentSuggestType:I

.field public final mContext:Landroid/content/Context;

.field public mDefaultIconSize:I

.field public final mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

.field public mIconSize:I

.field public mLastPackageContextConfigHash:I

.field public mMainWindowShiftLength:I

.field public final mSplashscreenWorkerHandler:Landroid/os/Handler;

.field public final mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static -$$Nest$smisRgbSimilarInHsv(II)Z
    .locals 34

    .line 1
    move/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->luminance(I)F

    .line 11
    move-result v3

    .line 14
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->luminance(I)F

    .line 15
    move-result v4

    .line 18
    cmpl-float v5, v3, v4

    .line 19
    const v6, 0x3d4ccccd    # 0.05f

    .line 21
    if-lez v5, :cond_1

    .line 24
    add-float/2addr v3, v6

    .line 26
    add-float/2addr v4, v6

    .line 27
    div-float/2addr v3, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    add-float/2addr v4, v6

    .line 30
    add-float/2addr v3, v6

    .line 31
    div-float v3, v4, v3

    .line 32
    :goto_0
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 34
    const/4 v5, 0x0

    .line 36
    if-eqz v4, :cond_2

    .line 37
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 42
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 46
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 50
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v6

    .line 54
    float-to-double v7, v3

    .line 55
    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 56
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 58
    move-result-object v7

    .line 61
    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 65
    const v6, -0x32dcc779

    .line 66
    const/16 v7, 0x20

    .line 69
    invoke-static {v9, v6, v7, v5, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    .line 74
    cmpg-float v3, v3, v4

    .line 76
    if-gez v3, :cond_3

    .line 78
    goto/16 :goto_2

    .line 80
    :cond_3
    const/4 v3, 0x3

    .line 82
    new-array v4, v3, [F

    .line 83
    new-array v3, v3, [F

    .line 85
    invoke-static {v0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 87
    invoke-static {v1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 90
    const/4 v0, 0x0

    .line 93
    aget v1, v4, v0

    .line 94
    aget v6, v3, v0

    .line 96
    sub-float/2addr v1, v6

    .line 98
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 99
    move-result v1

    .line 102
    float-to-int v1, v1

    .line 103
    add-int/lit16 v1, v1, 0xb4

    .line 104
    rem-int/lit16 v1, v1, 0x168

    .line 106
    add-int/lit16 v1, v1, -0xb4

    .line 108
    int-to-float v6, v1

    .line 110
    const/high16 v7, 0x43340000    # 180.0f

    .line 111
    div-float/2addr v6, v7

    .line 113
    float-to-double v6, v6

    .line 114
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 115
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 117
    move-result-wide v6

    .line 120
    aget v10, v4, v2

    .line 121
    aget v11, v3, v2

    .line 123
    sub-float/2addr v10, v11

    .line 125
    float-to-double v10, v10

    .line 126
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 127
    move-result-wide v10

    .line 130
    const/4 v12, 0x2

    .line 131
    aget v13, v4, v12

    .line 132
    aget v14, v3, v12

    .line 134
    sub-float/2addr v13, v14

    .line 136
    float-to-double v13, v13

    .line 137
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 138
    move-result-wide v8

    .line 141
    add-double v13, v6, v10

    .line 142
    add-double/2addr v13, v8

    .line 144
    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    .line 145
    div-double/2addr v13, v15

    .line 147
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 148
    move-result-wide v13

    .line 151
    sget-boolean v15, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 152
    if-eqz v15, :cond_4

    .line 154
    move-wide/from16 p0, v6

    .line 156
    int-to-long v5, v1

    .line 158
    aget v1, v4, v0

    .line 159
    move-wide/from16 v16, v13

    .line 161
    float-to-double v12, v1

    .line 163
    aget v1, v3, v0

    .line 164
    float-to-double v0, v1

    .line 166
    aget v7, v4, v2

    .line 167
    float-to-double v14, v7

    .line 169
    aget v7, v3, v2

    .line 170
    move-object/from16 v18, v3

    .line 172
    float-to-double v2, v7

    .line 174
    const/4 v7, 0x2

    .line 175
    aget v4, v4, v7

    .line 176
    move-wide/from16 v19, v8

    .line 178
    float-to-double v8, v4

    .line 180
    aget v4, v18, v7

    .line 181
    move-wide/from16 v21, v10

    .line 183
    float-to-double v10, v4

    .line 185
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 186
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object v23

    .line 191
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 192
    move-result-object v24

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 196
    move-result-object v25

    .line 199
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 200
    move-result-object v26

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 204
    move-result-object v27

    .line 207
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 208
    move-result-object v28

    .line 211
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 212
    move-result-object v29

    .line 215
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 216
    move-result-object v30

    .line 219
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 220
    move-result-object v31

    .line 223
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 224
    move-result-object v32

    .line 227
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 228
    move-result-object v33

    .line 231
    filled-new-array/range {v23 .. v33}, [Ljava/lang/Object;

    .line 232
    move-result-object v0

    .line 235
    const v1, -0x834c58f

    .line 236
    const v2, 0x2aaaa9

    .line 239
    const/4 v3, 0x0

    .line 242
    invoke-static {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    goto :goto_1

    .line 246
    :cond_4
    move-wide/from16 v16, v13

    .line 247
    :goto_1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 249
    cmpg-double v0, v16, v0

    .line 254
    if-gez v0, :cond_5

    .line 256
    const/4 v2, 0x1

    .line 258
    goto :goto_2

    .line 259
    :cond_5
    const/4 v2, 0x0

    .line 260
    :goto_2
    return v2
    .line 261
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->WHITE_LIST_NOT_MODIFY_SPLASHSCREEN:Ljava/util/ArrayList;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 5
    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContentSuggestType:I

    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 15
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    .line 17
    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;-><init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;)V

    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    .line 22
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 24
    new-instance p2, Landroid/os/HandlerThread;

    .line 26
    const-string/jumbo p3, "wmshell.splashworker"

    .line 28
    const/16 v0, -0xa

    .line 31
    invoke-direct {p2, p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 36
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 39
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    .line 43
    new-instance p3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    .line 45
    invoke-direct {p3, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 47
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    .line 50
    return-void
    .line 52
.end method

.method public static createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;
    .locals 10

    .line 1
    iget-object v0, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object p1, p1, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 9
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_b

    .line 12
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14
    if-nez v2, :cond_1

    .line 16
    goto/16 :goto_4

    .line 18
    :cond_1
    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 20
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 22
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 24
    if-eqz v5, :cond_2

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 31
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 35
    int-to-long v6, v4

    .line 36
    int-to-long v8, p3

    .line 37
    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object v6

    .line 43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v7

    .line 47
    filled-new-array {v2, v5, v6, v7}, [Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    const v5, 0x2f4fb13a

    .line 52
    const/16 v6, 0x50

    .line 55
    invoke-static {p3, v5, v6, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_2
    invoke-virtual {p4, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 60
    move-result-object p3

    .line 63
    if-nez p3, :cond_3

    .line 64
    return-object v1

    .line 66
    :cond_3
    if-nez v3, :cond_4

    .line 67
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p0, p3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 70
    move-result-object p0

    .line 73
    :goto_1
    if-nez p0, :cond_5

    .line 74
    return-object v1

    .line 76
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    .line 77
    move-result p3

    .line 80
    const-string p4, "ShellStartingWindow"

    .line 81
    if-eq p2, p3, :cond_6

    .line 83
    :try_start_0
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 85
    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 87
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 89
    move-result-object v2

    .line 92
    const/4 v3, 0x4

    .line 93
    invoke-virtual {p0, p3, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {p0, p2}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_2

    .line 101
    :catch_0
    move-exception p0

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    const-string p3, "Failed creating package context with package name "

    .line 105
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string p1, " for user "

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 128
    invoke-static {p4, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    return-object v1

    .line 132
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 133
    move-result-object p1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    move-result-object p3

    .line 140
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 141
    move-result-object p3

    .line 144
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    .line 145
    move-result p3

    .line 148
    if-eqz p3, :cond_a

    .line 149
    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 151
    const/4 v0, 0x0

    .line 153
    if-eqz p3, :cond_7

    .line 154
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    move-result-object p3

    .line 159
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 160
    const v3, -0x7982a749

    .line 162
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 165
    move-result-object p3

    .line 168
    invoke-static {v2, v3, v0, v1, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 172
    move-result-object p3

    .line 175
    invoke-virtual {p3, p2}, Landroid/content/Context;->setTheme(I)V

    .line 176
    sget-object p2, Lcom/android/internal/R$styleable;->Window:[I

    .line 179
    invoke-virtual {p3, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 181
    move-result-object p2

    .line 184
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 186
    move-result v2

    .line 189
    if-eqz v2, :cond_9

    .line 190
    :try_start_1
    invoke-virtual {p3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 192
    move-result-object v2

    .line 195
    if-eqz v2, :cond_9

    .line 196
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 198
    if-eqz p0, :cond_8

    .line 200
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    move-result-object p0

    .line 205
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 206
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 208
    move-result-object p0

    .line 211
    const v2, 0x24eb32c0    # 1.0200098E-16f

    .line 212
    invoke-static {p1, v2, v0, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :cond_8
    move-object p0, p3

    .line 218
    goto :goto_3

    .line 219
    :catch_1
    move-exception p0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    const-string p2, "failed creating starting window for overrideConfig at taskId: "

    .line 223
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object p1

    .line 234
    invoke-static {p4, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return-object v1

    .line 238
    :cond_9
    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    :cond_a
    return-object p0

    .line 242
    :cond_b
    :goto_4
    return-object v1
    .line 243
.end method

.method public static createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 5
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 12
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 15
    sget-object p4, Lcom/android/internal/R$styleable;->Window:[I

    .line 17
    invoke-virtual {p0, p4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p4

    .line 22
    const/16 v2, 0xe

    .line 23
    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    const v2, 0x1110100    # @android:bool/config_cecVolumeControlModeDisabled_allowed

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    const v2, 0x1010100    # @android:attr/transcriptMode

    .line 35
    :goto_0
    const/4 v3, 0x4

    .line 38
    if-ne p2, v3, :cond_1

    .line 39
    const/16 p2, 0x21

    .line 41
    invoke-virtual {p4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 43
    move-result p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    :cond_1
    const/high16 p2, -0x80000000

    .line 49
    or-int/2addr v2, p2

    .line 51
    :cond_2
    const/16 p2, 0x32

    .line 52
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 54
    invoke-virtual {p4, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 56
    move-result p2

    .line 59
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 60
    const/16 p2, 0x8

    .line 62
    invoke-virtual {p4, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 64
    move-result p2

    .line 67
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 68
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iget-object p2, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 73
    iget-object p4, p1, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 75
    if-eqz p4, :cond_3

    .line 77
    goto :goto_1

    .line 79
    :cond_3
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 80
    :goto_1
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 82
    if-nez p2, :cond_4

    .line 84
    iget-boolean p1, p1, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 86
    if-eqz p1, :cond_4

    .line 88
    const/high16 p1, 0x80000

    .line 90
    or-int/2addr v2, p1

    .line 92
    :cond_4
    const p1, 0x20018

    .line 93
    or-int/2addr p1, v2

    .line 96
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    iput-object p5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 99
    iget-object p1, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 101
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 103
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 105
    or-int/lit8 p1, p1, 0x10

    .line 107
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 119
    move-result p0

    .line 122
    if-nez p0, :cond_5

    .line 123
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 125
    or-int/lit16 p0, p0, 0x80

    .line 127
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 129
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    const-string p1, "Splash Screen "

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 144
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    return-object v0
    .line 148
.end method

.method public static estimateWindowBGColor(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    .line 6
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 9
    move-result v1

    .line 12
    if-lez v1, :cond_1

    .line 13
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 15
    const/4 v1, 0x0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    const v2, 0x1989e980

    .line 22
    const/4 v3, 0x0

    .line 25
    invoke-static {p0, v2, v1, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p0

    .line 32
    :cond_1
    if-nez p0, :cond_2

    .line 33
    new-instance p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 35
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 37
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 39
    move-result v1

    .line 42
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 43
    invoke-direct {p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 46
    goto :goto_1

    .line 49
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    .line 50
    if-eqz v0, :cond_3

    .line 52
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 54
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 56
    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_3
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;

    .line 62
    const/4 v1, 0x2

    .line 64
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 65
    :goto_0
    move-object p0, v0

    .line 68
    :goto_1
    invoke-interface {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->passFilterRatio()F

    .line 69
    move-result v0

    .line 72
    const/high16 v1, 0x3f000000    # 0.5f

    .line 73
    cmpg-float v0, v0, v1

    .line 75
    if-gez v0, :cond_4

    .line 77
    const-string p0, "ShellStartingWindow"

    .line 79
    const-string v0, "Window background is translucent, fill background with black color"

    .line 81
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 86
    move-result p0

    .line 89
    return p0

    .line 90
    :cond_4
    invoke-interface {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    .line 91
    move-result p0

    .line 94
    return p0
    .line 95
.end method

.method public static getShowingDuration(JJ)J
    .locals 4

    .line 1
    cmp-long v0, p0, p2

    .line 2
    if-gtz v0, :cond_0

    .line 4
    return-wide p2

    .line 6
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 7
    cmp-long v2, p2, v0

    .line 9
    if-gez v2, :cond_3

    .line 11
    cmp-long p0, p0, v0

    .line 13
    const-wide/16 v2, 0x190

    .line 15
    if-gtz p0, :cond_2

    .line 17
    cmp-long p0, p2, v2

    .line 19
    if-gez p0, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    return-wide v0

    .line 24
    :cond_2
    :goto_0
    return-wide v2

    .line 25
    :cond_3
    return-wide p2
    .line 26
.end method

.method public static getSystemBGColor()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-string v0, "ShellStartingWindow"

    .line 8
    const-string v1, "System context does not exist!"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/high16 v0, -0x1000000

    .line 15
    return v0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 21
    const v1, 0x7f060881    # @color/splash_window_background_default '@color/splash_screen_bg_light'

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    move-result v0

    .line 28
    return v0
    .line 29
.end method

.method public static getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 14
    move-result v3

    .line 17
    iput v3, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    .line 18
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;

    .line 20
    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/TypedArray;I)V

    .line 22
    invoke-static {v3, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v3

    .line 34
    iput v3, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    .line 35
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;

    .line 37
    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/TypedArray;I)V

    .line 39
    const/4 v4, 0x0

    .line 42
    invoke-static {v3, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 46
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v3, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;

    .line 51
    const/4 v5, 0x2

    .line 53
    invoke-direct {v3, p0, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/TypedArray;I)V

    .line 54
    invoke-static {v3, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v3, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    .line 63
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;

    .line 65
    const/4 v5, 0x3

    .line 67
    invoke-direct {v3, p0, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/TypedArray;I)V

    .line 68
    invoke-static {v3, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v1

    .line 80
    iput v1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 81
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 86
    if-eqz p0, :cond_1

    .line 88
    iget p0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 95
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    iget-object p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    .line 100
    if-eqz p1, :cond_0

    .line 102
    move v0, v2

    .line 104
    :cond_0
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 105
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    move-result-object v0

    .line 110
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 114
    const v0, 0x6f52a086

    .line 115
    const/16 v1, 0xc

    .line 118
    invoke-static {p1, v0, v1, v4, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_1
    return-void
    .line 123
.end method

.method public static peekWindowBGColor(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    const-string v2, "peekWindowBGColor"

    .line 4
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    iget v2, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    .line 9
    if-eqz v2, :cond_0

    .line 11
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    .line 15
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 30
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 32
    move-result p1

    .line 35
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "Window background does not exist, using "

    .line 41
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 52
    const-string v2, "ShellStartingWindow"

    .line 53
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->estimateWindowBGColor(Landroid/graphics/drawable/Drawable;)I

    .line 58
    move-result p0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 62
    return p0
    .line 65
.end method

.method public static safeReturnAttrDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "Get attribute fail, return default: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    const-string v0, "ShellStartingWindow"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object p1
    .line 31
.end method


# virtual methods
.method public final applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;JF)V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;

    .line 2
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p7

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V

    .line 11
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    invoke-virtual {v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->run()V

    .line 20
    return-void

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    move-result-wide p2

    .line 27
    sub-long/2addr p2, p5

    .line 28
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    .line 29
    move-result-object p0

    .line 32
    const-wide/16 p4, 0x0

    .line 33
    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    .line 41
    move-result-wide p6

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-wide p6, p4

    .line 46
    :goto_0
    invoke-static {p6, p7, p2, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getShowingDuration(JJ)J

    .line 47
    move-result-wide p6

    .line 50
    sub-long/2addr p6, p2

    .line 51
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 52
    if-eqz p0, :cond_2

    .line 54
    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 60
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    const p3, 0x1cc59ec6

    .line 66
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-static {p2, p3, v0, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_2
    cmp-long p0, p6, p4

    .line 74
    if-lez p0, :cond_3

    .line 76
    invoke-virtual {p1, v7, p6, p7}, Landroid/window/SplashScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->run()V

    .line 82
    :goto_1
    return-void
    .line 85
.end method

.method public final getBGColorFromCache(Landroid/content/pm/ActivityInfo;Ljava/util/function/IntSupplier;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    .line 2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 8
    iget v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    .line 10
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    .line 12
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    add-int/2addr v1, v2

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    add-int/2addr v1, p0

    .line 27
    const/4 p0, 0x0

    .line 28
    filled-new-array {p0}, [I

    .line 29
    move-result-object v2

    .line 32
    if-eqz v3, :cond_0

    .line 33
    iget-object p1, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mWindowColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;

    .line 35
    invoke-static {p1, v1, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->getCache([Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;I[I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;

    .line 41
    if-eqz p1, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    .line 46
    invoke-direct {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;-><init>()V

    .line 48
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {v0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    new-instance p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;

    .line 56
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 58
    move-result p2

    .line 61
    invoke-direct {p1, v1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;-><init>(II)V

    .line 62
    iget-object p2, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mWindowColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;

    .line 65
    aget p0, v2, p0

    .line 67
    aput-object p1, p2, p0

    .line 69
    :goto_0
    iget p0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;->mBgColor:I

    .line 71
    return p0
    .line 73
.end method

.method public final makeSplashScreenContentView(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;)Landroid/window/SplashScreenView;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 5
    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    .line 22
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x4

    .line 26
    if-ne p3, v3, :cond_1

    .line 27
    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    .line 29
    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 31
    move-result-object v4

    .line 34
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;

    .line 35
    invoke-direct {v5, v4, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/TypedArray;I)V

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v3

    .line 43
    invoke-static {v5, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v3

    .line 53
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v3

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    .line 64
    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object v3

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object v3, v2

    .line 73
    :goto_0
    iget-object v4, p2, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 74
    if-eqz v4, :cond_2

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    iget-object v4, p2, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 79
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 81
    :goto_1
    if-eqz v3, :cond_3

    .line 83
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;

    .line 85
    invoke-direct {v5, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, v4, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getBGColorFromCache(Landroid/content/pm/ActivityInfo;Ljava/util/function/IntSupplier;)I

    .line 90
    move-result v5

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda4;

    .line 95
    invoke-direct {v5, p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0, v4, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getBGColorFromCache(Landroid/content/pm/ActivityInfo;Ljava/util/function/IntSupplier;)I

    .line 100
    move-result v5

    .line 103
    :goto_2
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    if-nez v6, :cond_a

    .line 106
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    .line 108
    if-nez v6, :cond_a

    .line 110
    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 112
    if-nez v6, :cond_a

    .line 114
    sget-object v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->WHITE_LIST_NOT_MODIFY_SPLASHSCREEN:Ljava/util/ArrayList;

    .line 116
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 120
    move-result v6

    .line 123
    if-nez v6, :cond_a

    .line 124
    invoke-static {}, Landroid/app/TaskSnapshotHelperStub;->get()Landroid/app/TaskSnapshotHelperStub;

    .line 126
    move-result-object v6

    .line 129
    invoke-interface {v6}, Landroid/app/TaskSnapshotHelperStub;->isCompatibilityMode()Z

    .line 130
    move-result v6

    .line 133
    if-nez v6, :cond_a

    .line 134
    iget p3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    .line 136
    if-eqz p3, :cond_9

    .line 138
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 140
    move-result-object p3

    .line 143
    instance-of v0, p3, Landroid/graphics/drawable/LayerDrawable;

    .line 144
    if-eqz v0, :cond_5

    .line 146
    move-object v0, p3

    .line 148
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 149
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 151
    move-result v6

    .line 154
    if-lez v6, :cond_5

    .line 155
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 157
    if-eqz v6, :cond_4

    .line 159
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 161
    const v7, 0x1989e980

    .line 163
    invoke-static {v6, v7, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 169
    move-result-object v0

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    move-object v0, p3

    .line 174
    :goto_3
    if-nez v0, :cond_6

    .line 175
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 177
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 179
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 181
    move-result v6

    .line 184
    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 185
    invoke-direct {v0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 188
    goto :goto_5

    .line 191
    :cond_6
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 192
    if-eqz v1, :cond_7

    .line 194
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    .line 196
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 198
    invoke-direct {v1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    .line 200
    goto :goto_4

    .line 203
    :cond_7
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;

    .line 204
    const/4 v6, 0x1

    .line 206
    invoke-direct {v1, v0, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 207
    :goto_4
    move-object v0, v1

    .line 210
    :goto_5
    invoke-interface {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->passFilterRatio()F

    .line 211
    move-result v0

    .line 214
    const/4 v1, 0x0

    .line 215
    cmpl-float v0, v0, v1

    .line 216
    if-nez v0, :cond_8

    .line 218
    goto :goto_6

    .line 220
    :cond_8
    move-object v2, p3

    .line 221
    :cond_9
    :goto_6
    const/4 p3, 0x6

    .line 222
    :cond_a
    iput p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContentSuggestType:I

    .line 223
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    .line 225
    invoke-direct {v0, p0, p1, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 227
    iput v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 230
    if-nez v3, :cond_b

    .line 232
    move-object v3, v2

    .line 234
    :cond_b
    iput-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    iput p3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    .line 237
    iput-object p4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    .line 239
    invoke-virtual {p2}, Landroid/window/StartingWindowInfo;->allowHandleSolidColorSplashScreen()Z

    .line 241
    move-result p0

    .line 244
    iput-boolean p0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mAllowHandleSolidColor:Z

    .line 245
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->build()Landroid/window/SplashScreenView;

    .line 247
    move-result-object p0

    .line 250
    return-object p0
    .line 251
.end method

.method public final updateDensity()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x10502ba    # @android:dimen/text_size_headline_material

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    const v2, 0x10502b9    # @android:dimen/text_size_display_4_material

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 27
    iput v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 33
    const v2, 0x7f0710c9    # @dimen/starting_surface_brand_image_width '200.0dp'

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v1

    .line 46
    const v2, 0x7f0710c8    # @dimen/starting_surface_brand_image_height '80.0dp'

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result v1

    .line 53
    iput v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v0

    .line 59
    const v1, 0x7f0710cb    # @dimen/starting_surface_exit_animation_window_shift_length '20.0dp'

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v0

    .line 66
    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMainWindowShiftLength:I

    .line 67
    return-void
    .line 69
.end method
