.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BOTTOM_CAPTION_CLOSE_THRESHOLD:F = -80.0f

.field public static final BOTTOM_CAPTION_FULLSCREEN_LONGE_THRESHOLD:F = 300.0f

.field public static final BOTTOM_CAPTION_FULLSCREEN_THRESHOLD:F = 80.0f

.field public static final CLOSE_THRESHOLD_QUCIK_VELOCITY_Y:F = -1000.0f

.field public static final CLOSE_THRESHOLD_VELOCITY_Y:F = -100.0f

.field public static final FULLSCREEN_THRESHOLD_QUICK_VELOCITY_Y:F = 1000.0f

.field public static final FULLSCREEN_THRESHOLD_VELOCITY_Y:F = 100.0f

.field public static final LANDSCAPE_BOTTOM_CAPTION_FULLSCREEN_THRESHOLD:F

.field public static final MINI_FREEFORM_EXIT_DISTANCE_THRESHOLD:I = 0x64

.field public static final MINI_FREEFORM_EXIT_VELOCITY_THRESHOLD:I = -0x5dc

.field public static final PICKUP_SCALE:F = 1.02f

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeMoveHandler"


# instance fields
.field private final MIN_SCALE:F

.field private final mContext:Landroid/content/Context;

.field private final mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private final mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

.field private final mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/high16 v0, 0x42c80000    # 100.0f

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    .line 11
    :goto_0
    sput v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->LANDSCAPE_BOTTOM_CAPTION_FULLSCREEN_THRESHOLD:F

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x3e99999a    # 0.3f

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->MIN_SCALE:F

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mContext:Landroid/content/Context;

    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 16
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 18
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 20
    return-void
    .line 22
.end method

