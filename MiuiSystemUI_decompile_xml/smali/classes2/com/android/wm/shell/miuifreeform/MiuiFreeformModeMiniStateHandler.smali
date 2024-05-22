.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeMiniStateHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field private final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mContext:Landroid/content/Context;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 15
    return-void
    .line 17
.end method

.method private getRestoredBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->clearAllRestoreMiniBounds()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    .line 11
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 16
    move-result v2

    .line 19
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 23
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v2, v3, v3, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 30
    move-result v3

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 36
    move-result p0

    .line 39
    div-int/lit8 p0, p0, 0x2

    .line 40
    if-le v3, p0, :cond_0

    .line 42
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 46
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleX()F

    .line 51
    move-result v4

    .line 54
    mul-float/2addr v4, v3

    .line 55
    float-to-int v3, v4

    .line 56
    sub-int/2addr p0, v3

    .line 57
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 58
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 64
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 66
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 68
    :goto_0
    iget p0, v1, Landroid/graphics/Rect;->top:I

    .line 71
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 73
    if-ge p0, v0, :cond_1

    .line 75
    iget p0, v1, Landroid/graphics/Rect;->left:I

    .line 77
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 79
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 83
    move-result v0

    .line 86
    int-to-float v0, v0

    .line 87
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleY()F

    .line 88
    move-result v3

    .line 91
    mul-float/2addr v3, v0

    .line 92
    float-to-int v0, v3

    .line 93
    add-int/2addr p0, v0

    .line 94
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 95
    if-le p0, v0, :cond_2

    .line 97
    iget p0, v1, Landroid/graphics/Rect;->left:I

    .line 99
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 101
    move-result v2

    .line 104
    int-to-float v2, v2

    .line 105
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleY()F

    .line 106
    move-result p1

    .line 109
    mul-float/2addr p1, v2

    .line 110
    float-to-int p1, p1

    .line 111
    sub-int/2addr v0, p1

    .line 112
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 113
    :cond_2
    :goto_1
    return-object v1
    .line 116
.end method


# virtual methods
.method public doubleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    invoke-interface {v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->hideOtherFreeform(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseParams()V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 16
    move-result v1

    .line 19
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 20
    move-result v0

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 24
    move-result v1

    .line 27
    div-float/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedRadius(F)V

    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 36
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 40
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 47
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 51
    const/4 v0, 0x2

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBottomCaptionActionMode(I)V

    .line 55
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMiniFreeformDoubleTapShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 64
    return-void
    .line 67
.end method

.method public restoreMiniToFreeformMode(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->singleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 16
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
    .line 22
.end method

.method public singleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->clearAllRestoreMiniBounds()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseParams()V

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 12
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 20
    move-result v1

    .line 23
    div-float/2addr v0, v1

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedRadius(F)V

    .line 25
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 32
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 34
    move-result-object v2

    .line 37
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 40
    invoke-interface {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformMiniTapStart(I)V

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 45
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 47
    move-result-object v2

    .line 50
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 51
    const/4 v3, 0x1

    .line 53
    invoke-interface {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 54
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 57
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 59
    move-result-object v2

    .line 62
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 63
    invoke-interface {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 68
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 70
    move-result-object v2

    .line 73
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 76
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleX()F

    .line 78
    move-result v4

    .line 81
    invoke-interface {v1, v2, v4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformScaleChanged(IF)V

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleX()F

    .line 85
    move-result v1

    .line 88
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 89
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleY()F

    .line 92
    move-result v1

    .line 95
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->getRestoredBounds(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Landroid/graphics/Rect;

    .line 99
    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 103
    invoke-virtual {v2, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->avoidOtherFreeformTaskIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 105
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 108
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 113
    move-result v2

    .line 116
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 117
    move-result v1

    .line 120
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 121
    move-result v2

    .line 124
    div-float/2addr v1, v2

    .line 125
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 126
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 129
    invoke-virtual {v1, p1, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 134
    invoke-interface {v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 136
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->switchFullscreenToFreeform()V

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 143
    const/4 v0, 0x4

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 146
    return-void
    .line 149
.end method
