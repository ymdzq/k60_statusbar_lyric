.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/IMiuiFreeformPin;


# static fields
.field public static final CLICK_GAP:F = 28.0f

.field public static final CORNER_AREA:F = 163.27f

.field public static final EDGE_AREA:F = 0.0f

.field public static final EDGE_FRICTION:F = 3.0f

.field public static final FLOATING_WINDOW_CORNER_RADIUS:F = 18.18f

.field public static final FLOATING_WINDOW_GAP:F = 6.0f

.field public static final FLOATING_WINDOW_HEIGHT:F = 64.0f

.field public static final FLOATING_WINDOW_ICON_HEIGHT:F = 56.0f

.field public static final FLOATING_WINDOW_X_OFFSET:F = 24.0f

.field public static final FRICTION:F = 1.2f

.field public static final OUTER_AREA:F = 145.45f

.field public static final OUTER_AREA_FOR_MINI_PIN:F = 0.0f

.field public static final SIDE_AREA:F = 145.45f

.field public static final STOP_SPEED:F = 363.64f

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModePinHandler"

.field private static mBubbleGap:F = 35.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

.field private final mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public static bridge synthetic -$$Nest$mhideTask(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->hideTask(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Landroid/os/Looper;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mTempMatrix:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/view/SurfaceSession;

    .line 20
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 25
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 31
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 33
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 35
    new-instance p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler$H;

    .line 37
    invoke-direct {p2, p0, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler$H;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;Landroid/os/Looper;)V

    .line 39
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p3, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->initPinHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;)V

    .line 44
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 47
    iput-object p8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 49
    new-instance p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 51
    invoke-direct {p3, p1, p0, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;Landroid/os/Handler;)V

    .line 53
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p0

    .line 61
    const p1, 0x7f0707da    # @dimen/miui_bubble_gap '35.0dp'

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result p0

    .line 68
    int-to-float p0, p0

    .line 69
    sput p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mBubbleGap:F

    .line 70
    return-void
    .line 72
.end method

.method private calBoundsForPin(Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Z)Landroid/graphics/Rect;
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 4
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 9
    move-result p0

    .line 12
    :goto_0
    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 15
    move-result p3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 20
    move-result p3

    .line 23
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 24
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 33
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    mul-float/2addr v1, p0

    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    div-float/2addr v1, v2

    .line 41
    sub-float/2addr v0, v1

    .line 42
    const/high16 v1, 0x3f000000    # 0.5f

    .line 43
    add-float/2addr v0, v1

    .line 45
    float-to-int v0, v0

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 47
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 52
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 56
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    mul-float/2addr v4, p3

    .line 61
    div-float/2addr v4, v2

    .line 62
    sub-float/2addr v3, v4

    .line 63
    add-float/2addr v3, v1

    .line 64
    float-to-int v3, v3

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 66
    move-result v4

    .line 69
    int-to-float v4, v4

    .line 70
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 75
    move-result v5

    .line 78
    int-to-float v5, v5

    .line 79
    mul-float/2addr v5, p0

    .line 80
    div-float/2addr v5, v2

    .line 81
    add-float/2addr v5, v4

    .line 82
    add-float/2addr v5, v1

    .line 83
    float-to-int p0, v5

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 85
    move-result p1

    .line 88
    int-to-float p1, p1

    .line 89
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 90
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 94
    move-result p2

    .line 97
    int-to-float p2, p2

    .line 98
    mul-float/2addr p2, p3

    .line 99
    div-float/2addr p2, v2

    .line 100
    add-float/2addr p2, p1

    .line 101
    add-float/2addr p2, v1

    .line 102
    float-to-int p1, p2

    .line 103
    new-instance p2, Landroid/graphics/Rect;

    .line 104
    invoke-direct {p2, v0, v3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    return-object p2
    .line 109
.end method

.method private calBoundsForUnPin(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Z)Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 4
    move-result v1

    .line 7
    const/16 v2, 0x14

    .line 8
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    move v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 16
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    move v2, v3

    .line 22
    :cond_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 23
    move-result-object v0

    .line 26
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 27
    int-to-float v1, v1

    .line 29
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 30
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 32
    int-to-float v2, v2

    .line 34
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 35
    int-to-float v4, v4

    .line 37
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 38
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 42
    move-result v5

    .line 45
    int-to-float v5, v5

    .line 46
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 47
    move-result v6

    .line 50
    mul-float/2addr v6, v5

    .line 51
    sub-float/2addr v4, v6

    .line 52
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 53
    move-result v2

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 57
    move-result v1

    .line 60
    float-to-int v1, v1

    .line 61
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 66
    move-result v2

    .line 69
    add-int/2addr v2, v1

    .line 70
    int-to-float v2, v2

    .line 71
    const/high16 v4, 0x3f000000    # 0.5f

    .line 72
    add-float/2addr v2, v4

    .line 74
    float-to-int v2, v2

    .line 75
    if-eqz p2, :cond_4

    .line 76
    iget-object p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 80
    move-result p2

    .line 83
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 84
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 86
    move-result v3

    .line 89
    div-int/lit8 v3, v3, 0x2

    .line 90
    if-ge p2, v3, :cond_2

    .line 92
    iget p2, v0, Landroid/graphics/Rect;->right:I

    .line 94
    int-to-float p2, p2

    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 97
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 101
    move-result v3

    .line 104
    int-to-float v3, v3

    .line 105
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 106
    move-result v5

    .line 109
    mul-float/2addr v5, v3

    .line 110
    sub-float/2addr p2, v5

    .line 111
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 112
    int-to-float v3, v3

    .line 114
    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    .line 115
    move-result p2

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    iget p2, v0, Landroid/graphics/Rect;->right:I

    .line 120
    int-to-float p2, p2

    .line 122
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 123
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 127
    move-result v3

    .line 130
    int-to-float v3, v3

    .line 131
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 132
    move-result v5

    .line 135
    mul-float/2addr v5, v3

    .line 136
    sub-float/2addr p2, v5

    .line 137
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 138
    int-to-float v3, v3

    .line 140
    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    .line 141
    move-result p2

    .line 144
    :goto_1
    float-to-int p2, p2

    .line 145
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 146
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 150
    move-result v3

    .line 153
    add-int/2addr v3, p2

    .line 154
    int-to-float v3, v3

    .line 155
    add-float/2addr v3, v4

    .line 156
    float-to-int v3, v3

    .line 157
    new-instance v4, Landroid/graphics/Rect;

    .line 158
    invoke-direct {v4, p2, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 160
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 163
    move-result p2

    .line 166
    if-eqz p2, :cond_3

    .line 167
    new-instance p2, Landroid/graphics/Rect;

    .line 169
    invoke-direct {p2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 174
    move-result p1

    .line 177
    invoke-static {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 178
    move-result-object p1

    .line 181
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 184
    move-result-object p0

    .line 187
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 188
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 190
    invoke-virtual {v4, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 192
    :cond_3
    return-object v4

    .line 195
    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 196
    move-result p2

    .line 199
    if-eqz p2, :cond_5

    .line 200
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 202
    int-to-float p0, p0

    .line 204
    iget-object p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 205
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 207
    int-to-float p2, p2

    .line 209
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 210
    int-to-float v0, v0

    .line 212
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 213
    move-result-object v3

    .line 216
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 217
    move-result v3

    .line 220
    int-to-float v3, v3

    .line 221
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 222
    move-result v5

    .line 225
    mul-float/2addr v5, v3

    .line 226
    sub-float/2addr v0, v5

    .line 227
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 228
    move-result p2

    .line 231
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    .line 232
    move-result p0

    .line 235
    :goto_2
    float-to-int v3, p0

    .line 236
    goto :goto_3

    .line 237
    :cond_5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 238
    move-result p2

    .line 241
    if-eqz p2, :cond_7

    .line 242
    iget-object p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 244
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 246
    move-result p2

    .line 249
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 250
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 252
    move-result p0

    .line 255
    div-int/lit8 p0, p0, 0x2

    .line 256
    if-ge p2, p0, :cond_6

    .line 258
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 260
    int-to-float p0, p0

    .line 262
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 263
    move-result-object p2

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 267
    move-result p2

    .line 270
    int-to-float p2, p2

    .line 271
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 272
    move-result v3

    .line 275
    mul-float/2addr v3, p2

    .line 276
    sub-float/2addr p0, v3

    .line 277
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 278
    int-to-float p2, p2

    .line 280
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 281
    move-result p0

    .line 284
    goto :goto_2

    .line 285
    :cond_6
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 286
    int-to-float p0, p0

    .line 288
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 289
    move-result-object p2

    .line 292
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 293
    move-result p2

    .line 296
    int-to-float p2, p2

    .line 297
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 298
    move-result v3

    .line 301
    mul-float/2addr v3, p2

    .line 302
    sub-float/2addr p0, v3

    .line 303
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 304
    int-to-float p2, p2

    .line 306
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    .line 307
    move-result p0

    .line 310
    goto :goto_2

    .line 311
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 312
    move-result-object p0

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 316
    move-result p0

    .line 319
    add-int/2addr p0, v3

    .line 320
    int-to-float p0, p0

    .line 321
    add-float/2addr p0, v4

    .line 322
    float-to-int p0, p0

    .line 323
    new-instance p1, Landroid/graphics/Rect;

    .line 324
    invoke-direct {p1, v3, v1, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 326
    return-object p1
    .line 329
.end method

.method public static getAppIconForFloatingBall(Landroid/content/Context;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, p1, p2, v1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getRawAppIcon(Landroid/content/Context;Ljava/lang/String;IZLandroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 11
    move-result-object p0

    .line 14
    const-string p1, "MiuiFreeformModePinHandler"

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-string p0, "get round app icon error!"

    .line 19
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    move-result p2

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    move-result p3

    .line 32
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 33
    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    move-result-object p2

    .line 38
    :try_start_0
    new-instance p3, Landroid/graphics/BitmapShader;

    .line 39
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 41
    invoke-direct {p3, p0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    .line 46
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 48
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 54
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    new-instance p3, Landroid/graphics/Canvas;

    .line 60
    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 67
    move-result v1

    .line 70
    int-to-float v1, v1

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 72
    move-result p0

    .line 75
    int-to-float p0, p0

    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    invoke-virtual {p3, v0, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :catch_0
    const-string p0, "get bitmapShader error!"

    .line 89
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v0
    .line 94
.end method

.method private getFinalBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFFF)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 13
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 15
    move-result v1

    .line 18
    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getPredictXY(FFFFF)[F

    .line 19
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    aget v3, v0, v2

    .line 24
    const/4 v4, 0x1

    .line 26
    aget v4, v0, v4

    .line 27
    invoke-static {p2, p3, v3, v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getPredictY(FFFFI)F

    .line 29
    move-result p2

    .line 32
    aget v0, v0, v2

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 35
    sget v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mBubbleGap:F

    .line 37
    float-to-int v3, v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBoundsByDy(I)Landroid/graphics/Rect;

    .line 40
    move-result-object v2

    .line 43
    int-to-float v3, v1

    .line 44
    const/high16 v4, 0x40000000    # 2.0f

    .line 45
    div-float/2addr v3, v4

    .line 47
    cmpl-float v0, v0, v3

    .line 48
    const/high16 v3, 0x41c00000    # 24.0f

    .line 50
    const/high16 v4, 0x3f000000    # 0.5f

    .line 52
    const/high16 v5, 0x42800000    # 64.0f

    .line 54
    if-lez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 60
    move-result v0

    .line 63
    float-to-int v0, v0

    .line 64
    sub-int/2addr v1, v0

    .line 65
    int-to-float v0, v1

    .line 66
    add-float/2addr v0, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {v0, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 71
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 78
    move-result v1

    .line 81
    float-to-int v1, v1

    .line 82
    sub-int/2addr v0, v1

    .line 83
    int-to-float v0, v0

    .line 84
    add-float/2addr v0, v4

    .line 85
    neg-float v0, v0

    .line 86
    :goto_1
    float-to-int v0, v0

    .line 87
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 88
    int-to-float v1, v1

    .line 90
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 91
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v6, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 95
    move-result v6

    .line 98
    float-to-int v6, v6

    .line 99
    sub-int/2addr v3, v6

    .line 100
    int-to-float v3, v3

    .line 101
    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    .line 102
    move-result p2

    .line 105
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    .line 106
    move-result p2

    .line 109
    add-float v1, p2, v4

    .line 110
    float-to-int v1, v1

    .line 112
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 113
    move-result p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    mul-float/2addr p4, p4

    .line 119
    mul-float/2addr p5, p5

    .line 120
    add-float/2addr p5, p4

    .line 121
    float-to-double p4, p5

    .line 122
    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    .line 123
    move-result-wide p4

    .line 126
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 127
    const v1, 0x43b5d1ec

    .line 129
    invoke-static {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 132
    move-result p1

    .line 135
    float-to-double v6, p1

    .line 136
    cmpg-double p1, p4, v6

    .line 137
    if-gez p1, :cond_2

    .line 139
    iget p1, v2, Landroid/graphics/Rect;->top:I

    .line 141
    int-to-float p1, p1

    .line 143
    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    .line 144
    iget-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {p4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 148
    move-result p4

    .line 151
    float-to-int p4, p4

    .line 152
    sub-int/2addr p2, p4

    .line 153
    int-to-float p2, p2

    .line 154
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 155
    move-result p2

    .line 158
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 159
    move-result p2

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {p1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 165
    move-result p1

    .line 168
    float-to-int p1, p1

    .line 169
    div-int/lit8 p1, p1, 0x2

    .line 170
    int-to-float p1, p1

    .line 172
    sub-float/2addr p2, p1

    .line 173
    add-float/2addr p2, v4

    .line 174
    float-to-int v1, p2

    .line 175
    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    .line 176
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 178
    invoke-static {p2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 180
    move-result p2

    .line 183
    float-to-int p2, p2

    .line 184
    add-int/2addr p2, v0

    .line 185
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 186
    invoke-static {p3, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 188
    move-result p3

    .line 191
    float-to-int p3, p3

    .line 192
    add-int/2addr p3, v1

    .line 193
    invoke-direct {p1, v0, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 197
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 199
    move-result-object p0

    .line 202
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 203
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 205
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 207
    return-object p1
    .line 210
.end method

.method private getFinalPinBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 8
    sget v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mBubbleGap:F

    .line 10
    float-to-int v2, v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBoundsByDy(I)Landroid/graphics/Rect;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v2

    .line 20
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 21
    int-to-float v2, v2

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskInfoRealWidth()F

    .line 24
    move-result v3

    .line 27
    const/high16 v4, 0x40000000    # 2.0f

    .line 28
    div-float/2addr v3, v4

    .line 30
    add-float/2addr v3, v2

    .line 31
    int-to-float v2, v0

    .line 32
    div-float/2addr v2, v4

    .line 33
    cmpl-float v2, v3, v2

    .line 34
    const/high16 v3, 0x41c00000    # 24.0f

    .line 36
    const/high16 v4, 0x3f000000    # 0.5f

    .line 38
    const/high16 v5, 0x42800000    # 64.0f

    .line 40
    if-lez v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 46
    move-result v2

    .line 49
    float-to-int v2, v2

    .line 50
    sub-int/2addr v0, v2

    .line 51
    int-to-float v0, v0

    .line 52
    add-float/2addr v0, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {v0, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 57
    move-result v0

    .line 60
    float-to-int v0, v0

    .line 61
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 64
    move-result v2

    .line 67
    float-to-int v2, v2

    .line 68
    sub-int/2addr v0, v2

    .line 69
    int-to-float v0, v0

    .line 70
    add-float/2addr v0, v4

    .line 71
    neg-float v0, v0

    .line 72
    :goto_0
    float-to-int v0, v0

    .line 73
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 74
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 76
    move-result-object p1

    .line 79
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 80
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 82
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {v6, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 86
    move-result v6

    .line 89
    float-to-int v6, v6

    .line 90
    sub-int/2addr v3, v6

    .line 91
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 92
    move-result p1

    .line 95
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 96
    move-result p1

    .line 99
    int-to-float p1, p1

    .line 100
    add-float/2addr p1, v4

    .line 101
    float-to-int p1, p1

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    .line 103
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {v3, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 107
    move-result v3

    .line 110
    float-to-int v3, v3

    .line 111
    add-int/2addr v3, v0

    .line 112
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 115
    move-result v4

    .line 118
    float-to-int v4, v4

    .line 119
    add-int/2addr v4, p1

    .line 120
    invoke-direct {v2, v0, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 124
    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 126
    move-result-object p0

    .line 129
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 130
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 132
    invoke-virtual {v2, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 134
    return-object v2
    .line 137
.end method

.method private hideTask(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isForegroundPin()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->callFinishCallback(Landroid/window/WindowContainerTransaction;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "hideTask taskInfo: "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " runningAnimationTypes: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getRunningAnimationTypes()Ljava/util/ArrayList;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    const-string v1, "MiuiFreeformModePinHandler"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->keepIconSurfaceLayerIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 52
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isForegroundPin()Z

    .line 57
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 63
    move-result-object v1

    .line 66
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 69
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 72
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->clearIconSurfaceLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 78
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 84
    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->removeBubble(I)V

    .line 88
    :cond_3
    return-void
    .line 91
.end method

.method private isEnterPin(FFFFZ)Z
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    move/from16 v9, p1

    .line 4
    move/from16 v10, p3

    .line 6
    move/from16 v11, p4

    .line 8
    const v0, 0x3f99999a    # 1.2f

    .line 10
    move/from16 v2, p2

    .line 13
    invoke-static {v9, v2, v10, v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getPredictXY(FFFFF)[F

    .line 15
    move-result-object v12

    .line 18
    const v13, 0x43b5d1ec

    .line 19
    const/4 v14, 0x0

    .line 22
    const/4 v15, 0x1

    .line 23
    const/16 v16, 0x0

    .line 24
    if-eqz p5, :cond_5

    .line 26
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 28
    move-result v0

    .line 31
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    .line 32
    move-result v1

    .line 35
    cmpl-float v0, v0, v1

    .line 36
    if-lez v0, :cond_0

    .line 38
    move/from16 v17, v15

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    move/from16 v17, v16

    .line 43
    :goto_0
    aget v3, v12, v16

    .line 45
    aget v4, v12, v15

    .line 47
    iget-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 49
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 51
    move-result v5

    .line 54
    iget-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 55
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 57
    move-result v6

    .line 60
    const/4 v7, 0x1

    .line 61
    move-object/from16 v0, p0

    .line 62
    move/from16 v1, p1

    .line 64
    move/from16 v2, p2

    .line 66
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->isOutsideScreen(FFFFIIZ)Z

    .line 68
    move-result v0

    .line 71
    mul-float v1, v10, v10

    .line 72
    mul-float v2, v11, v11

    .line 74
    add-float/2addr v2, v1

    .line 76
    float-to-double v1, v2

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 78
    move-result-wide v1

    .line 81
    iget-object v3, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {v3, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 84
    move-result v3

    .line 87
    float-to-double v3, v3

    .line 88
    cmpg-double v1, v1, v3

    .line 89
    if-gez v1, :cond_1

    .line 91
    move v1, v15

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move/from16 v1, v16

    .line 95
    :goto_1
    if-eqz v0, :cond_2

    .line 97
    if-nez v17, :cond_4

    .line 99
    :cond_2
    if-eqz v1, :cond_3

    .line 101
    iget-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {v0, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 105
    move-result v0

    .line 108
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 109
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 111
    move-result v1

    .line 114
    invoke-static {v9, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->outerScreen(FFI)Z

    .line 115
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    goto :goto_2

    .line 121
    :cond_3
    move/from16 v15, v16

    .line 122
    :cond_4
    :goto_2
    return v15

    .line 124
    :cond_5
    aget v0, v12, v16

    .line 125
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 127
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 129
    move-result v1

    .line 132
    int-to-float v1, v1

    .line 133
    const/high16 v3, 0x40000000    # 2.0f

    .line 134
    div-float/2addr v1, v3

    .line 136
    cmpl-float v0, v0, v1

    .line 137
    if-lez v0, :cond_6

    .line 139
    cmpl-float v0, v10, v14

    .line 141
    if-lez v0, :cond_7

    .line 143
    goto :goto_3

    .line 145
    :cond_6
    cmpg-float v0, v10, v14

    .line 146
    if-gez v0, :cond_7

    .line 148
    :goto_3
    move v14, v15

    .line 150
    goto :goto_4

    .line 151
    :cond_7
    move/from16 v14, v16

    .line 152
    :goto_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 154
    move-result v0

    .line 157
    float-to-double v0, v0

    .line 158
    const-wide v3, 0x3fd0c152382d7365L    # 0.2617993877991494

    .line 159
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    .line 164
    move-result-wide v3

    .line 167
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    .line 168
    move-result v5

    .line 171
    float-to-double v5, v5

    .line 172
    mul-double/2addr v3, v5

    .line 173
    cmpl-double v0, v0, v3

    .line 174
    if-lez v0, :cond_8

    .line 176
    move v7, v15

    .line 178
    goto :goto_5

    .line 179
    :cond_8
    move/from16 v7, v16

    .line 180
    :goto_5
    mul-float v0, v10, v10

    .line 182
    mul-float v1, v11, v11

    .line 184
    add-float/2addr v1, v0

    .line 186
    float-to-double v0, v1

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 188
    move-result-wide v0

    .line 191
    iget-object v3, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 192
    invoke-static {v3, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 194
    move-result v3

    .line 197
    float-to-double v3, v3

    .line 198
    cmpg-double v0, v0, v3

    .line 199
    if-gez v0, :cond_9

    .line 201
    move v10, v15

    .line 203
    goto :goto_6

    .line 204
    :cond_9
    move/from16 v10, v16

    .line 205
    :goto_6
    aget v3, v12, v16

    .line 207
    aget v4, v12, v15

    .line 209
    iget-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 211
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 213
    move-result v5

    .line 216
    iget-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 217
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 219
    move-result v6

    .line 222
    const/4 v11, 0x0

    .line 223
    move-object/from16 v0, p0

    .line 224
    move/from16 v1, p1

    .line 226
    move/from16 v2, p2

    .line 228
    move v9, v7

    .line 230
    move v7, v11

    .line 231
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->isOutsideScreen(FFFFIIZ)Z

    .line 232
    move-result v0

    .line 235
    const-string v1, "isEnterPin velocityDirectionToPin: "

    .line 236
    const-string v2, " velocityDegreeToPin: "

    .line 238
    const-string v3, " isStop: "

    .line 240
    invoke-static {v1, v14, v2, v9, v3}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    move-result-object v1

    .line 245
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    const-string v2, " isOut: "

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v1

    .line 260
    const-string v2, "MiuiFreeformModePinHandler"

    .line 261
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez v0, :cond_b

    .line 266
    if-nez v10, :cond_a

    .line 268
    if-eqz v14, :cond_a

    .line 270
    if-eqz v9, :cond_a

    .line 272
    aget v0, v12, v16

    .line 274
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 276
    const v2, 0x43117333    # 145.45f

    .line 278
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 281
    move-result v1

    .line 284
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 285
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 287
    move-result v2

    .line 290
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->outerScreen(FFI)Z

    .line 291
    move-result v0

    .line 294
    if-eqz v0, :cond_a

    .line 295
    goto :goto_7

    .line 297
    :cond_a
    move/from16 v15, v16

    .line 298
    :cond_b
    :goto_7
    return v15
    .line 300
.end method

.method private isOutsideScreen(FFFFIIZ)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p7, :cond_0

    .line 3
    iget-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p7, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 7
    move-result p7

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 12
    const v1, 0x43117333    # 145.45f

    .line 14
    invoke-static {p7, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 17
    move-result p7

    .line 20
    :goto_0
    neg-float v1, p7

    .line 21
    cmpg-float v2, p3, v1

    .line 22
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ltz v2, :cond_2

    .line 26
    cmpg-float v1, p4, v1

    .line 28
    if-ltz v1, :cond_2

    .line 30
    int-to-float v1, p5

    .line 32
    add-float/2addr v1, p7

    .line 33
    cmpl-float v1, p3, v1

    .line 34
    if-gtz v1, :cond_2

    .line 36
    int-to-float v1, p6

    .line 38
    add-float/2addr v1, p7

    .line 39
    cmpl-float p7, p4, v1

    .line 40
    if-lez p7, :cond_1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    move p7, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    move p7, v4

    .line 47
    :goto_2
    if-eqz p7, :cond_8

    .line 48
    sub-float v1, p4, p2

    .line 50
    sub-float/2addr p3, p1

    .line 52
    cmpg-float v2, p4, v0

    .line 53
    if-gez v2, :cond_3

    .line 55
    move p6, v0

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    int-to-float p6, p6

    .line 59
    cmpl-float p4, p4, p6

    .line 60
    if-lez p4, :cond_4

    .line 62
    :goto_3
    move p4, v4

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    move p6, v0

    .line 66
    move p4, v3

    .line 67
    :goto_4
    if-eqz p4, :cond_8

    .line 68
    cmpl-float p4, v1, v0

    .line 70
    if-eqz p4, :cond_5

    .line 72
    div-float/2addr p3, v1

    .line 74
    invoke-static {p6, p2, p3, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 75
    move-result p1

    .line 78
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 79
    const p2, 0x4323451f    # 163.27f

    .line 81
    invoke-static {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 84
    move-result p0

    .line 87
    cmpg-float p2, p1, p0

    .line 88
    if-ltz p2, :cond_6

    .line 90
    int-to-float p2, p5

    .line 92
    sub-float/2addr p2, p0

    .line 93
    cmpl-float p0, p1, p2

    .line 94
    if-lez p0, :cond_7

    .line 96
    :cond_6
    move v3, v4

    .line 98
    :cond_7
    move p7, v3

    .line 99
    :cond_8
    return p7
    .line 100
.end method

.method private keepIconSurfaceLayerIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z
    .locals 4

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    const/16 v2, 0x8

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 19
    const/16 v3, 0x9

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 25
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isAnyInRunningAnimatingList(Ljava/util/ArrayList;)Z

    .line 37
    move-result p0

    .line 40
    return p0
    .line 41
.end method

.method private static outerScreen(FFI)Z
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    .line 2
    if-ltz v0, :cond_1

    .line 4
    int-to-float p2, p2

    .line 6
    sub-float/2addr p2, p1

    .line 7
    cmpl-float p0, p0, p2

    .line 8
    if-lez p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method

.method private preparePinAnimationParam(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 4
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 12
    move-result v1

    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedRadius(F)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 26
    move-result v1

    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 34
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedClipRect(Landroid/graphics/Rect;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 52
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 56
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 59
    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 63
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationAlpha(F)V

    .line 67
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p2, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->calBoundsForPin(Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Z)Landroid/graphics/Rect;

    .line 71
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 78
    const v1, 0x419170a4    # 18.18f

    .line 80
    invoke-static {p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 83
    move-result p2

    .line 86
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 87
    move-result v1

    .line 90
    div-float/2addr p2, v1

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 92
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 95
    const/high16 v1, 0x42800000    # 64.0f

    .line 97
    invoke-static {p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 99
    move-result p2

    .line 102
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 103
    move-result v2

    .line 106
    div-float/2addr p2, v2

    .line 107
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 110
    move-result v1

    .line 113
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 114
    move-result v2

    .line 117
    div-float/2addr v1, v2

    .line 118
    invoke-static {p1, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getClipRect(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)Landroid/graphics/Rect;

    .line 119
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationClipRect(Landroid/graphics/Rect;)V

    .line 123
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 126
    move-result-object p2

    .line 129
    iput-object p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinDestBounds:Landroid/graphics/Rect;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    move-result-wide v1

    .line 135
    iput-wide v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedStartTime:J

    .line 136
    iput-wide v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedActiveTime:J

    .line 138
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 140
    move-result p2

    .line 143
    if-eqz p2, :cond_0

    .line 144
    const/16 p2, 0xa

    .line 146
    goto :goto_0

    .line 148
    :cond_0
    const/16 p2, 0x9

    .line 149
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 151
    move-result v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    const/4 v1, 0x3

    .line 157
    goto :goto_1

    .line 158
    :cond_1
    const/4 v1, 0x2

    .line 159
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 160
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 162
    move-result v2

    .line 165
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 166
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 169
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 172
    move-result-object p0

    .line 175
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 176
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 178
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 180
    move-result v2

    .line 183
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->shouldForegroundPin(I)Z

    .line 184
    move-result v2

    .line 187
    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setForegroundPin(Z)V

    .line 190
    goto :goto_2

    .line 193
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setForegroundPin(Z)V

    .line 194
    invoke-virtual {p3, p0, v3}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 197
    invoke-virtual {p3, p0, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 200
    :goto_2
    new-instance v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 203
    invoke-direct {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 205
    invoke-virtual {v2, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 208
    move-result-object v1

    .line 211
    iget-wide v3, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedActiveTime:J

    .line 212
    invoke-virtual {v1, v3, v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setPinActiveTime(J)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 214
    move-result-object p1

    .line 217
    shl-int p2, v0, p2

    .line 218
    invoke-virtual {p1, p2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 220
    invoke-virtual {p3, p0, v2}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 223
    return-void
    .line 226
.end method

.method private prepareUnPinAnimationParam(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZZ)Landroid/window/WindowContainerTransaction;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 5
    move-result v1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 14
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    invoke-interface {v1, v2, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 25
    move-result-object v2

    .line 28
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    invoke-interface {v1, v2, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 31
    :cond_0
    const/16 v1, 0x9

    .line 34
    if-ne p2, v1, :cond_1

    .line 36
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 38
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 44
    move-result v4

    .line 47
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 48
    move-result-object v5

    .line 51
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 55
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMiniFreeformScale(Landroid/content/Context;ZLandroid/graphics/Rect;Ljava/lang/String;)F

    .line 56
    move-result v2

    .line 59
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 63
    move-result v2

    .line 66
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleX(F)V

    .line 67
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 70
    move-result v2

    .line 73
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleY(F)V

    .line 74
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 77
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, v2, p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->calBoundsForPin(Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Z)Landroid/graphics/Rect;

    .line 80
    move-result-object v2

    .line 83
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 84
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 87
    const/high16 v4, 0x42800000    # 64.0f

    .line 89
    invoke-static {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 91
    move-result v2

    .line 94
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 95
    move-result v5

    .line 98
    div-float/2addr v2, v5

    .line 99
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {v5, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 102
    move-result v4

    .line 105
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 106
    move-result v5

    .line 109
    div-float/2addr v4, v5

    .line 110
    invoke-static {p1, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getClipRect(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)Landroid/graphics/Rect;

    .line 111
    move-result-object v2

    .line 114
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedClipRect(Landroid/graphics/Rect;)V

    .line 115
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 118
    const v4, 0x419170a4    # 18.18f

    .line 120
    invoke-static {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 123
    move-result v2

    .line 126
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 127
    move-result v4

    .line 130
    div-float/2addr v2, v4

    .line 131
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedRadius(F)V

    .line 132
    if-nez p4, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 137
    move-result v2

    .line 140
    const/4 v4, 0x2

    .line 141
    if-ne v2, v4, :cond_2

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    move v2, v0

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    :goto_0
    move v2, v3

    .line 147
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 148
    new-instance v2, Landroid/graphics/Rect;

    .line 151
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 153
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 157
    move-result v4

    .line 160
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 161
    move-result-object v5

    .line 164
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 165
    move-result v5

    .line 168
    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationClipRect(Landroid/graphics/Rect;)V

    .line 172
    if-eqz p4, :cond_4

    .line 175
    if-ne p2, v1, :cond_4

    .line 177
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleX()F

    .line 179
    move-result v2

    .line 182
    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 184
    move-result v2

    .line 187
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 188
    if-eqz p4, :cond_5

    .line 191
    if-ne p2, v1, :cond_5

    .line 193
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleY()F

    .line 195
    move-result v2

    .line 198
    goto :goto_3

    .line 199
    :cond_5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 200
    move-result v2

    .line 203
    :goto_3
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 204
    const/high16 v2, 0x3f800000    # 1.0f

    .line 207
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationAlpha(F)V

    .line 209
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 214
    move-result v4

    .line 217
    invoke-static {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 218
    move-result v2

    .line 221
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 222
    move-result v4

    .line 225
    div-float/2addr v2, v4

    .line 226
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 227
    if-eqz p4, :cond_6

    .line 230
    if-ne p2, v1, :cond_6

    .line 232
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 234
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 236
    move-result-object p4

    .line 239
    iget-object p4, p4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 240
    iget p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 242
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 244
    move-result v1

    .line 247
    invoke-interface {p2, p4, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformScaleChanged(IF)V

    .line 248
    :cond_6
    if-eqz p3, :cond_8

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->calBoundsForUnPin(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Z)Landroid/graphics/Rect;

    .line 253
    move-result-object p2

    .line 256
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 257
    move-result p3

    .line 260
    if-eqz p3, :cond_7

    .line 261
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 263
    invoke-virtual {p3, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->avoidOtherFreeformTaskIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 265
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 268
    goto :goto_4

    .line 271
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->calBoundsForUnPin(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Z)Landroid/graphics/Rect;

    .line 272
    move-result-object p2

    .line 275
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 276
    iget-object p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 279
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 281
    int-to-float p2, p2

    .line 283
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 284
    move-result-object p3

    .line 287
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 288
    move-result p3

    .line 291
    int-to-float p3, p3

    .line 292
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 293
    move-result p4

    .line 296
    mul-float/2addr p4, p3

    .line 297
    add-float/2addr p4, p2

    .line 298
    float-to-int p2, p4

    .line 299
    iget-object p3, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 300
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 302
    int-to-float p3, p3

    .line 304
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 305
    move-result-object p4

    .line 308
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 309
    move-result p4

    .line 312
    int-to-float p4, p4

    .line 313
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 314
    move-result v1

    .line 317
    mul-float/2addr v1, p4

    .line 318
    add-float/2addr v1, p3

    .line 319
    float-to-int p3, v1

    .line 320
    new-instance p4, Landroid/graphics/Rect;

    .line 321
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 323
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 325
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 327
    invoke-direct {p4, v4, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    invoke-virtual {p1, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 332
    new-instance p2, Landroid/graphics/Rect;

    .line 335
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 337
    move-result-object p3

    .line 340
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 341
    move-result p3

    .line 344
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 345
    move-result-object p4

    .line 348
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 349
    move-result p4

    .line 352
    invoke-direct {p2, v3, v3, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedClipRect(Landroid/graphics/Rect;)V

    .line 356
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 359
    :goto_4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 362
    move-result-object p2

    .line 365
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 366
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 369
    move-result p2

    .line 372
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 373
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 376
    move-result p2

    .line 379
    if-eqz p2, :cond_9

    .line 380
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->miniFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 384
    :cond_9
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 387
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 389
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 392
    move-result-object p2

    .line 395
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 396
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 398
    invoke-virtual {p0, p2, v0}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 400
    invoke-virtual {p0, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 403
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 406
    move-result-object p3

    .line 409
    invoke-virtual {p0, p2, p3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 410
    const-wide/16 p3, 0x0

    .line 413
    iput-wide p3, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedActiveTime:J

    .line 415
    new-instance p3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 417
    invoke-direct {p3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 419
    iget-wide v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedActiveTime:J

    .line 422
    invoke-virtual {p3, v1, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setPinActiveTime(J)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 424
    move-result-object p4

    .line 427
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 428
    move-result v1

    .line 431
    invoke-virtual {p4, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 432
    move-result-object p4

    .line 435
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 436
    move-result v1

    .line 439
    invoke-virtual {p4, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 440
    move-result-object p4

    .line 443
    invoke-virtual {p4, v3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setIsForegroundPin(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 444
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 447
    move-result p1

    .line 450
    if-eqz p1, :cond_a

    .line 451
    const/16 p1, 0xb

    .line 453
    goto :goto_5

    .line 455
    :cond_a
    const/16 p1, 0xc

    .line 456
    :goto_5
    shl-int p1, v0, p1

    .line 458
    invoke-virtual {p3, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 460
    invoke-virtual {p0, p2, p3}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 463
    return-object p0
    .line 466
.end method

.method private setAppWindowExitInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-nez p2, :cond_1

    .line 6
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    move-result v1

    .line 13
    :goto_0
    iput v1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconWidth:I

    .line 14
    if-nez p2, :cond_2

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    move-result v0

    .line 22
    :goto_1
    iput v0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconHeight:I

    .line 23
    iput-object p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconBitmap:Landroid/graphics/Bitmap;

    .line 25
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->setUpMiuiFreeWindowFloatIconAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FLandroid/view/SurfaceControl$Transaction;)V

    .line 28
    return-void
    .line 31
.end method

.method private updatePinFloatingWindowPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Z)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 8
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 9
    new-instance v1, Landroid/graphics/Point;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 10
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 11
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    move-result v1

    const-string v2, "hide_window_y_coordinate"

    const-string v3, "hide_window_x_coordinate"

    const-string v4, "app_display_name"

    const-string v5, "app_package_name"

    const-string v6, "move_hidden_window"

    const-string v7, "EVENT_NAME"

    const-string v8, "621.1.2.1.21749"

    const-string/jumbo v9, "tip"

    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 14
    invoke-virtual {v10, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v10, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object v6, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 17
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v5, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 19
    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object v4, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 21
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    iget-object v3, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 23
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget-object v0, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 25
    invoke-virtual {v1, v0, v10}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalPinedState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 30
    invoke-virtual {v10, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v10, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v6, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 33
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object v5, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 35
    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v4, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 37
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    iget-object v3, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 39
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    iget-object v0, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 41
    invoke-virtual {v1, v0, v10}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_3

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedActiveTime:J

    .line 45
    new-instance p3, Landroid/window/WindowContainerTransaction;

    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 47
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 48
    iget-wide v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedActiveTime:J

    invoke-virtual {v1, v2, v3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setPinActiveTime(J)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 49
    invoke-virtual {p3, v0, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, p3}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "update floating ball position:"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "taskInfo:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiFreeformModePinHandler"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public asMiuiBubbleNotification()Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMiuiBubbleNotification:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;

    .line 4
    return-object p0
    .line 6
.end method

.method public drawIcon(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)V
    .locals 10

    .line 1
    const-string v0, "MiuiFreeformModePinHandler"

    .line 2
    const-string v1, "drawIcon scale "

    .line 4
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance v2, Landroid/view/Surface;

    .line 11
    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    .line 13
    iget-object v3, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 18
    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 22
    move-result-object v3

    .line 25
    if-eqz v3, :cond_3

    .line 26
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 28
    const v5, 0x7f060133    # @color/freeform_pin_icon_background_color '#ffffffff'

    .line 30
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 33
    move-result v4

    .line 36
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 37
    new-instance v4, Landroid/graphics/Rect;

    .line 40
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 45
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 49
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 52
    const/high16 v6, 0x42600000    # 56.0f

    .line 54
    invoke-static {v5, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 56
    move-result v5

    .line 59
    float-to-int v5, v5

    .line 60
    int-to-float v5, v5

    .line 61
    iget v7, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconWidth:I

    .line 62
    int-to-float v7, v7

    .line 64
    mul-float/2addr v7, p2

    .line 65
    div-float/2addr v5, v7

    .line 66
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {v7, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 69
    move-result v6

    .line 72
    float-to-int v6, v6

    .line 73
    int-to-float v6, v6

    .line 74
    iget v7, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconHeight:I

    .line 75
    int-to-float v7, v7

    .line 77
    mul-float/2addr v7, p3

    .line 78
    div-float/2addr v6, v7

    .line 79
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mTempMatrix:Landroid/graphics/Matrix;

    .line 80
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 82
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mTempMatrix:Landroid/graphics/Matrix;

    .line 85
    const/4 v7, 0x0

    .line 87
    invoke-virtual {p3, v5, v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 88
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mTempMatrix:Landroid/graphics/Matrix;

    .line 91
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 93
    move-result v7

    .line 96
    int-to-float v7, v7

    .line 97
    const/high16 v8, 0x40000000    # 2.0f

    .line 98
    div-float/2addr v7, v8

    .line 100
    iget v9, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconWidth:I

    .line 101
    int-to-float v9, v9

    .line 103
    div-float/2addr v9, v8

    .line 104
    mul-float/2addr v9, v5

    .line 105
    sub-float/2addr v7, v9

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 107
    move-result v5

    .line 110
    int-to-float v5, v5

    .line 111
    div-float/2addr v5, v8

    .line 112
    iget v9, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconHeight:I

    .line 113
    int-to-float v9, v9

    .line 115
    div-float/2addr v9, v8

    .line 116
    mul-float/2addr v9, v6

    .line 117
    sub-float/2addr v5, v9

    .line 118
    invoke-virtual {p3, v7, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    iget-object p3, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconBitmap:Landroid/graphics/Bitmap;

    .line 122
    if-eqz p3, :cond_1

    .line 124
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mTempMatrix:Landroid/graphics/Matrix;

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {v3, p3, v5, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 130
    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    const-string p2, " realBounds "

    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 152
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string p2, " exitIcon "

    .line 156
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconBitmap:Landroid/graphics/Bitmap;

    .line 161
    if-eqz p1, :cond_2

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    const-string p1, "null"

    .line 170
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p0

    .line 178
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    goto :goto_1

    .line 182
    :cond_3
    const-string p0, "drawIcon canvas is null"

    .line 183
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_1

    .line 188
    :catch_0
    const-string p0, "drawIcon out of resource"

    .line 189
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto :goto_1

    .line 194
    :catch_1
    const-string p0, "drawIcon illegal argument"

    .line 195
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 200
    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V

    .line 203
    return-void
    .line 206
.end method

.method public getMiniFreeformBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 7
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->isImeShowing()Z

    .line 9
    move-result v2

    .line 12
    const/16 v3, 0x14

    .line 13
    if-eqz v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 17
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getImeHeight()I

    .line 19
    move-result v2

    .line 22
    add-int/2addr v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-virtual {v1, v3, v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 30
    move-result v2

    .line 33
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 34
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 36
    move-result v3

    .line 39
    div-int/lit8 v3, v3, 0x2

    .line 40
    if-le v2, v3, :cond_1

    .line 42
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 46
    move-result p1

    .line 49
    sub-int/2addr v2, p1

    .line 50
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 51
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 53
    goto :goto_1

    .line 56
    :cond_1
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 57
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 59
    invoke-virtual {v0, p1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 61
    :goto_1
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 64
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 66
    if-ge p1, v2, :cond_2

    .line 68
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 70
    invoke-virtual {v0, p1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 72
    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 77
    if-le p1, v2, :cond_3

    .line 79
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 83
    move-result v3

    .line 86
    sub-int/2addr v2, v3

    .line 87
    invoke-virtual {v0, p1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 88
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 93
    move-result-object p0

    .line 96
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 97
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 99
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 101
    return-object v0
    .line 104
.end method

.method public getmMiuiFreeformModeDisplayInfo()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public handlePinUpOrCancel(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFFF)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 2
    move-result v5

    .line 5
    move-object v0, p0

    .line 6
    move v1, p2

    .line 7
    move v2, p3

    .line 8
    move v3, p4

    .line 9
    move v4, p5

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->isEnterPin(FFFFZ)Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->getFinalBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FFFF)Landroid/graphics/Rect;

    .line 18
    move-result-object p2

    .line 21
    invoke-direct {p0, p1, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->updatePinFloatingWindowPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Z)V

    .line 22
    new-instance p3, Landroid/window/WindowContainerTransaction;

    .line 25
    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->preparePinAnimationParam(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isForegroundPin()Z

    .line 33
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 39
    invoke-virtual {p2, p3}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 41
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 44
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyForeGroundPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 50
    invoke-virtual {p2, p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startPinShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 52
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->onPinAnimStarted(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 55
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_1
    return v1
    .line 60
.end method

.method public hasFreeFormTaskInfo(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public hidePinFloatingWindow(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 10
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mHandler:Landroid/os/Handler;

    .line 23
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "hidePinFloatingWindow taskInfo: "

    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "inPinMode: "

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 47
    move-result v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    const-string v2, "MiuiFreeformModePinHandler"

    .line 58
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 65
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    :cond_1
    :goto_0
    return-void
    .line 77
.end method

.method public hidePinFloatingWindowDelay(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;J)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "hidePinFloatingWindowDelay taskInfo: "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "inPinMode: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 20
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " delay: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    const-string v1, "MiuiFreeformModePinHandler"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mHandler:Landroid/os/Handler;

    .line 44
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    return-void
    .line 59
.end method

.method public onPinAnimFinished(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 16
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->preAutoLayout(IZ)Z

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 22
    const/4 v1, -0x1

    .line 24
    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->doAutoLayoutUnChecked(II)V

    .line 25
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 28
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->hidePinFloatingWindowDelay(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;J)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "addIconView: taskInfo = "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v1, "MiuiFreeformModePinHandler"

    .line 40
    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMainExecutor:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;

    .line 47
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 54
    move-result-object v2

    .line 57
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 58
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbleInStackWithKey(I)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 62
    move-result-object v1

    .line 65
    new-instance v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 66
    invoke-direct {v2, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 68
    if-nez v1, :cond_1

    .line 71
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 73
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;)V

    .line 75
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->updateEntryData(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->inflateAndAddOrUpdate(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 81
    return-void
    .line 84
.end method

.method public onPinAnimStarted(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda0;

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public onTaskVanished(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 2
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->removeBubble(II)V

    .line 5
    return-void
    .line 8
.end method

.method public prepareFreeFormToPin(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->getFinalPinBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->updatePinFloatingWindowPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Z)V

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->preparePinAnimationParam(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->onPinAnimStarted(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 13
    return-void
    .line 16
.end method

.method public removeBubble(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->removeBubble(II)V

    return-void
.end method

.method public removeBubble(II)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiBubbleController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->removeBubble(II)V

    return-void
.end method

.method public setPinFloatingWindowAnimationInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, ""

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 20
    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 26
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    :goto_0
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 39
    move-result v2

    .line 42
    const-string v3, "MiuiFreeformModePinHandler"

    .line 43
    if-eqz v2, :cond_1

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    const-string p2, "PinFloatingWindow position is uninitialized, miuiFreeformTaskInfo:"

    .line 49
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mContext:Landroid/content/Context;

    .line 65
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 67
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 69
    invoke-static {v2, v1, v4, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->getAppIconForFloatingBall(Landroid/content/Context;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 75
    move-result-object v0

    .line 78
    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->setAppWindowExitInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl$Transaction;)V

    .line 79
    const-string/jumbo p0, "setFloatingBallAnimationInfo, record:"

    .line 82
    const-string p2, ", pos:"

    .line 85
    invoke-static {p0, v1, p2}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object p0

    .line 90
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
    .line 103
.end method

.method public setUpMiuiFreeWindowFloatIconAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->clearIconSurfaceLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 7
    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 9
    const-string p0, "MiuiFreeWindowFloatIconSurfaceControl"

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 30
    move-result v1

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 34
    move-result-object p0

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 43
    move-result-object p0

    .line 46
    iput-object p0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v0, "setUpMiuiFreeWindowFloatIconAnimation "

    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    const-string v0, "MiuiFreeformModePinHandler"

    .line 66
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 71
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 73
    move-result-object v0

    .line 76
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 77
    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    move-result-object p0

    .line 82
    iget-object p3, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 83
    const v0, 0x7fffffff

    .line 85
    invoke-virtual {p0, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 88
    move-result-object p0

    .line 91
    iget-object p3, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 92
    invoke-virtual {p0, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 94
    move-result-object p0

    .line 97
    iget-object p2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 98
    const/4 p3, 0x0

    .line 100
    invoke-virtual {p0, p2, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 101
    move-result-object p0

    .line 104
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 105
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 107
    move-result-object p0

    .line 110
    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 112
    return-void
    .line 115
.end method

.method public unPinFloatingWindow(Landroid/graphics/Rect;IZ)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->unPinFloatingWindow(Landroid/graphics/Rect;IZZZ)Z

    move-result p0

    return p0
.end method

.method public unPinFloatingWindow(Landroid/graphics/Rect;IZZZ)Z
    .locals 5

    const-string v0, "Task#"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unPinFloatingWindow: rect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " restoreForActive: "

    const-string v3, " needTransition = "

    .line 3
    invoke-static {v1, p3, v2, p4, v3}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 4
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeformModePinHandler"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    invoke-virtual {v3, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->updatePinFloatingWindowPos(Landroid/graphics/Rect;IZ)V

    .line 10
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 11
    :goto_0
    invoke-direct {p0, v3, p1, p3, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->prepareUnPinAnimationParam(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZZ)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    .line 12
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isForegroundPin()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p2, p1}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 14
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setForegroundPin(Z)V

    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyForegroundUnPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    invoke-virtual {p2, v3, p5, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startUnpinShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ZLandroid/window/WindowContainerTransaction;)V

    .line 17
    :goto_1
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {p0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->switchFullscreenToFreeform()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz v3, :cond_5

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in pin mode and now mode is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return v1
.end method

.method public updatePinFloatingWindowPos(Landroid/graphics/Rect;IZ)V
    .locals 3

    const-string/jumbo v0, "updatePinFloatingWindowPos: rect"

    :try_start_0
    const-string v1, "MiuiFreeformModePinHandler"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " taskId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p2, p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->updatePinFloatingWindowPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