.method private calBoundsForMoveScale(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance p0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 7
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    sub-float/2addr v1, p2

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 15
    move-result p2

    .line 18
    int-to-float p2, p2

    .line 19
    mul-float/2addr v1, p2

    .line 20
    const/high16 p2, 0x40000000    # 2.0f

    .line 21
    div-float/2addr v1, p2

    .line 23
    float-to-int p2, v1

    .line 24
    add-int/2addr v0, p2

    .line 25
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 26
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 28
    return-object p0
    .line 31
.end method


# virtual methods
.method public getMoveBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFLandroid/graphics/PointF;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object p0

    .line 5
    iget p1, p4, Landroid/graphics/PointF;->x:F

    .line 6
    sub-float/2addr p2, p1

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 9
    move-result p1

    .line 12
    iget p2, p4, Landroid/graphics/PointF;->y:F

    .line 13
    sub-float/2addr p3, p2

    .line 15
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 16
    move-result p2

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 20
    return-object p0
    .line 23
.end method

.method public getUpBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFLandroid/graphics/PointF;Landroid/graphics/Rect;FF)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object p6

    .line 5
    iget v0, p4, Landroid/graphics/PointF;->x:F

    .line 6
    sub-float/2addr p2, v0

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 9
    move-result p2

    .line 12
    iget p4, p4, Landroid/graphics/PointF;->y:F

    .line 13
    sub-float p4, p3, p4

    .line 15
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 17
    move-result p4

    .line 20
    invoke-virtual {p6, p2, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 24
    move-result p2

    .line 27
    invoke-static {p6, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 28
    iget p2, p6, Landroid/graphics/Rect;->left:I

    .line 31
    iget p4, p5, Landroid/graphics/Rect;->left:I

    .line 33
    if-ge p2, p4, :cond_0

    .line 35
    iget p2, p6, Landroid/graphics/Rect;->top:I

    .line 37
    invoke-virtual {p6, p4, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 39
    :cond_0
    iget p2, p6, Landroid/graphics/Rect;->right:I

    .line 42
    iget p4, p5, Landroid/graphics/Rect;->right:I

    .line 44
    if-le p2, p4, :cond_1

    .line 46
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    .line 48
    move-result p2

    .line 51
    sub-int/2addr p4, p2

    .line 52
    iget p2, p6, Landroid/graphics/Rect;->top:I

    .line 53
    invoke-virtual {p6, p4, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 55
    :cond_1
    iget p2, p6, Landroid/graphics/Rect;->bottom:I

    .line 58
    iget p4, p5, Landroid/graphics/Rect;->bottom:I

    .line 60
    if-le p2, p4, :cond_2

    .line 62
    iget p2, p6, Landroid/graphics/Rect;->left:I

    .line 64
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    .line 66
    move-result v0

    .line 69
    sub-int/2addr p4, v0

    .line 70
    invoke-virtual {p6, p2, p4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 74
    move-result p2

    .line 77
    if-eqz p2, :cond_6

    .line 78
    const/high16 p2, 0x42c80000    # 100.0f

    .line 80
    cmpg-float p2, p3, p2

    .line 82
    if-gez p2, :cond_3

    .line 84
    const p2, -0x3b448000    # -1500.0f

    .line 86
    cmpg-float p2, p7, p2

    .line 89
    if-gez p2, :cond_3

    .line 91
    iget p2, p6, Landroid/graphics/Rect;->left:I

    .line 93
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    .line 95
    move-result p3

    .line 98
    neg-int p3, p3

    .line 99
    add-int/lit8 p3, p3, -0x64

    .line 100
    invoke-virtual {p6, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    iget p2, p6, Landroid/graphics/Rect;->top:I

    .line 106
    iget p3, p5, Landroid/graphics/Rect;->top:I

    .line 108
    if-ge p2, p3, :cond_4

    .line 110
    iget p2, p6, Landroid/graphics/Rect;->left:I

    .line 112
    invoke-virtual {p6, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 114
    :cond_4
    :goto_0
    invoke-virtual {p6}, Landroid/graphics/Rect;->centerX()I

    .line 117
    move-result p2

    .line 120
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 121
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 123
    move-result p3

    .line 126
    div-int/lit8 p3, p3, 0x2

    .line 127
    if-le p2, p3, :cond_5

    .line 129
    iget p2, p5, Landroid/graphics/Rect;->right:I

    .line 131
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    .line 133
    move-result p3

    .line 136
    sub-int/2addr p2, p3

    .line 137
    iget p3, p6, Landroid/graphics/Rect;->top:I

    .line 138
    invoke-virtual {p6, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 140
    goto :goto_1

    .line 143
    :cond_5
    iget p2, p5, Landroid/graphics/Rect;->left:I

    .line 144
    iget p3, p6, Landroid/graphics/Rect;->top:I

    .line 146
    invoke-virtual {p6, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 148
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 151
    invoke-virtual {p0, p6, p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 153
    move-result-object p0

    .line 156
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 157
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 159
    invoke-virtual {p6, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 161
    goto :goto_2

    .line 164
    :cond_6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 165
    move-result p0

    .line 168
    if-eqz p0, :cond_7

    .line 169
    iget p0, p6, Landroid/graphics/Rect;->top:I

    .line 171
    iget p2, p5, Landroid/graphics/Rect;->top:I

    .line 173
    if-ge p0, p2, :cond_7

    .line 175
    iget p0, p6, Landroid/graphics/Rect;->left:I

    .line 177
    invoke-virtual {p6, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 179
    :cond_7
    :goto_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 182
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 184
    move-result p1

    .line 187
    div-float/2addr p0, p1

    .line 188
    invoke-static {p6, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 189
    return-object p6
    .line 192
.end method

.method public handleMotionEvents(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ILandroid/graphics/Rect;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    if-nez p2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->clearAllRestoreMiniBounds()V

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    const/4 v0, 0x2

    .line 21
    if-ne p2, v0, :cond_1

    .line 22
    const v0, 0x3f828f5c    # 1.02f

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setActionMode(I)V

    .line 30
    invoke-direct {p0, p3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->calBoundsForMoveScale(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 33
    move-result-object p3

    .line 36
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 40
    move-result p3

    .line 43
    mul-float/2addr p3, v0

    .line 44
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 45
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 48
    move-result p3

    .line 51
    mul-float/2addr p3, v0

    .line 52
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 53
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 56
    move-result p3

    .line 59
    const/4 v0, 0x1

    .line 60
    if-eqz p3, :cond_2

    .line 61
    if-ne p2, v0, :cond_2

    .line 63
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 65
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->miniFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 67
    :cond_2
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 70
    move-result p3

    .line 73
    if-eqz p3, :cond_3

    .line 74
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 76
    move-result p3

    .line 79
    if-eqz p3, :cond_3

    .line 80
    if-ne p2, v0, :cond_3

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 84
    move-result-object p2

    .line 87
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 90
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 92
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 94
    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 98
    move-result v2

    .line 101
    invoke-virtual {p3, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->checkIsInBaseLine(Landroid/graphics/Rect;F)V

    .line 102
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 105
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 107
    move-result-object v3

    .line 110
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 111
    move-result v4

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v7, 0x1

    .line 117
    move v2, p2

    .line 118
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->preAutoLayout(ILandroid/graphics/Rect;FZZZ)Z

    .line 119
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 122
    const/16 v1, 0x15

    .line 124
    invoke-virtual {p3, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->doAutoLayoutUnChecked(II)V

    .line 126
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 131
    return-void
    .line 134
.end method

.method public onBottomCaptionHandleMotionEvents(FFLandroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/VelocityMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 1
    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    invoke-virtual/range {p5 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setActionMode(I)V

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput p1, v7, v8

    const/4 v9, 0x1

    aput p2, v7, v9

    .line 4
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->update([F)V

    .line 5
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->getVelocity(I)F

    move-result v7

    .line 6
    iget-object v10, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v10

    .line 7
    iget v11, v10, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 8
    iget v10, v10, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v11, v10, :cond_0

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-eqz v9, :cond_1

    .line 9
    sget v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->LANDSCAPE_BOTTOM_CAPTION_FULLSCREEN_THRESHOLD:F

    goto :goto_1

    :cond_1
    const/high16 v9, 0x43960000    # 300.0f

    :goto_1
    if-nez v4, :cond_2

    .line 10
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLastBottomCaptionActionMode(I)V

    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->clear()V

    goto/16 :goto_a

    :cond_2
    const-string v10, "MiuiFreeformModeMoveHandler"

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v4, v6, :cond_12

    .line 12
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 13
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    move-result v13

    mul-float/2addr v13, v6

    .line 14
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 15
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    move-result v14

    mul-float/2addr v14, v6

    .line 16
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 17
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v14

    .line 18
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    div-float/2addr v14, v12

    add-float/2addr v14, v15

    .line 19
    iget-object v15, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    move-result v15

    int-to-float v15, v15

    .line 20
    iget-object v8, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    invoke-virtual {v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    move-result v8

    int-to-float v8, v8

    .line 21
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v13, v12

    add-float/2addr v13, v2

    .line 22
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 23
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    move-result v12

    move/from16 v16, v12

    const/high16 v17, 0x40800000    # 4.0f

    if-lez v0, :cond_5

    neg-int v15, v0

    int-to-float v15, v15

    div-float/2addr v15, v6

    const/16 v16, 0x0

    cmpl-float v16, v15, v16

    if-ltz v16, :cond_3

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    .line 24
    invoke-static {v15, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->afterFrictionValue(FF)F

    move-result v12

    div-float v15, v12, v17

    :goto_2
    const/high16 v12, 0x3f000000    # 0.5f

    .line 25
    invoke-static {v12, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->frictionPer(FF)F

    move-result v12

    sub-float v12, v11, v12

    mul-float/2addr v12, v6

    const v6, 0x3dcccccd    # 0.1f

    .line 26
    invoke-static {v6, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->frictionPer(FF)F

    move-result v6

    sub-float v6, v11, v6

    mul-float/2addr v6, v14

    sub-float/2addr v12, v6

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v12, v11

    .line 27
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    const v14, 0x3e99999a    # 0.3f

    cmpg-float v15, v12, v14

    if-gtz v15, :cond_4

    move v12, v14

    :cond_4
    int-to-float v5, v5

    div-float/2addr v8, v11

    .line 28
    invoke-static {v5, v8}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v5

    float-to-double v14, v5

    move/from16 p2, v12

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v14

    double-to-float v4, v4

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    sub-float/2addr v13, v5

    add-float/2addr v13, v4

    float-to-int v4, v13

    .line 30
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move/from16 v12, p2

    invoke-static {v5, v12, v11, v6}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    float-to-int v5, v5

    .line 31
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v17, v9

    goto :goto_3

    :cond_5
    const/high16 v11, 0x40000000    # 2.0f

    if-gez v0, :cond_6

    .line 32
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v15}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v4, v15

    mul-float/2addr v4, v11

    const/high16 v6, 0x44c80000    # 1600.0f

    mul-float/2addr v6, v4

    div-float v6, v6, v17

    int-to-float v5, v5

    div-float/2addr v8, v11

    .line 33
    invoke-static {v5, v8}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v5

    float-to-double v11, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v8, v4, v5

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v8, v15

    move/from16 p2, v6

    float-to-double v5, v8

    move/from16 v17, v9

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v11

    double-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    .line 34
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    move-result v6

    mul-float v12, v6, v4

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    div-float/2addr v4, v15

    sub-float/2addr v13, v4

    add-float/2addr v13, v5

    float-to-int v4, v13

    .line 36
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v12

    div-float/2addr v5, v15

    sub-float/2addr v14, v5

    sub-float v14, v14, p2

    float-to-int v5, v14

    .line 37
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3

    :cond_6
    move/from16 v17, v9

    move/from16 v12, v16

    :goto_3
    int-to-float v4, v0

    const/high16 v5, -0x3d600000    # -80.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    const/high16 v5, -0x3b860000    # -1000.0f

    cmpg-float v5, v7, v5

    if-ltz v5, :cond_8

    :cond_7
    const v5, 0x3eb33333    # 0.35f

    cmpg-float v5, v12, v5

    if-gez v5, :cond_9

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, v7, v5

    if-gez v5, :cond_9

    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    const/high16 v6, 0x42a00000    # 80.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpl-float v6, v7, v6

    if-gtz v6, :cond_b

    :cond_a
    cmpl-float v4, v4, v17

    if-lez v4, :cond_c

    const/high16 v4, -0x3d380000    # -100.0f

    cmpl-float v4, v7, v4

    if-lez v4, :cond_c

    :cond_b
    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    .line 38
    :goto_5
    invoke-virtual/range {p5 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setActionMode(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 39
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationAlpha(F)V

    .line 40
    invoke-virtual {v3, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 41
    invoke-virtual {v3, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 42
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onBottomCaptionHandleMotionEvents actionMode == MotionEvent.ACTION_MOVE deltaY: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_e

    .line 44
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 45
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    if-nez v0, :cond_d

    .line 46
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    .line 47
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v4

    iget-object v5, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    iget-object v7, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v4

    iget-object v8, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    iget-object v9, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    iput-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    .line 49
    :cond_d
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLastTargetIsFullsceen()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    .line 50
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLastBottomCaptionActionMode(I)V

    .line 51
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 52
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHapticNormal()I

    move-result v4

    iget-object v5, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    .line 53
    invoke-virtual {v0, v4, v6, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->hapticFeedback(IZLandroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 55
    invoke-static {v0, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 56
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->expandToFullScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_a

    :cond_e
    if-eqz v5, :cond_f

    .line 57
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLastTargetIsMoveToBack()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 58
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLastBottomCaptionActionMode(I)V

    .line 59
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 60
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHapticNormal()I

    move-result v2

    iget-object v4, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .line 61
    invoke-virtual {v0, v2, v5, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->hapticFeedback(IZLandroid/content/Context;)V

    goto/16 :goto_a

    .line 62
    :cond_f
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLastTargetIsReset()Z

    move-result v0

    if-nez v0, :cond_11

    .line 63
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLastTargetIsFullsceen()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    if-eqz v0, :cond_10

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 66
    invoke-static {v0, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 67
    iget-object v4, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->shrinkToFreeform(Landroid/graphics/Rect;)V

    :cond_10
    const/4 v0, 0x0

    .line 68
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLastBottomCaptionActionMode(I)V

    .line 69
    :cond_11
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    if-eqz v0, :cond_1e

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 71
    invoke-static {v0, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 72
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->updateEndBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_a

    :cond_12
    move/from16 v17, v9

    const/4 v2, 0x1

    move/from16 v4, p6

    if-ne v4, v2, :cond_1e

    const-string v2, "onBottomCaptionHandleMotionEvents actionMode == MotionEvent.ACTION_UP deltaY: "

    .line 73
    invoke-static {v2, v0, v10}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    if-eqz v2, :cond_14

    .line 75
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLastTargetIsFullsceen()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 76
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->startReleaseFullscreenIndicatorAnimation()V

    goto :goto_6

    .line 77
    :cond_13
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->releaseFullscreenIndicator()V

    :goto_6
    const/4 v2, 0x0

    .line 78
    iput-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->miuiFreeformModeVisualIndicator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;

    :cond_14
    int-to-float v0, v0

    const/high16 v2, -0x3d600000    # -80.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_15

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v7, v2

    if-ltz v2, :cond_16

    .line 79
    :cond_15
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    move-result v2

    const v4, 0x3eb33333    # 0.35f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_17

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v7, v2

    if-gez v2, :cond_17

    :cond_16
    const/4 v2, 0x1

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    :goto_7
    const/high16 v4, 0x42a00000    # 80.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_18

    const/high16 v4, 0x447a0000    # 1000.0f

    cmpl-float v4, v7, v4

    if-gtz v4, :cond_19

    :cond_18
    cmpl-float v0, v0, v17

    if-lez v0, :cond_1a

    const/high16 v0, -0x3d380000    # -100.0f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1a

    :cond_19
    const/4 v0, 0x1

    goto :goto_8

    :cond_1a
    const/4 v0, 0x0

    :goto_8
    if-eqz v2, :cond_1c

    .line 80
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isInputMethodShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 81
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->hideCurrentInputMethod()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    :cond_1b
    :goto_9
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    const v2, 0x3e4ccccd    # 0.2f

    .line 84
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    move-result v4

    mul-float/2addr v4, v2

    .line 85
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 86
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    move-result v5

    mul-float/2addr v5, v2

    .line 87
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    .line 88
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    move-result v2

    .line 89
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 90
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8, v4, v6, v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    float-to-int v5, v5

    .line 91
    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v2, v4

    mul-float/2addr v2, v7

    div-float/2addr v2, v6

    add-float/2addr v2, v8

    float-to-int v2, v2

    .line 92
    invoke-virtual {v0, v5, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 93
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationAlpha(F)V

    .line 95
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 96
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    const/4 v0, 0x1

    .line 97
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBottomCaptionActionMode(I)V

    .line 98
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 99
    new-instance v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    invoke-direct {v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 100
    invoke-virtual {v4, v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformExiting(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 101
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v0, v4}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 102
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v0, v2}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_a

    :cond_1c
    if-eqz v0, :cond_1d

    .line 103
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    move-result v0

    if-nez v0, :cond_1d

    const/high16 v0, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationAlpha(F)V

    .line 105
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 106
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    const/4 v0, 0x2

    .line 107
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBottomCaptionActionMode(I)V

    const/4 v0, 0x1

    .line 108
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setEnterState(I)V

    goto :goto_a

    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationAlpha(F)V

    .line 110
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 112
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBottomCaptionActionMode(I)V

    .line 114
    :cond_1e
    :goto_a
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMoveHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    return-void
.end method
