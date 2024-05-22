.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeGestureHandler"

.field public static final TOUCH_BOTTOM:I = 0x2

.field public static final TOUCH_MINI:I = 0x4

.field public static final TOUCH_RESIZE:I = 0x3

.field public static final TOUCH_TOP:I = 0x1

.field public static final TOUCH_UNDEFINED:I


# instance fields
.field private isEnteredOtherArea:Z

.field private mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field private mBottomCaptionHeight:I

.field private mCaptionHeight:I

.field private final mContext:Landroid/content/Context;

.field private mIsFirstMove:Z

.field private final mMiuiFreeformCursorHandler:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

.field private final mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private final mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field private final mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private final mMiuiFreeformModeMiniStateHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

.field private final mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

.field private final mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

.field private final mMiuiFreeformModeResizeHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;

.field private final mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

.field private final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

.field private final mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

.field private final mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;

.field private mTouchedMode:I

.field private mUiMode:I

.field private final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public static synthetic $r8$lambda$i8Y0pKlKRSO-mEgj4IyHGry6VS0(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->onInit()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Landroid/os/Handler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v12, p3

    .line 4
    move-object/from16 v13, p7

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 12
    iput-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 14
    new-instance v1, Landroid/graphics/Region;

    .line 16
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 18
    iput-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 21
    new-instance v14, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 23
    invoke-direct {v14, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v14, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 28
    move-object/from16 v15, p4

    .line 30
    iput-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 32
    move-object/from16 v11, p1

    .line 34
    iput-object v11, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 36
    move-object/from16 v10, p11

    .line 38
    iput-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 40
    new-instance v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 42
    invoke-direct {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;-><init>()V

    .line 44
    iput-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 47
    move-object/from16 v8, p2

    .line 49
    iput-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 51
    new-instance v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 53
    move-object v1, v7

    .line 55
    move-object v2, v9

    .line 56
    move-object/from16 v3, p2

    .line 57
    move-object/from16 v4, p5

    .line 59
    move-object/from16 v5, p6

    .line 61
    move-object/from16 v6, p4

    .line 63
    move-object v15, v7

    .line 65
    move-object/from16 v7, p1

    .line 66
    move-object/from16 v8, p7

    .line 68
    move-object/from16 v16, v9

    .line 70
    move-object/from16 v9, p3

    .line 72
    move-object/from16 v10, p9

    .line 74
    move-object/from16 v11, p10

    .line 76
    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 78
    iput-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 81
    new-instance v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;

    .line 83
    move-object v1, v10

    .line 85
    move-object/from16 v2, p2

    .line 86
    move-object v3, v15

    .line 88
    move-object/from16 v4, p7

    .line 89
    move-object/from16 v5, p4

    .line 91
    move-object/from16 v6, p3

    .line 93
    move-object/from16 v7, p9

    .line 95
    move-object v8, v14

    .line 97
    move-object/from16 v9, p1

    .line 98
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;-><init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 100
    iput-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeResizeHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;

    .line 103
    new-instance v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 105
    move-object v1, v8

    .line 107
    move-object v2, v15

    .line 108
    move-object/from16 v3, p4

    .line 109
    move-object/from16 v4, p3

    .line 111
    move-object/from16 v5, p2

    .line 113
    move-object/from16 v6, p9

    .line 115
    move-object v7, v14

    .line 117
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;)V

    .line 118
    iput-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 121
    new-instance v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 123
    invoke-virtual/range {p8 .. p8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 125
    move-result-object v7

    .line 128
    move-object v1, v10

    .line 129
    move-object/from16 v2, p3

    .line 130
    move-object/from16 v3, p2

    .line 132
    move-object v4, v15

    .line 134
    move-object/from16 v5, p4

    .line 135
    move-object/from16 v6, p1

    .line 137
    move-object/from16 v8, p7

    .line 139
    move-object/from16 v9, p9

    .line 141
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Landroid/os/Looper;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 143
    iput-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 146
    iput-object v12, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v1

    .line 153
    const/4 v2, 0x1

    .line 154
    invoke-interface {v13, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getCaptionHeight(Z)I

    .line 155
    move-result v3

    .line 158
    const v4, 0x7f070360    # @dimen/freeform_decor_caption_height '42.0dp'

    .line 159
    const/4 v5, -0x1

    .line 162
    if-eq v3, v5, :cond_0

    .line 163
    invoke-interface {v13, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getCaptionHeight(Z)I

    .line 165
    move-result v2

    .line 168
    goto :goto_0

    .line 169
    :cond_0
    invoke-static {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 170
    move-result v2

    .line 173
    :goto_0
    iput v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 174
    invoke-interface/range {p7 .. p7}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getBottomCaptionHeight()I

    .line 176
    move-result v2

    .line 179
    if-eq v2, v5, :cond_1

    .line 180
    invoke-interface/range {p7 .. p7}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getBottomCaptionHeight()I

    .line 182
    move-result v1

    .line 185
    goto :goto_1

    .line 186
    :cond_1
    invoke-static {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 187
    move-result v1

    .line 190
    :goto_1
    iput v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mBottomCaptionHeight:I

    .line 191
    iput-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 193
    new-instance v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

    .line 195
    move-object v1, v8

    .line 197
    move-object v2, v15

    .line 198
    move-object/from16 v3, p4

    .line 199
    move-object/from16 v4, p7

    .line 201
    move-object/from16 v5, p3

    .line 203
    move-object/from16 v6, p1

    .line 205
    move-object/from16 v7, p9

    .line 207
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 209
    iput-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMiniStateHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

    .line 212
    new-instance v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 214
    move-object v1, v9

    .line 216
    move-object/from16 v2, p3

    .line 217
    move-object/from16 v4, p1

    .line 219
    move-object v5, v15

    .line 221
    move-object/from16 v6, p8

    .line 222
    move-object/from16 v7, p11

    .line 224
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Landroid/os/Handler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V

    .line 226
    iput-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 229
    new-instance v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 231
    invoke-virtual/range {p8 .. p8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 233
    move-result-object v3

    .line 236
    iget v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 237
    move-object v1, v10

    .line 239
    move-object v4, v8

    .line 240
    move-object/from16 v5, p7

    .line 241
    move-object v7, v15

    .line 243
    move-object v8, v9

    .line 244
    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;)V

    .line 245
    iput-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 248
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 250
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 252
    move-object/from16 v3, p8

    .line 254
    invoke-direct {v1, v12, v3, v0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;I)V

    .line 256
    iput-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformCursorHandler:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 259
    move-object/from16 v1, p9

    .line 261
    iput-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 263
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler$$ExternalSyntheticLambda0;

    .line 265
    invoke-direct {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;)V

    .line 267
    move-object/from16 v2, p6

    .line 270
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 279
    move-result-object v1

    .line 282
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 283
    iput v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mUiMode:I

    .line 285
    move-object/from16 v0, v16

    .line 287
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->loadColors(Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method private onInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    instance-of v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getmMiuiMultiWinSwitchController()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->getmMiuiMultiWinGestureHandler()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 18
    :cond_0
    return-void
    .line 20
.end method


# virtual methods
.method public findActiveMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v3

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x3

    .line 15
    const-string v6, "findActiveMiuiFreeformTask miuiFreeformModeTaskInfo.getEnterState() == EXITING miuiFreeformModeTaskInfo: "

    .line 16
    const-string v7, "MiuiFreeformModeGestureHandler"

    .line 18
    const/4 v8, 0x1

    .line 20
    if-ge v2, v3, :cond_4

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v3

    .line 32
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 33
    invoke-virtual {v9, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 35
    move-result-object v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 41
    move-result v9

    .line 44
    if-eqz v9, :cond_3

    .line 45
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 47
    move-result-object v9

    .line 50
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 51
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 53
    move-result v9

    .line 56
    if-eqz v9, :cond_3

    .line 57
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getEnterState()I

    .line 59
    move-result v9

    .line 62
    if-ne v9, v8, :cond_0

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 76
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_2

    .line 80
    :cond_0
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 81
    move-result v6

    .line 84
    if-eqz v6, :cond_1

    .line 85
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 87
    move-result-object v6

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 92
    move-result-object v6

    .line 95
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 96
    move-result v7

    .line 99
    invoke-static {v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 100
    move-result-object v6

    .line 103
    :goto_1
    float-to-int v7, p1

    .line 104
    float-to-int v8, p2

    .line 105
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 106
    move-result v9

    .line 109
    if-eqz v9, :cond_2

    .line 110
    iput v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 112
    invoke-virtual {v3, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 114
    return-object v3

    .line 117
    :cond_2
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 118
    move-result v5

    .line 121
    if-eqz v5, :cond_3

    .line 122
    iput v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 124
    return-object v3

    .line 126
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 127
    goto :goto_0

    .line 129
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    move-result v2

    .line 133
    if-ge v1, v2, :cond_d

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 139
    check-cast v2, Ljava/lang/Integer;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 142
    move-result v2

    .line 145
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 146
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 148
    move-result-object v2

    .line 151
    if-eqz v2, :cond_5

    .line 152
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 154
    move-result v3

    .line 157
    if-nez v3, :cond_c

    .line 158
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 160
    move-result v3

    .line 163
    if-eqz v3, :cond_5

    .line 164
    goto/16 :goto_5

    .line 166
    :cond_5
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getEnterState()I

    .line 168
    move-result v3

    .line 171
    if-ne v3, v8, :cond_6

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 185
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto/16 :goto_5

    .line 189
    :cond_6
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 191
    move-result v3

    .line 194
    if-eqz v3, :cond_7

    .line 195
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomRightCorner()Landroid/graphics/Rect;

    .line 197
    move-result-object v3

    .line 200
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 201
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomLeftCorner()Landroid/graphics/Rect;

    .line 203
    move-result-object v9

    .line 206
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 207
    sub-int/2addr v3, v9

    .line 209
    int-to-float v3, v3

    .line 210
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomLeftCorner()Landroid/graphics/Rect;

    .line 211
    move-result-object v9

    .line 214
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 215
    int-to-float v9, v9

    .line 217
    const v10, 0x3dcccccd    # 0.1f

    .line 218
    mul-float/2addr v3, v10

    .line 221
    add-float/2addr v9, v3

    .line 222
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomRightCorner()Landroid/graphics/Rect;

    .line 223
    move-result-object v10

    .line 226
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 227
    int-to-float v10, v10

    .line 229
    sub-float/2addr v10, v3

    .line 230
    cmpg-float v3, v9, p1

    .line 231
    if-gtz v3, :cond_c

    .line 233
    cmpg-float v3, p1, v10

    .line 235
    if-gtz v3, :cond_c

    .line 237
    sget v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->DESKTOP_ELUDE_BAR:F

    .line 239
    cmpl-float v3, v3, p2

    .line 241
    if-ltz v3, :cond_c

    .line 243
    const/4 v3, 0x0

    .line 245
    cmpl-float v3, p2, v3

    .line 246
    if-ltz v3, :cond_c

    .line 248
    goto/16 :goto_7

    .line 250
    :cond_7
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 252
    move-result-object v3

    .line 255
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 256
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 258
    move-result v3

    .line 261
    if-eqz v3, :cond_c

    .line 262
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 264
    move-result-object v3

    .line 267
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 268
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 270
    if-eqz v3, :cond_c

    .line 272
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 274
    move-result v3

    .line 277
    if-nez v3, :cond_c

    .line 278
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 280
    move-result v3

    .line 283
    if-eqz v3, :cond_8

    .line 284
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 286
    move-result-object v3

    .line 289
    goto :goto_4

    .line 290
    :cond_8
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 291
    move-result-object v3

    .line 294
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 295
    move-result v9

    .line 298
    invoke-static {v3, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 299
    move-result-object v3

    .line 302
    :goto_4
    float-to-int v9, p1

    .line 303
    float-to-int v10, p2

    .line 304
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 305
    invoke-virtual {v2, v3, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionRegion(Landroid/graphics/Rect;III)Z

    .line 307
    move-result v11

    .line 310
    if-eqz v11, :cond_9

    .line 311
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 313
    iput v8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 316
    goto :goto_7

    .line 318
    :cond_9
    invoke-virtual {v2, v3, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 319
    move-result v11

    .line 322
    if-eqz v11, :cond_a

    .line 323
    iput v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 325
    invoke-virtual {v2, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 327
    goto :goto_7

    .line 330
    :cond_a
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mBottomCaptionHeight:I

    .line 331
    invoke-virtual {v2, v3, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinBottomCaptionRegion(Landroid/graphics/Rect;III)Z

    .line 333
    move-result v11

    .line 336
    if-eqz v11, :cond_b

    .line 337
    const/4 p1, 0x2

    .line 339
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 340
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 342
    move-result-object p0

    .line 345
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 346
    move-result p1

    .line 349
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 350
    const/16 p0, 0x8

    .line 353
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 355
    goto :goto_7

    .line 358
    :cond_b
    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 359
    move-result v3

    .line 362
    if-eqz v3, :cond_c

    .line 363
    const/4 p0, -0x1

    .line 365
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 366
    goto :goto_6

    .line 369
    :cond_c
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 370
    goto/16 :goto_3

    .line 372
    :cond_d
    :goto_6
    const/4 v2, 0x0

    .line 374
    :goto_7
    return-object v2
    .line 375
.end method

.method public findControlCursorActiveMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v3

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x4

    .line 15
    if-ge v2, v3, :cond_5

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 27
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 28
    invoke-virtual {v6, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 30
    move-result-object v3

    .line 33
    if-eqz v3, :cond_4

    .line 34
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 36
    move-result v6

    .line 39
    if-eqz v6, :cond_4

    .line 40
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 42
    move-result-object v6

    .line 45
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 48
    move-result v6

    .line 51
    if-eqz v6, :cond_4

    .line 52
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 54
    move-result v6

    .line 57
    if-nez v6, :cond_4

    .line 58
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 60
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 66
    move-result-object v6

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v6

    .line 74
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 75
    move-result v7

    .line 78
    invoke-static {v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 79
    move-result-object v6

    .line 82
    :goto_1
    float-to-int v7, p1

    .line 83
    float-to-int v8, p2

    .line 84
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 85
    move-result v9

    .line 88
    if-eqz v9, :cond_2

    .line 89
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 91
    move-result p1

    .line 94
    if-nez p1, :cond_1

    .line 95
    iput v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 97
    :cond_1
    invoke-virtual {v3, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 99
    return-object v3

    .line 102
    :cond_2
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 103
    move-result v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 109
    move-result p1

    .line 112
    if-nez p1, :cond_3

    .line 113
    iput v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 115
    :cond_3
    return-object v3

    .line 117
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 118
    goto :goto_0

    .line 120
    :cond_5
    const/4 v2, 0x0

    .line 121
    move v3, v1

    .line 122
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result v6

    .line 126
    if-ge v3, v6, :cond_11

    .line 127
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v6

    .line 132
    check-cast v6, Ljava/lang/Integer;

    .line 133
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result v6

    .line 138
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 139
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 141
    move-result-object v6

    .line 144
    if-eqz v6, :cond_6

    .line 145
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 147
    move-result v7

    .line 150
    if-nez v7, :cond_10

    .line 151
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 153
    move-result v7

    .line 156
    if-nez v7, :cond_10

    .line 157
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 159
    move-result v7

    .line 162
    if-eqz v7, :cond_6

    .line 163
    goto/16 :goto_7

    .line 165
    :cond_6
    const/4 v7, 0x1

    .line 167
    if-eqz v6, :cond_8

    .line 168
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 170
    move-result v8

    .line 173
    if-eqz v8, :cond_8

    .line 174
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomLeftCorner()Landroid/graphics/Rect;

    .line 176
    move-result-object v8

    .line 179
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 180
    int-to-float v8, v8

    .line 182
    cmpg-float v8, v8, p1

    .line 183
    if-gtz v8, :cond_7

    .line 185
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomRightCorner()Landroid/graphics/Rect;

    .line 187
    move-result-object v8

    .line 190
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 191
    int-to-float v8, v8

    .line 193
    cmpg-float v8, p1, v8

    .line 194
    if-gtz v8, :cond_7

    .line 196
    sget v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->DESKTOP_ELUDE_BAR:F

    .line 198
    cmpl-float v8, v8, p2

    .line 200
    if-ltz v8, :cond_7

    .line 202
    const/4 v8, 0x0

    .line 204
    cmpl-float v8, p2, v8

    .line 205
    if-ltz v8, :cond_7

    .line 207
    goto :goto_3

    .line 209
    :cond_7
    move v7, v1

    .line 210
    :goto_3
    if-eqz v7, :cond_10

    .line 211
    move-object v2, v6

    .line 213
    goto/16 :goto_7

    .line 214
    :cond_8
    if-eqz v6, :cond_10

    .line 216
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 218
    move-result-object v8

    .line 221
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 222
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 224
    move-result v8

    .line 227
    if-eqz v8, :cond_10

    .line 228
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 230
    move-result-object v8

    .line 233
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 234
    iget-boolean v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 236
    if-eqz v8, :cond_10

    .line 238
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 240
    move-result v8

    .line 243
    if-nez v8, :cond_10

    .line 244
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 246
    move-result v8

    .line 249
    if-eqz v8, :cond_9

    .line 250
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 252
    move-result-object v8

    .line 255
    goto :goto_4

    .line 256
    :cond_9
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 257
    move-result-object v8

    .line 260
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 261
    move-result v9

    .line 264
    invoke-static {v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 265
    move-result-object v8

    .line 268
    :goto_4
    float-to-int v9, p1

    .line 269
    float-to-int v10, p2

    .line 270
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 271
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipRegion(Landroid/graphics/Rect;III)Z

    .line 273
    move-result v11

    .line 276
    if-nez v11, :cond_e

    .line 277
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 279
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipShowRegion(Landroid/graphics/Rect;III)Z

    .line 281
    move-result v11

    .line 284
    if-eqz v11, :cond_a

    .line 285
    goto :goto_5

    .line 287
    :cond_a
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 288
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionRegion(Landroid/graphics/Rect;III)Z

    .line 290
    move-result v11

    .line 293
    if-eqz v11, :cond_b

    .line 294
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 296
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 299
    move-result p1

    .line 302
    if-nez p1, :cond_f

    .line 303
    iput v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 305
    goto :goto_6

    .line 307
    :cond_b
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 308
    move-result v7

    .line 311
    if-eqz v7, :cond_d

    .line 312
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 314
    move-result p1

    .line 317
    if-nez p1, :cond_c

    .line 318
    iput v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 320
    :cond_c
    invoke-virtual {v6, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 322
    goto :goto_6

    .line 325
    :cond_d
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 326
    move-result v7

    .line 329
    if-eqz v7, :cond_10

    .line 330
    const/4 p0, -0x1

    .line 332
    invoke-virtual {v6, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 333
    goto :goto_8

    .line 336
    :cond_e
    :goto_5
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 337
    :cond_f
    :goto_6
    move-object v2, v6

    .line 340
    goto :goto_8

    .line 341
    :cond_10
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 342
    goto/16 :goto_2

    .line 344
    :cond_11
    :goto_8
    return-object v2
    .line 346
.end method

.method public findControlCursorMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v3

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x4

    .line 15
    if-ge v2, v3, :cond_5

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 27
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 28
    invoke-virtual {v6, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 30
    move-result-object v3

    .line 33
    if-eqz v3, :cond_4

    .line 34
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 36
    move-result v6

    .line 39
    if-eqz v6, :cond_4

    .line 40
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 42
    move-result-object v6

    .line 45
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 48
    move-result v6

    .line 51
    if-eqz v6, :cond_4

    .line 52
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 54
    move-result v6

    .line 57
    if-nez v6, :cond_4

    .line 58
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 60
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 66
    move-result-object v6

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v6

    .line 74
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 75
    move-result v7

    .line 78
    invoke-static {v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 79
    move-result-object v6

    .line 82
    :goto_1
    float-to-int v7, p1

    .line 83
    float-to-int v8, p2

    .line 84
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 85
    move-result v9

    .line 88
    if-eqz v9, :cond_2

    .line 89
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 91
    move-result p1

    .line 94
    if-nez p1, :cond_1

    .line 95
    iput v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 97
    :cond_1
    invoke-virtual {v3, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 99
    return-object v3

    .line 102
    :cond_2
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 103
    move-result v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 109
    move-result p1

    .line 112
    if-nez p1, :cond_3

    .line 113
    iput v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 115
    :cond_3
    return-object v3

    .line 117
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 118
    goto :goto_0

    .line 120
    :cond_5
    const/4 v2, 0x0

    .line 121
    move v3, v1

    .line 122
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result v6

    .line 126
    if-ge v3, v6, :cond_11

    .line 127
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v6

    .line 132
    check-cast v6, Ljava/lang/Integer;

    .line 133
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result v6

    .line 138
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 139
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 141
    move-result-object v6

    .line 144
    if-eqz v6, :cond_6

    .line 145
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 147
    move-result v7

    .line 150
    if-nez v7, :cond_10

    .line 151
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 153
    move-result v7

    .line 156
    if-nez v7, :cond_10

    .line 157
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 159
    move-result v7

    .line 162
    if-eqz v7, :cond_6

    .line 163
    goto/16 :goto_7

    .line 165
    :cond_6
    const/4 v7, 0x1

    .line 167
    if-eqz v6, :cond_8

    .line 168
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 170
    move-result v8

    .line 173
    if-eqz v8, :cond_8

    .line 174
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomLeftCorner()Landroid/graphics/Rect;

    .line 176
    move-result-object v8

    .line 179
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 180
    int-to-float v8, v8

    .line 182
    cmpg-float v8, v8, p1

    .line 183
    if-gtz v8, :cond_7

    .line 185
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomRightCorner()Landroid/graphics/Rect;

    .line 187
    move-result-object v8

    .line 190
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 191
    int-to-float v8, v8

    .line 193
    cmpg-float v8, p1, v8

    .line 194
    if-gtz v8, :cond_7

    .line 196
    sget v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->DESKTOP_ELUDE_BAR:F

    .line 198
    cmpl-float v8, v8, p2

    .line 200
    if-ltz v8, :cond_7

    .line 202
    const/4 v8, 0x0

    .line 204
    cmpl-float v8, p2, v8

    .line 205
    if-ltz v8, :cond_7

    .line 207
    goto :goto_3

    .line 209
    :cond_7
    move v7, v1

    .line 210
    :goto_3
    if-eqz v7, :cond_10

    .line 211
    move-object v2, v6

    .line 213
    goto/16 :goto_7

    .line 214
    :cond_8
    if-eqz v6, :cond_10

    .line 216
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 218
    move-result-object v8

    .line 221
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 222
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 224
    move-result v8

    .line 227
    if-eqz v8, :cond_10

    .line 228
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 230
    move-result-object v8

    .line 233
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 234
    iget-boolean v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 236
    if-eqz v8, :cond_10

    .line 238
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 240
    move-result v8

    .line 243
    if-nez v8, :cond_10

    .line 244
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 246
    move-result v8

    .line 249
    if-eqz v8, :cond_9

    .line 250
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 252
    move-result-object v8

    .line 255
    goto :goto_4

    .line 256
    :cond_9
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 257
    move-result-object v8

    .line 260
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 261
    move-result v9

    .line 264
    invoke-static {v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 265
    move-result-object v8

    .line 268
    :goto_4
    float-to-int v9, p1

    .line 269
    float-to-int v10, p2

    .line 270
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 271
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipRegion(Landroid/graphics/Rect;III)Z

    .line 273
    move-result v11

    .line 276
    if-nez v11, :cond_e

    .line 277
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 279
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipShowRegion(Landroid/graphics/Rect;III)Z

    .line 281
    move-result v11

    .line 284
    if-eqz v11, :cond_a

    .line 285
    goto :goto_5

    .line 287
    :cond_a
    iget v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mCaptionHeight:I

    .line 288
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionRegion(Landroid/graphics/Rect;III)Z

    .line 290
    move-result v11

    .line 293
    if-eqz v11, :cond_b

    .line 294
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 296
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 299
    move-result p1

    .line 302
    if-nez p1, :cond_f

    .line 303
    iput v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 305
    goto :goto_6

    .line 307
    :cond_b
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z

    .line 308
    move-result v7

    .line 311
    if-eqz v7, :cond_d

    .line 312
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 314
    move-result p1

    .line 317
    if-nez p1, :cond_c

    .line 318
    iput v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 320
    :cond_c
    invoke-virtual {v6, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(II)V

    .line 322
    goto :goto_6

    .line 325
    :cond_d
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 326
    move-result v7

    .line 329
    if-eqz v7, :cond_10

    .line 330
    const/4 p0, -0x1

    .line 332
    invoke-virtual {v6, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 333
    goto :goto_6

    .line 336
    :cond_e
    :goto_5
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCtrlType(I)V

    .line 337
    :cond_f
    :goto_6
    move-object v2, v6

    .line 340
    goto :goto_8

    .line 341
    :cond_10
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 342
    goto/16 :goto_2

    .line 344
    :cond_11
    :goto_8
    return-object v2
    .line 346
.end method

.method public getMiuiFreeformCursorHandler()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformCursorHandler:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformModeCornerTipHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformModeMiniStateHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMiniStateHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformModePinHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiWindowDecorViewModel()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    instance-of v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 8
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
    .line 12
.end method

.method public handleMotionEvents(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    move-result v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v11

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    move-result v12

    .line 19
    const/4 v4, 0x4

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-nez v3, :cond_9

    .line 23
    invoke-virtual {v0, v11, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->findActiveMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 25
    move-result-object v3

    .line 28
    iput-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 29
    const-string v6, "MiuiFreeformModeGestureHandler"

    .line 31
    if-eqz v3, :cond_8

    .line 33
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 41
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 43
    move-result v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 49
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomRightCorner()Landroid/graphics/Rect;

    .line 51
    move-result-object v3

    .line 54
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 55
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 57
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomLeftCorner()Landroid/graphics/Rect;

    .line 59
    move-result-object v7

    .line 62
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 63
    sub-int/2addr v3, v7

    .line 65
    int-to-float v3, v3

    .line 66
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 67
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomLeftCorner()Landroid/graphics/Rect;

    .line 69
    move-result-object v7

    .line 72
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 73
    int-to-float v7, v7

    .line 75
    const v8, 0x3dcccccd    # 0.1f

    .line 76
    mul-float/2addr v3, v8

    .line 79
    add-float/2addr v7, v3

    .line 80
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 81
    invoke-virtual {v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpBottomRightCorner()Landroid/graphics/Rect;

    .line 83
    move-result-object v8

    .line 86
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 87
    int-to-float v8, v8

    .line 89
    sub-float/2addr v8, v3

    .line 90
    cmpg-float v3, v7, v11

    .line 91
    if-gtz v3, :cond_2

    .line 93
    cmpg-float v3, v11, v8

    .line 95
    if-gtz v3, :cond_2

    .line 97
    sget v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->DESKTOP_ELUDE_BAR:F

    .line 99
    cmpl-float v3, v3, v12

    .line 101
    if-ltz v3, :cond_2

    .line 103
    const/4 v3, 0x0

    .line 105
    cmpl-float v3, v12, v3

    .line 106
    if-ltz v3, :cond_2

    .line 108
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 110
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 112
    move-result v3

    .line 115
    if-eqz v3, :cond_0

    .line 116
    const-string/jumbo v0, "touch in elude bounds isInAnimating"

    .line 118
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v13

    .line 124
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiWindowDecorViewModel()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 125
    move-result-object v3

    .line 128
    if-eqz v3, :cond_3

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 131
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->getPickerTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 135
    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v1, "touch in elude bounds bottom caption: minimize picker page."

    .line 141
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->minimizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 147
    :cond_1
    const-string/jumbo v0, "touch in elude bounds bottom caption or drag region,handle event and start elude  to show anim."

    .line 150
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 156
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->freeformEludeToShow()V

    .line 160
    return v5

    .line 163
    :cond_2
    return v13

    .line 164
    :cond_3
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 165
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInDragTaskResizeAnim()Z

    .line 167
    move-result v3

    .line 170
    if-nez v3, :cond_7

    .line 171
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 173
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 175
    move-result-object v3

    .line 178
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 179
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 181
    move-result v7

    .line 184
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->isInDragTaskResizing(I)Z

    .line 185
    move-result v3

    .line 188
    if-eqz v3, :cond_4

    .line 189
    goto/16 :goto_0

    .line 191
    :cond_4
    invoke-virtual {v0, v11, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isInExcludeRegion(FF)Z

    .line 193
    move-result v3

    .line 196
    if-nez v3, :cond_24

    .line 197
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mContext:Landroid/content/Context;

    .line 199
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 201
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 203
    move-result v7

    .line 206
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 207
    invoke-virtual {v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 209
    move-result v8

    .line 212
    invoke-static {v3, v11, v12, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isInFullScreenNavHotArea(Landroid/content/Context;FFII)Z

    .line 213
    move-result v3

    .line 216
    if-nez v3, :cond_24

    .line 217
    iput-boolean v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 219
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 221
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 223
    invoke-virtual {v3, v1, v2, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->handleMotionEvents(Landroid/view/MotionEvent;Landroid/view/InputMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 225
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 228
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 230
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->cancelAutoLayoutAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 232
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 235
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseParams()V

    .line 237
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 240
    new-instance v2, Landroid/graphics/Rect;

    .line 242
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 244
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setRestoreNormalBounds(Landroid/graphics/Rect;)V

    .line 247
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 250
    if-eq v1, v5, :cond_5

    .line 252
    if-ne v1, v4, :cond_6

    .line 254
    :cond_5
    if-ne v1, v5, :cond_6

    .line 256
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 258
    move-result v1

    .line 261
    if-nez v1, :cond_6

    .line 262
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 264
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 268
    move-result v1

    .line 271
    if-eqz v1, :cond_6

    .line 272
    iput-boolean v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 274
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 276
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 278
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 280
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 282
    move-result-object v3

    .line 285
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 286
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 288
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 290
    move-result-object v4

    .line 293
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 294
    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 296
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->setFreeformTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 299
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 302
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 304
    invoke-virtual {v1, v11, v12, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleFreeformDownEvent(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 306
    :cond_6
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 309
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 311
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 313
    iget-boolean v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 315
    invoke-virtual {v1, v2, v13, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 317
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 320
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 322
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 325
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 327
    move-result-object v2

    .line 330
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 331
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 333
    invoke-virtual {v1, v2, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 335
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 338
    invoke-virtual {v2, v1}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    const-string v2, "handleMotionEvents mActiveMiuiFreeformTask: "

    .line 345
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    const-string v2, " mTouchedMode: "

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 360
    invoke-static {v1, v0, v6}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 362
    return v5

    .line 365
    :cond_7
    :goto_0
    const-string v0, "handleMotionEvents cvw is animating, return"

    .line 366
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v13

    .line 371
    :cond_8
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 372
    invoke-virtual {v1, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->setAllowGesture(Z)V

    .line 374
    iput v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 377
    const-string v0, "handleMotionEvents mActiveMiuiFreeformTask null"

    .line 379
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v13

    .line 384
    :cond_9
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 385
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isAllowGesture()Z

    .line 387
    move-result v6

    .line 390
    if-eqz v6, :cond_24

    .line 391
    const-string v6, "FF_NoUI/FREEFORM_ACTION_RESIZE"

    .line 393
    const/4 v7, 0x3

    .line 395
    const-string v8, "FF_NoUI/FREEFORM_ACTION_MOVE"

    .line 396
    const/4 v14, 0x2

    .line 398
    if-eq v3, v5, :cond_16

    .line 399
    if-eq v3, v14, :cond_b

    .line 401
    if-eq v3, v7, :cond_16

    .line 403
    const/4 v4, 0x5

    .line 405
    if-eq v3, v4, :cond_a

    .line 406
    goto/16 :goto_6

    .line 408
    :cond_a
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 410
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 412
    invoke-virtual {v3, v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->handleMotionEvents(Landroid/view/MotionEvent;Landroid/view/InputMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 414
    goto/16 :goto_6

    .line 417
    :cond_b
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 419
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 421
    invoke-virtual {v3, v1, v2, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->handleMotionEvents(Landroid/view/MotionEvent;Landroid/view/InputMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 423
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 426
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isDragging()Z

    .line 428
    move-result v1

    .line 431
    if-eqz v1, :cond_24

    .line 432
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 434
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isInMultiTouch()Z

    .line 436
    move-result v1

    .line 439
    if-nez v1, :cond_24

    .line 440
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 442
    if-eq v1, v5, :cond_10

    .line 444
    if-ne v1, v4, :cond_c

    .line 446
    goto/16 :goto_1

    .line 448
    :cond_c
    if-ne v1, v14, :cond_e

    .line 450
    iget-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 452
    if-eqz v1, :cond_d

    .line 454
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 456
    iput-boolean v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 459
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 461
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 463
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 465
    move-result-object v7

    .line 468
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 469
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 471
    move-result-object v8

    .line 474
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 475
    const/4 v10, 0x0

    .line 477
    move v5, v11

    .line 478
    move v6, v12

    .line 479
    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->onBottomCaptionHandleMotionEvents(FFLandroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/VelocityMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 480
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 483
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 485
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 487
    move-result-object v2

    .line 490
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 491
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 493
    invoke-interface {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformBottomDragStart(I)V

    .line 495
    :cond_d
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 498
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 500
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 502
    move-result-object v7

    .line 505
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 506
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 508
    move-result-object v8

    .line 511
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 512
    const/4 v10, 0x2

    .line 514
    move v5, v11

    .line 515
    move v6, v12

    .line 516
    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->onBottomCaptionHandleMotionEvents(FFLandroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/VelocityMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 517
    goto/16 :goto_2

    .line 520
    :cond_e
    if-ne v1, v7, :cond_15

    .line 522
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 524
    move-result v1

    .line 527
    if-nez v1, :cond_15

    .line 528
    iget-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 530
    if-eqz v1, :cond_f

    .line 532
    invoke-static {v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 534
    iput-boolean v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 537
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeResizeHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;

    .line 539
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 541
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 543
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 545
    move-result-object v8

    .line 548
    const/4 v9, 0x0

    .line 549
    move v5, v11

    .line 550
    move v6, v12

    .line 551
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->handleResize(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;I)V

    .line 552
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 555
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 557
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 559
    move-result-object v2

    .line 562
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 563
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 565
    invoke-interface {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformResizeStart(I)V

    .line 567
    :cond_f
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeResizeHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;

    .line 570
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 572
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 574
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 576
    move-result-object v8

    .line 579
    const/4 v9, 0x2

    .line 580
    move v5, v11

    .line 581
    move v6, v12

    .line 582
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->handleResize(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;I)V

    .line 583
    goto/16 :goto_2

    .line 586
    :cond_10
    :goto_1
    iget-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 588
    if-eqz v1, :cond_11

    .line 590
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 592
    iput-boolean v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mIsFirstMove:Z

    .line 595
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 597
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 599
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 601
    move-result-object v3

    .line 604
    invoke-virtual {v1, v2, v13, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ILandroid/graphics/Rect;)V

    .line 605
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 608
    if-ne v1, v5, :cond_11

    .line 610
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 612
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 614
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 616
    move-result-object v2

    .line 619
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 620
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 622
    invoke-interface {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformMoveStart(I)V

    .line 624
    :cond_11
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 627
    if-ne v1, v5, :cond_14

    .line 629
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 631
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 633
    move-result-object v1

    .line 636
    invoke-virtual {v1, v13}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->getVelocity(I)F

    .line 637
    move-result v1

    .line 640
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 641
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 643
    move-result-object v2

    .line 646
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->getVelocity(I)F

    .line 647
    move-result v2

    .line 650
    float-to-double v3, v1

    .line 651
    float-to-double v1, v2

    .line 652
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    .line 653
    move-result-wide v1

    .line 656
    double-to-float v1, v1

    .line 657
    iget-boolean v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 658
    if-eqz v2, :cond_12

    .line 660
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 662
    move-result v2

    .line 665
    if-nez v2, :cond_12

    .line 666
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 668
    move-result-object v2

    .line 671
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 672
    move-result v2

    .line 675
    if-eqz v2, :cond_12

    .line 676
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 678
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 680
    invoke-virtual {v2, v11, v12, v1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleFreeformMoveEvent(FFFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 682
    goto :goto_2

    .line 685
    :cond_12
    const/high16 v2, 0x44160000    # 600.0f

    .line 686
    cmpg-float v2, v1, v2

    .line 688
    if-gez v2, :cond_13

    .line 690
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 692
    move-result v2

    .line 695
    if-nez v2, :cond_13

    .line 696
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 698
    move-result-object v2

    .line 701
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 702
    move-result v2

    .line 705
    if-eqz v2, :cond_13

    .line 706
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 708
    invoke-virtual {v2, v11, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isCurrentPosHotAreaDifOri(FF)Z

    .line 710
    move-result v2

    .line 713
    if-eqz v2, :cond_13

    .line 714
    iput-boolean v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 716
    const-string v2, "FF_UI/MWS_ACTION_MOVE"

    .line 718
    invoke-static {v2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 720
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 723
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->freeformFirstEnterHotArea()V

    .line 725
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 728
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 730
    invoke-virtual {v2, v11, v12, v1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleFreeformMoveEvent(FFFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 732
    goto :goto_2

    .line 735
    :cond_13
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 736
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 738
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 740
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 742
    move-result-object v3

    .line 745
    invoke-virtual {v1, v2, v11, v12, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->getMoveBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFLandroid/graphics/PointF;)Landroid/graphics/Rect;

    .line 746
    move-result-object v1

    .line 749
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 750
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 752
    invoke-virtual {v2, v3, v14, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ILandroid/graphics/Rect;)V

    .line 754
    goto :goto_2

    .line 757
    :cond_14
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 758
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 760
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 762
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 764
    move-result-object v3

    .line 767
    invoke-virtual {v1, v2, v11, v12, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->getMoveBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFLandroid/graphics/PointF;)Landroid/graphics/Rect;

    .line 768
    move-result-object v1

    .line 771
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 772
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 774
    invoke-virtual {v2, v3, v14, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ILandroid/graphics/Rect;)V

    .line 776
    :cond_15
    :goto_2
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 779
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 781
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 783
    iget-boolean v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 785
    invoke-virtual {v1, v2, v14, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 787
    goto/16 :goto_6

    .line 790
    :cond_16
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 792
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 794
    invoke-virtual {v9, v1, v2, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->handleMotionEvents(Landroid/view/MotionEvent;Landroid/view/InputMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 796
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 799
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isDragging()Z

    .line 801
    move-result v1

    .line 804
    if-eqz v1, :cond_20

    .line 805
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 807
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isInMultiTouch()Z

    .line 809
    move-result v1

    .line 812
    if-eqz v1, :cond_17

    .line 813
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 815
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getLastMotionEvent()Landroid/view/MotionEvent;

    .line 817
    move-result-object v1

    .line 820
    if-eqz v1, :cond_17

    .line 821
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 823
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getLastMotionEvent()Landroid/view/MotionEvent;

    .line 825
    move-result-object v1

    .line 828
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 829
    move-result v11

    .line 832
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 833
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getLastMotionEvent()Landroid/view/MotionEvent;

    .line 835
    move-result-object v1

    .line 838
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 839
    move-result v12

    .line 842
    :cond_17
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 843
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 845
    move-result-object v1

    .line 848
    invoke-virtual {v1, v13}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->getVelocity(I)F

    .line 849
    move-result v1

    .line 852
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 853
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 855
    move-result-object v2

    .line 858
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->getVelocity(I)F

    .line 859
    move-result v2

    .line 862
    iget v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 863
    if-ne v9, v5, :cond_1c

    .line 865
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 867
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 870
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 872
    move-object/from16 v16, v4

    .line 874
    move/from16 v17, v11

    .line 876
    move/from16 v18, v12

    .line 878
    move/from16 v19, v1

    .line 880
    move/from16 v20, v2

    .line 882
    invoke-virtual/range {v15 .. v20}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->handlePinUpOrCancel(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFFF)Z

    .line 884
    move-result v4

    .line 887
    if-nez v4, :cond_1a

    .line 888
    iget-boolean v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 890
    if-eqz v4, :cond_19

    .line 892
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 894
    move-result v4

    .line 897
    if-nez v4, :cond_19

    .line 898
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 900
    move-result-object v4

    .line 903
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 904
    move-result v4

    .line 907
    if-eqz v4, :cond_19

    .line 908
    if-ne v3, v7, :cond_18

    .line 910
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 912
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 914
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleFreeformCancelEvent(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 916
    goto :goto_3

    .line 919
    :cond_18
    float-to-double v3, v1

    .line 920
    float-to-double v1, v2

    .line 921
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    .line 922
    move-result-wide v1

    .line 925
    double-to-float v1, v1

    .line 926
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 927
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 929
    invoke-virtual {v2, v11, v12, v1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleFreeformUpEvent(FFFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 931
    goto :goto_3

    .line 934
    :cond_19
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 935
    invoke-virtual {v3, v13, v13, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 937
    move-result-object v20

    .line 940
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 941
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 943
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 945
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 947
    move-result-object v19

    .line 950
    move-object/from16 v16, v3

    .line 951
    move/from16 v17, v11

    .line 953
    move/from16 v18, v12

    .line 955
    move/from16 v21, v1

    .line 957
    move/from16 v22, v2

    .line 959
    invoke-virtual/range {v15 .. v22}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->getUpBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFLandroid/graphics/PointF;Landroid/graphics/Rect;FF)Landroid/graphics/Rect;

    .line 961
    move-result-object v1

    .line 964
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 965
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 967
    invoke-virtual {v2, v3, v5, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ILandroid/graphics/Rect;)V

    .line 969
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 972
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 974
    move-result-object v1

    .line 977
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 978
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 980
    move-result-object v2

    .line 983
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 984
    move-result v1

    .line 987
    xor-int/2addr v1, v5

    .line 988
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 989
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 991
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 993
    move-result-object v3

    .line 996
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 997
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 999
    invoke-interface {v2, v3, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformMoveEnd(IZ)V

    .line 1001
    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 1004
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1006
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 1008
    iget-boolean v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 1010
    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 1012
    goto/16 :goto_5

    .line 1015
    :cond_1a
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 1017
    move-result v1

    .line 1020
    if-nez v1, :cond_1b

    .line 1021
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 1023
    move-result-object v1

    .line 1026
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 1027
    move-result v1

    .line 1030
    if-eqz v1, :cond_1b

    .line 1031
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 1033
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleFreeformToPin()V

    .line 1035
    :cond_1b
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 1038
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1040
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1042
    move-result-object v2

    .line 1045
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1046
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1048
    invoke-interface {v1, v2, v5}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformMoveEnd(IZ)V

    .line 1050
    goto/16 :goto_5

    .line 1053
    :cond_1c
    if-ne v9, v14, :cond_1d

    .line 1055
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 1057
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 1060
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1062
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 1064
    move-result-object v18

    .line 1067
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1068
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 1070
    move-result-object v19

    .line 1073
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1074
    const/16 v21, 0x1

    .line 1076
    move/from16 v16, v11

    .line 1078
    move/from16 v17, v12

    .line 1080
    move-object/from16 v20, v1

    .line 1082
    invoke-virtual/range {v15 .. v21}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->onBottomCaptionHandleMotionEvents(FFLandroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/VelocityMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 1084
    goto/16 :goto_5

    .line 1087
    :cond_1d
    if-ne v9, v7, :cond_1e

    .line 1089
    invoke-static {v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 1091
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 1094
    move-result v1

    .line 1097
    if-nez v1, :cond_23

    .line 1098
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 1100
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1102
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1104
    move-result-object v2

    .line 1107
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1108
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1110
    invoke-interface {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformResizeEnd(I)V

    .line 1112
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeResizeHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;

    .line 1115
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1117
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1119
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 1121
    move-result-object v19

    .line 1124
    const/16 v20, 0x1

    .line 1125
    move/from16 v16, v11

    .line 1127
    move/from16 v17, v12

    .line 1129
    move-object/from16 v18, v1

    .line 1131
    invoke-virtual/range {v15 .. v20}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->handleResize(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;I)V

    .line 1133
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 1136
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1138
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 1140
    iget-boolean v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 1142
    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 1144
    goto/16 :goto_5

    .line 1147
    :cond_1e
    if-ne v9, v4, :cond_23

    .line 1149
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 1151
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 1154
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1156
    move-object/from16 v16, v3

    .line 1158
    move/from16 v17, v11

    .line 1160
    move/from16 v18, v12

    .line 1162
    move/from16 v19, v1

    .line 1164
    move/from16 v20, v2

    .line 1166
    invoke-virtual/range {v15 .. v20}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->handlePinUpOrCancel(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFFF)Z

    .line 1168
    move-result v3

    .line 1171
    if-nez v3, :cond_23

    .line 1172
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 1174
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->isImeShowing()Z

    .line 1176
    move-result v4

    .line 1179
    const/16 v6, 0x14

    .line 1180
    if-eqz v4, :cond_1f

    .line 1182
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 1184
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getImeHeight()I

    .line 1186
    move-result v4

    .line 1189
    add-int/2addr v4, v6

    .line 1190
    goto :goto_4

    .line 1191
    :cond_1f
    move v4, v13

    .line 1192
    :goto_4
    invoke-virtual {v3, v6, v6, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 1193
    move-result-object v20

    .line 1196
    const v3, 0x3f99999a    # 1.2f

    .line 1197
    invoke-static {v11, v12, v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getPredictXY(FFFFF)[F

    .line 1200
    move-result-object v3

    .line 1203
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 1204
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1206
    aget v17, v3, v13

    .line 1208
    aget v18, v3, v5

    .line 1210
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1212
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDownPoint()Landroid/graphics/PointF;

    .line 1214
    move-result-object v19

    .line 1217
    move-object/from16 v16, v4

    .line 1218
    move/from16 v21, v1

    .line 1220
    move/from16 v22, v2

    .line 1222
    invoke-virtual/range {v15 .. v22}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->getUpBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFLandroid/graphics/PointF;Landroid/graphics/Rect;FF)Landroid/graphics/Rect;

    .line 1224
    move-result-object v1

    .line 1227
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeMoveHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;

    .line 1228
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1230
    invoke-virtual {v2, v3, v5, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ILandroid/graphics/Rect;)V

    .line 1232
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 1235
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1237
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 1239
    iget-boolean v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 1241
    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 1243
    goto :goto_5

    .line 1246
    :cond_20
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1247
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isDoubleTap()Z

    .line 1249
    move-result v1

    .line 1252
    if-eqz v1, :cond_21

    .line 1253
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1255
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1257
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->doubleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 1259
    goto :goto_5

    .line 1262
    :cond_21
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 1263
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1265
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1267
    move-result-object v2

    .line 1270
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1271
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1273
    invoke-interface {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformHandleEventEnd(I)V

    .line 1275
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1278
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isWaitingForDoubleTap()Z

    .line 1280
    move-result v1

    .line 1283
    if-nez v1, :cond_22

    .line 1284
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1286
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1288
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->singleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 1290
    goto :goto_5

    .line 1293
    :cond_22
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1294
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isWaitingForDoubleTap()Z

    .line 1296
    move-result v1

    .line 1299
    if-eqz v1, :cond_23

    .line 1300
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 1302
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1304
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->scheduleDoubleTapTimeoutCallback(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 1306
    :cond_23
    :goto_5
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 1309
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1311
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchedMode:I

    .line 1313
    iget-boolean v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isEnteredOtherArea:Z

    .line 1315
    invoke-virtual {v1, v2, v5, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 1317
    :cond_24
    :goto_6
    return v13
    .line 1320
.end method

.method public isGestureControlled(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeTouchState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->isGestureControlled(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isInExcludeRegion(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 5
    float-to-int p1, p1

    .line 7
    float-to-int p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 9
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
    .line 17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mUiMode:I

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mUiMode:I

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->loadColors(Landroid/content/Context;)V

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 17
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mUiMode:I

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->onUiModeChanged(I)V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public setMiuiFreeFormTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 7
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
    .line 14
.end method

.method public startHomeTransition()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startHomeTransition()V

    .line 4
    return-void
    .line 7
.end method

.method public startRequestedOrientationAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    const/16 v0, 0xa

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 6
    return-void
    .line 9
.end method
