.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;


# static fields
.field public static final DARK_STROKE_THICKNESS:F = 3.0f

.field public static final DURATION:J = 0xbb8L

.field public static final GUIDE_DURATION:J = 0xfa0L

.field public static final STATE_CORNER_EMPHASIS:I = 0x3

.field public static final STATE_CORNER_HIDE:I = 0x0

.field public static final STATE_CORNER_HOLD:I = 0x2

.field public static final STATE_CORNER_SHOW:I = 0x1

.field public static final STATE_CORNER_UNDEFINED:I = -0x1

.field public static final STROKE_CORNER_OFFSET:F = 6.0f

.field public static final STROKE_THICKNESS:F = 50.0f

.field private static final TAG:Ljava/lang/String; = "CornerChange"

.field private static final baseDegree:F = 54.0f

.field private static final baseRadius:F = 20.0f

.field private static final baseThickness:F = 4.0f

.field private static final baseX:F = -15.0f

.field private static final baseY:F = -15.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mEmphasisState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

.field public mFreeformStrokeAlpha:F

.field public mFreefromStrokeColors:[F

.field public mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

.field public mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

.field private mMainHandler:Landroid/os/Handler;

.field public mMiniStrokeAlpha:F

.field public mMiniStrokeColors:[F

.field private mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field private mNightMode:Z

.field private mOtherOPGestureStarted:Z

.field public mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;


# direct methods
.method public static synthetic $r8$lambda$CwREbG7GTLsjvOZHygKmDN4goSA(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->lambda$startGuideCornerAnim$4(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$PPCC_GGG5_VRvlM1nOiAXhQM1So(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->lambda$onTaskOperatorChanged$0(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$YyApeCey5x1GNYVJFMavzv-aGvo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->lambda$startGuideCornerAnim$3(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$ZcClA0vdVZRSLOIlaUAGqjDlV9M(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->lambda$startShowCornerAnim$5(ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$ZeZ_fh86bKCnEYy6aAu3QO2Uwws(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->lambda$startGuideCornerAnim$2(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$t6o9EWlEhV_ZbqttaWFtZ_4o1xU(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->lambda$prepareResizeCornerStateParams$1(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Landroid/os/Handler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    move-object/from16 v2, p4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v3, 0x3

    .line 10
    new-array v4, v3, [F

    .line 11
    fill-array-data v4, :array_0

    .line 13
    iput-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 16
    new-array v3, v3, [F

    .line 18
    fill-array-data v3, :array_1

    .line 20
    iput-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 23
    const v3, 0x3e19999a    # 0.15f

    .line 25
    iput v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 28
    const v3, 0x3f4ccccd    # 0.8f

    .line 30
    iput v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 33
    move-object v3, p1

    .line 35
    iput-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 36
    move-object/from16 v4, p2

    .line 38
    iput-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 40
    iput-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 42
    iput-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 44
    new-instance v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 46
    const/high16 v6, -0x3e780000    # -17.0f

    .line 48
    const/high16 v7, -0x3e780000    # -17.0f

    .line 50
    const/4 v8, 0x0

    .line 52
    const/high16 v9, 0x41900000    # 18.0f

    .line 53
    const/high16 v10, 0x40400000    # 3.0f

    .line 55
    const/high16 v11, 0x42580000    # 54.0f

    .line 57
    const/4 v12, 0x0

    .line 59
    move-object v4, v13

    .line 60
    move-object v5, p1

    .line 61
    invoke-direct/range {v4 .. v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;-><init>(Landroid/content/Context;FFFFFFI)V

    .line 62
    iput-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 65
    new-instance v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 67
    const/high16 v6, -0x3e900000    # -15.0f

    .line 69
    const/high16 v7, -0x3e900000    # -15.0f

    .line 71
    const/high16 v8, 0x3f800000    # 1.0f

    .line 73
    const/high16 v9, 0x41a00000    # 20.0f

    .line 75
    const/high16 v10, 0x40800000    # 4.0f

    .line 77
    const/4 v12, 0x1

    .line 79
    move-object v4, v13

    .line 80
    invoke-direct/range {v4 .. v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;-><init>(Landroid/content/Context;FFFFFFI)V

    .line 81
    iput-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 84
    new-instance v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 86
    const/high16 v6, -0x3e740000    # -17.5f

    .line 88
    const/high16 v7, -0x3e740000    # -17.5f

    .line 90
    const/high16 v9, 0x41b80000    # 23.0f

    .line 92
    const/high16 v10, 0x40400000    # 3.0f

    .line 94
    const/4 v12, 0x2

    .line 96
    move-object v4, v13

    .line 97
    invoke-direct/range {v4 .. v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;-><init>(Landroid/content/Context;FFFFFFI)V

    .line 98
    iput-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 101
    new-instance v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 103
    const/high16 v6, -0x3e900000    # -15.0f

    .line 105
    const/high16 v7, -0x3e900000    # -15.0f

    .line 107
    const/high16 v10, 0x40800000    # 4.0f

    .line 109
    const/4 v12, 0x3

    .line 111
    move-object v4, v13

    .line 112
    invoke-direct/range {v4 .. v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;-><init>(Landroid/content/Context;FFFFFFI)V

    .line 113
    iput-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mEmphasisState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 116
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->addActiveTaskListener(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 118
    move-object/from16 v1, p5

    .line 121
    iput-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMainHandler:Landroid/os/Handler;

    .line 123
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->initCornerTipHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 132
    move-result-object v1

    .line 135
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 136
    and-int/lit8 v1, v1, 0x30

    .line 138
    const/16 v2, 0x20

    .line 140
    if-ne v1, v2, :cond_0

    .line 142
    const/4 v1, 0x1

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    const/4 v1, 0x0

    .line 146
    :goto_0
    iput-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 147
    move-object/from16 v1, p6

    .line 149
    iput-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->loadColors(Landroid/content/Context;)V

    .line 153
    return-void

    .line 156
    nop

    .line 157
    :array_0
    .array-data 4
        0x3f53f7cf    # 0.828f
        0x3f53f7cf    # 0.828f
        0x3f53f7cf    # 0.828f
    .end array-data

    .line 158
    :array_1
    .array-data 4
        0x3f65e354    # 0.898f
        0x3f65e354    # 0.898f
        0x3f65e354    # 0.898f
    .end array-data
    .line 168
.end method

.method private getMoveableBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpMode()I

    .line 9
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move p1, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/16 p1, 0x14

    .line 19
    :goto_1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 21
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0, v2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 33
    const/high16 v2, 0x41600000    # 14.0f

    .line 35
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 37
    move-result v0

    .line 40
    float-to-int v0, v0

    .line 41
    add-int/2addr p1, v0

    .line 42
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 43
    invoke-virtual {p0, p1, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 45
    move-result-object p0

    .line 48
    return-object p0
    .line 49
.end method

.method private synthetic lambda$onTaskOperatorChanged$0(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mOtherOPGestureStarted:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string p0, "CornerChange"

    .line 6
    const-string p1, "infinity gesture is dragging, return."

    .line 8
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 14
    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 19
    const/4 v2, 0x5

    .line 21
    const-wide/16 v4, 0xbb8

    .line 22
    move-object v3, p2

    .line 24
    move-object v6, p1

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 26
    return-void
    .line 29
.end method

.method private synthetic lambda$prepareResizeCornerStateParams$1(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 12
    const/4 v2, 0x5

    .line 14
    const-wide/16 v4, 0xbb8

    .line 15
    move-object v3, p2

    .line 17
    move-object v6, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 19
    return-void
    .line 22
.end method

.method private synthetic lambda$startGuideCornerAnim$2(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLeftCornerState(I)V

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setRightCornerState(I)V

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerAnimType()I

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mEmphasisState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 31
    const-string v1, "guide"

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 38
    const/4 v0, 0x2

    .line 40
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method private synthetic lambda$startGuideCornerAnim$3(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLeftCornerState(I)V

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setRightCornerState(I)V

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerAnimType()I

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 31
    const-string v1, "guide"

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 38
    const/4 v0, 0x3

    .line 40
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method private synthetic lambda$startGuideCornerAnim$4(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLeftCornerState(I)V

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setRightCornerState(I)V

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerAnimType()I

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x3

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 41
    const/4 v0, 0x5

    .line 43
    const-string v1, "guide hide"

    .line 44
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 46
    :cond_0
    return-void
    .line 49
.end method

.method private synthetic lambda$startShowCornerAnim$5(ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 2
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 8
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 13
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 18
    const/4 v1, 0x5

    .line 20
    const-wide/16 v3, 0xbb8

    .line 21
    move-object v2, p3

    .line 23
    move-object v5, p2

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo p1, "task#"

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 37
    move-result-object p1

    .line 40
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string p1, " mini State changed and cancel 3s hide animation."

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    const-string p1, "CornerChange"

    .line 57
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void
    .line 62
.end method

.method private prepareResizeCornerStateParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V
    .locals 7

    .line 1
    const/16 v0, 0x9

    .line 2
    if-eqz p2, :cond_10

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p2, v1, :cond_f

    .line 8
    const/4 v3, 0x2

    .line 10
    if-eq p2, v3, :cond_0

    .line 11
    goto/16 :goto_7

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledBounds()Landroid/graphics/Rect;

    .line 15
    move-result-object p2

    .line 18
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->getMoveableBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Landroid/graphics/Rect;

    .line 19
    move-result-object v3

    .line 22
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 23
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 25
    if-lt v4, v5, :cond_1

    .line 27
    move v4, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v2

    .line 31
    :goto_0
    iget v5, p2, Landroid/graphics/Rect;->left:I

    .line 32
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 34
    if-gt v5, v6, :cond_2

    .line 36
    move v5, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v5, v2

    .line 40
    :goto_1
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 41
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 43
    if-lt p2, v3, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    move v1, v2

    .line 48
    :goto_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpMode()I

    .line 49
    move-result p2

    .line 52
    if-nez p2, :cond_7

    .line 53
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 55
    if-eqz p2, :cond_4

    .line 57
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 59
    const/high16 v3, 0x40400000    # 3.0f

    .line 61
    invoke-static {p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 63
    move-result p2

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/4 p2, 0x0

    .line 68
    :goto_3
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeThickness(F)V

    .line 69
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 72
    if-eqz p2, :cond_5

    .line 74
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 76
    goto :goto_4

    .line 78
    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 79
    :goto_4
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeColors([F)V

    .line 81
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 84
    if-eqz p2, :cond_6

    .line 86
    iget p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 88
    goto :goto_5

    .line 90
    :cond_6
    iget p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 91
    :goto_5
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeAlpha(F)V

    .line 93
    goto :goto_6

    .line 96
    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 97
    const/high16 v3, 0x42480000    # 50.0f

    .line 99
    invoke-static {p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 101
    move-result p2

    .line 104
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeThickness(F)V

    .line 105
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 108
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeColors([F)V

    .line 110
    iget p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 113
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeAlpha(F)V

    .line 115
    :goto_6
    const-string p2, "resize move"

    .line 118
    if-eqz v1, :cond_9

    .line 120
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLeftCornerHide()Z

    .line 122
    move-result v0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isRightCornerHide()Z

    .line 128
    move-result v0

    .line 131
    if-nez v0, :cond_11

    .line 132
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 134
    goto/16 :goto_7

    .line 137
    :cond_9
    if-nez v5, :cond_a

    .line 139
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLeftCornerHold()Z

    .line 141
    move-result v1

    .line 144
    if-eqz v1, :cond_b

    .line 145
    :cond_a
    if-nez v4, :cond_c

    .line 147
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isRightCornerHold()Z

    .line 149
    move-result v1

    .line 152
    if-nez v1, :cond_c

    .line 153
    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestAndTmpLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 157
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 160
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestAndTmpRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 162
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 165
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 167
    goto/16 :goto_7

    .line 170
    :cond_c
    if-eqz v5, :cond_d

    .line 172
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLeftCornerHide()Z

    .line 174
    move-result v1

    .line 177
    if-nez v1, :cond_d

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 180
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestAndTmpLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 182
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 185
    const/4 v0, 0x6

    .line 187
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 188
    goto :goto_7

    .line 191
    :cond_d
    if-eqz v4, :cond_e

    .line 192
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isRightCornerHide()Z

    .line 194
    move-result v1

    .line 197
    if-nez v1, :cond_e

    .line 198
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 200
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestAndTmpRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 202
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 205
    const/4 v0, 0x7

    .line 207
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 208
    goto :goto_7

    .line 211
    :cond_e
    iget-boolean p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpModeChanged:Z

    .line 212
    if-eqz p2, :cond_11

    .line 214
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 216
    const-string/jumbo v1, "stroke changed"

    .line 218
    invoke-direct {p0, p1, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 224
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 226
    iput-boolean v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpModeChanged:Z

    .line 229
    goto :goto_7

    .line 231
    :cond_f
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 232
    const-string v0, "resize up"

    .line 234
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 239
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda0;

    .line 241
    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;I)V

    .line 243
    const/16 p0, 0xa

    .line 246
    invoke-virtual {p2, p0, v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    .line 248
    goto :goto_7

    .line 251
    :cond_10
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 252
    const-string v1, "resize down"

    .line 254
    invoke-direct {p0, p1, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 259
    move-result-object p2

    .line 262
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 263
    move-result p2

    .line 266
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpLCornerState(I)V

    .line 267
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 270
    move-result-object p2

    .line 273
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 274
    move-result p2

    .line 277
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpRCornerState(I)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 281
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 284
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 286
    :cond_11
    :goto_7
    return-void
    .line 289
.end method

.method private prepareTranslateCornerStateParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isRightCornerHide()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLeftCornerHide()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    if-ne p2, v0, :cond_1

    .line 16
    const-string p2, "move"

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method private setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->getMoveableBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Landroid/graphics/Rect;

    .line 6
    move-result-object v1

    .line 9
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 10
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 12
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v5

    .line 20
    :goto_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 21
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 23
    if-gt v3, v6, :cond_1

    .line 25
    move v3, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v5

    .line 29
    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 30
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    if-lt v6, v7, :cond_2

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    move v4, v5

    .line 37
    :goto_2
    if-nez v3, :cond_4

    .line 38
    if-eqz v4, :cond_3

    .line 40
    goto :goto_3

    .line 42
    :cond_3
    move-object v3, p2

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 45
    :goto_4
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 47
    if-nez v2, :cond_5

    .line 50
    if-eqz v4, :cond_6

    .line 52
    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 54
    :cond_6
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 56
    if-eqz v4, :cond_7

    .line 59
    const-string p0, " reachBottomThreshold bounds: "

    .line 61
    invoke-static {p3, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p1, " moveableBounds: "

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    const-string p1, "CornerChange"

    .line 86
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_7
    return-void
    .line 91
.end method

.method private startExitCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 9
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeThickness(F)V

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 16
    const/16 v0, 0x8

    .line 18
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 20
    return-void
    .line 23
.end method

.method private startGuideCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 4
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedStrokeThickness(F)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 14
    const-string v1, "guide show"

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 21
    const/4 v3, 0x1

    .line 23
    const-string v4, "guide show"

    .line 24
    const-wide/16 v0, 0x96

    .line 26
    add-long v5, p2, v0

    .line 28
    move-object v7, p1

    .line 30
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 31
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMainHandler:Landroid/os/Handler;

    .line 34
    new-instance p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda2;

    .line 36
    const/4 v0, 0x0

    .line 38
    invoke-direct {p3, p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 39
    const-wide/16 v0, 0x546

    .line 42
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMainHandler:Landroid/os/Handler;

    .line 47
    new-instance p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda2;

    .line 49
    const/4 v0, 0x1

    .line 51
    invoke-direct {p3, p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 52
    const-wide/16 v0, 0x834

    .line 55
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMainHandler:Landroid/os/Handler;

    .line 60
    new-instance p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda2;

    .line 62
    const/4 v0, 0x2

    .line 64
    invoke-direct {p3, p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 65
    const-wide/16 p0, 0x1194

    .line 68
    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
    .line 73
.end method

.method private startHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestAndTmpLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestAndTmpRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 12
    const/4 v0, 0x5

    .line 14
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 15
    return-void
    .line 18
.end method

.method private startShowCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 10
    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 15
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 19
    const/4 v2, 0x4

    .line 21
    new-instance v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda1;

    .line 22
    invoke-direct {v7, p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 24
    move-object v3, p2

    .line 27
    move-wide v4, p3

    .line 28
    move-object v6, p1

    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    .line 30
    return-void
    .line 33
.end method


# virtual methods
.method public handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result p4

    .line 5
    if-eqz p4, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 p4, 0x1

    .line 9
    if-eq p3, p4, :cond_3

    .line 10
    const/4 p4, 0x2

    .line 12
    if-eq p3, p4, :cond_2

    .line 13
    const/4 p4, 0x3

    .line 15
    if-eq p3, p4, :cond_1

    .line 16
    const/4 p4, 0x4

    .line 18
    if-eq p3, p4, :cond_3

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 22
    move-result p3

    .line 25
    if-nez p3, :cond_4

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->prepareResizeCornerStateParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 28
    goto :goto_0

    .line 31
    :cond_2
    if-nez p2, :cond_4

    .line 32
    const-string/jumbo p2, "touch bottom"

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 41
    move-result p3

    .line 44
    if-nez p3, :cond_4

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->prepareTranslateCornerStateParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 47
    :cond_4
    :goto_0
    return-void
    .line 50
.end method

.method public loadColors(Landroid/content/Context;)V
    .locals 6

    .line 1
    const v0, 0x7f060132    # @color/freeform_mini_stroke_color '#66c0c0c0'

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 5
    move-result v0

    .line 8
    shr-int/lit8 v1, v0, 0x18

    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 11
    int-to-float v1, v1

    .line 13
    const/high16 v2, 0x437f0000    # 255.0f

    .line 14
    div-float/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 19
    shr-int/lit8 v3, v0, 0x10

    .line 21
    and-int/lit16 v3, v3, 0xff

    .line 23
    int-to-float v3, v3

    .line 25
    div-float/2addr v3, v2

    .line 26
    const/4 v4, 0x0

    .line 27
    aput v3, v1, v4

    .line 28
    shr-int/lit8 v3, v0, 0x8

    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 32
    int-to-float v3, v3

    .line 34
    div-float/2addr v3, v2

    .line 35
    const/4 v5, 0x1

    .line 36
    aput v3, v1, v5

    .line 37
    and-int/lit16 v0, v0, 0xff

    .line 39
    int-to-float v0, v0

    .line 41
    div-float/2addr v0, v2

    .line 42
    const/4 v3, 0x2

    .line 43
    aput v0, v1, v3

    .line 44
    const v0, 0x7f060131    # @color/freeform_dark_stroke_color '#26d4d4d4'

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 49
    move-result p1

    .line 52
    shr-int/lit8 v0, p1, 0x18

    .line 53
    and-int/lit16 v0, v0, 0xff

    .line 55
    int-to-float v0, v0

    .line 57
    div-float/2addr v0, v2

    .line 58
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 61
    shr-int/lit8 v1, p1, 0x10

    .line 63
    and-int/lit16 v1, v1, 0xff

    .line 65
    int-to-float v1, v1

    .line 67
    div-float/2addr v1, v2

    .line 68
    aput v1, v0, v4

    .line 69
    shr-int/lit8 v1, p1, 0x8

    .line 71
    and-int/lit16 v1, v1, 0xff

    .line 73
    int-to-float v1, v1

    .line 75
    div-float/2addr v1, v2

    .line 76
    aput v1, v0, v5

    .line 77
    and-int/lit16 p1, p1, 0xff

    .line 79
    int-to-float p1, p1

    .line 81
    div-float/2addr p1, v2

    .line 82
    aput p1, v0, v3

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "mStrokeAlpha="

    .line 87
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " strokeColor="

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 102
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 114
    const-string p1, "CornerChange"

    .line 115
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
    .line 120
.end method

.method public onDesktopModeChanged(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 7
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 15
    if-ge v0, v1, :cond_3

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 28
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 34
    move-result-object v2

    .line 37
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 40
    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLeftCornerHide()Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isRightCornerHide()Z

    .line 50
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    :cond_1
    const-string v2, "enter desktop mode"

    .line 56
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    return-void
    .line 64
.end method

.method public onOtherUiTouch(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public onTaskAppeared(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onTaskAppeared task#"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v2, "CornerChange"

    .line 16
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v3, "task#"

    .line 23
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, " onTaskAppeared"

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 41
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 43
    move-result-object v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    const-string v4, " mode:"

    .line 50
    invoke-static {v1, p1, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 56
    move-result v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 66
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 70
    move-result v1

    .line 73
    const/high16 v4, 0x42480000    # 50.0f

    .line 74
    const/4 v5, 0x1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 79
    move-result p1

    .line 82
    if-ne p1, v5, :cond_1

    .line 83
    const/4 p1, 0x0

    .line 85
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedStrokeThickness(F)V

    .line 86
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 91
    move-result p1

    .line 94
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeThickness(F)V

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, " desktop appeared"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 116
    const/16 v0, 0xc

    .line 117
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 119
    :cond_1
    return-void

    .line 122
    :cond_2
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isEnteringMini()Z

    .line 123
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    const-string p0, "onTaskAppeared return for isEnteringMini"

    .line 129
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 135
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 137
    move-result-object v1

    .line 140
    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 143
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 145
    move-result-object v1

    .line 148
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->isInDragTaskResizing(I)Z

    .line 149
    move-result v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    const-string p0, "onTaskAppeared return for isInDragTaskResizing taskId\uff1a "

    .line 155
    invoke-static {p0, p1, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    return-void

    .line 160
    :cond_4
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 161
    move-result p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    const-wide/16 v0, 0x12c

    .line 167
    invoke-direct {p0, v3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startGuideCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;J)V

    .line 169
    goto :goto_0

    .line 172
    :cond_5
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 173
    move-result p1

    .line 176
    if-ne p1, v5, :cond_6

    .line 177
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 179
    invoke-static {p1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 181
    move-result p1

    .line 184
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedStrokeThickness(F)V

    .line 185
    const-wide/16 v1, 0x320

    .line 188
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startShowCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;J)V

    .line 190
    :cond_6
    :goto_0
    return-void
    .line 193
.end method

.method public onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 8
    const-string/jumbo v1, "task#"

    .line 10
    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v3, " lastMode: "

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v3, " newMode: "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v3, " resize: "

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string v3, " from "

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v3, 0x4

    .line 54
    const/4 v4, 0x5

    .line 55
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 66
    const-string v3, "CornerChange"

    .line 67
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 72
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 74
    move-result-object v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 80
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 82
    move-result-object v2

    .line 85
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->isInDragTaskResizing(I)Z

    .line 86
    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const-string p0, " onTaskModeChanged return for isInDragTaskResizeAnim"

    .line 92
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {v0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 100
    move-result v0

    .line 103
    const/4 v2, 0x1

    .line 104
    const/4 v3, 0x0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    if-eqz p3, :cond_1

    .line 108
    if-ne p3, v2, :cond_2

    .line 110
    :cond_1
    if-eq p2, p3, :cond_2

    .line 112
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedStrokeThickness(F)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 117
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 120
    const/16 p2, 0xc

    .line 122
    const-string p3, "desktop mode changed"

    .line 124
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 126
    return-void

    .line 129
    :cond_2
    if-nez p4, :cond_7

    .line 130
    if-eq p2, p3, :cond_7

    .line 132
    const/4 p4, -0x1

    .line 134
    if-eq p3, p4, :cond_7

    .line 135
    if-ne p2, p4, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isEnteringMini()Z

    .line 139
    move-result p2

    .line 142
    if-nez p2, :cond_3

    .line 143
    goto :goto_1

    .line 145
    :cond_3
    const/4 p2, 0x2

    .line 146
    if-eq p3, p2, :cond_6

    .line 147
    const/4 p2, 0x3

    .line 149
    if-ne p3, p2, :cond_4

    .line 150
    goto :goto_0

    .line 152
    :cond_4
    const-wide/16 v4, 0x12c

    .line 153
    if-nez p3, :cond_5

    .line 155
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedStrokeThickness(F)V

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string p3, " to freeform"

    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p2

    .line 176
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startShowCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;J)V

    .line 177
    goto :goto_1

    .line 180
    :cond_5
    if-ne p3, v2, :cond_7

    .line 181
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedStrokeThickness(F)V

    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string p3, " to mini"

    .line 194
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p2

    .line 202
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startShowCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;J)V

    .line 203
    goto :goto_1

    .line 206
    :cond_6
    :goto_0
    const-string p2, " pin"

    .line 207
    invoke-static {v1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object p2

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startExitCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 213
    :cond_7
    :goto_1
    return-void
    .line 216
.end method

.method public onTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZ)V
    .locals 2

    .line 1
    iput-boolean p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mOtherOPGestureStarted:Z

    .line 2
    if-eqz p3, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->interruptCornerAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 8
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 12
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 18
    if-eqz p2, :cond_2

    .line 20
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 22
    const/high16 p3, 0x40400000    # 3.0f

    .line 24
    invoke-static {p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 30
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 36
    const/high16 p3, 0x42480000    # 50.0f

    .line 38
    invoke-static {p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 40
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedStrokeThickness(F)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 47
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 50
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 52
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 55
    move-result p2

    .line 58
    const-string p3, "resize up from infinity"

    .line 59
    if-nez p2, :cond_3

    .line 61
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 65
    goto :goto_1

    .line 68
    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Ljava/lang/String;)V

    .line 71
    :goto_1
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 74
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda0;

    .line 76
    const/4 v1, 0x1

    .line 78
    invoke-direct {v0, p0, p1, p3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;I)V

    .line 79
    const/16 p0, 0xb

    .line 82
    invoke-virtual {p2, p0, p3, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    .line 84
    :goto_2
    return-void
    .line 87
.end method

.method public onTaskVanished(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v1, "task#"

    .line 10
    const-string v2, " onTaskVanished"

    .line 13
    invoke-static {v1, p1, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->startExitCornerAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public onUiModeChanged(I)V
    .locals 7

    .line 1
    and-int/lit8 p1, p1, 0x30

    .line 2
    const/16 v0, 0x20

    .line 4
    const/4 v1, 0x0

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->loadColors(Landroid/content/Context;)V

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 21
    move-result-object p1

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v0

    .line 28
    if-ge v1, v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 43
    move-result-object v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 49
    move-result-object v2

    .line 52
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 55
    if-nez v2, :cond_1

    .line 57
    goto :goto_3

    .line 59
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 60
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 63
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 69
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 74
    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 78
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 80
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 82
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 84
    const/high16 v6, 0x42480000    # 50.0f

    .line 86
    invoke-static {v5, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 88
    move-result v5

    .line 91
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSurfaceStroke(Landroid/view/SurfaceControl;[FFF)Landroid/view/SurfaceControl$Transaction;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 96
    goto :goto_3

    .line 99
    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 100
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    iget-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 106
    if-eqz v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 110
    const/high16 v3, 0x40400000    # 3.0f

    .line 112
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 114
    move-result v2

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const/4 v2, 0x0

    .line 119
    :goto_2
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 120
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 122
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 125
    move-result-object v0

    .line 128
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 129
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 131
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 133
    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setSurfaceStroke(Landroid/view/SurfaceControl;[FFF)Landroid/view/SurfaceControl$Transaction;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 139
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto :goto_1

    .line 144
    :cond_5
    return-void
    .line 145
.end method

.method public setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 13
    const/high16 v1, 0x40400000    # 3.0f

    .line 15
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 17
    move-result v1

    .line 20
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeThickness(F)V

    .line 21
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mNightMode:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 31
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeColors([F)V

    .line 33
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeAlpha(F)V

    .line 38
    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeColors([F)V

    .line 44
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mContext:Landroid/content/Context;

    .line 53
    const/high16 v1, 0x42480000    # 50.0f

    .line 55
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 57
    move-result v1

    .line 60
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeThickness(F)V

    .line 61
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestStrokeAlpha(F)V

    .line 66
    :goto_1
    return-void
    .line 69
.end method
