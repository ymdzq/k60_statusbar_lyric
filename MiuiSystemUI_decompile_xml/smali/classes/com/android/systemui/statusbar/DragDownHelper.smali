.class public final Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public dragDownAmountOnStart:F

.field public final dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public draggedFarEnough:Z

.field public expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public initialTouchX:F

.field public initialTouchY:F

.field public isDraggingDown:Z

.field public lastHeight:F

.field public minDragDistance:I

.field public slopMultiplier:F

.field public startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public touchSlop:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 9
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/DragDownHelper;->updateResources(Landroid/content/Context;)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final cancelChildExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;J)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 6
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const/4 p2, 0x0

    .line 18
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserLockedChild(Landroid/view/View;Z)V

    .line 21
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 25
    move-result v0

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 29
    move-result v1

    .line 32
    filled-new-array {v0, v1}, [I

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 37
    move-result-object v0

    .line 40
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    new-instance p2, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;

    .line 49
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    new-instance p2, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;

    .line 57
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 59
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 65
    return-void
    .line 68
.end method

.method public final captureStartingChild(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 21
    if-eqz p1, :cond_3

    .line 23
    iget-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 25
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 33
    if-eqz p1, :cond_1

    .line 35
    move-object v1, p1

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 38
    const/4 p1, 0x1

    .line 40
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 41
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserLockedChild(Landroid/view/View;Z)V

    .line 43
    goto :goto_1

    .line 46
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 47
    :cond_3
    :goto_1
    return-void
    .line 49
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v2, :cond_7

    .line 16
    const/4 v5, 0x2

    .line 18
    if-eq v2, v5, :cond_0

    .line 19
    goto/16 :goto_2

    .line 21
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 23
    sub-float v2, v1, v2

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 27
    move-result p1

    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne p1, v5, :cond_1

    .line 32
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    .line 34
    iget v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->slopMultiplier:F

    .line 36
    mul-float/2addr p1, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    .line 40
    :goto_0
    cmpl-float p1, v2, p1

    .line 42
    if-lez p1, :cond_8

    .line 44
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    .line 46
    sub-float p1, v0, p1

    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 50
    move-result p1

    .line 53
    cmpl-float p1, v2, p1

    .line 54
    if-lez p1, :cond_8

    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 63
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    .line 65
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 67
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 69
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 72
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 78
    iget-object v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 80
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownStarted(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 82
    iget-object p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 85
    if-nez p1, :cond_2

    .line 87
    move-object p1, v3

    .line 89
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 92
    iget-object p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 95
    if-nez p1, :cond_3

    .line 97
    goto :goto_1

    .line 99
    :cond_3
    move-object v3, p1

    .line 100
    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    .line 101
    iget-object p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    .line 104
    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 108
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logAnimationCancelled(Z)V

    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 117
    :cond_4
    iget p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 120
    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownAmountOnStart:F

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 124
    if-nez p0, :cond_5

    .line 126
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z

    .line 128
    move-result p0

    .line 131
    if-eqz p0, :cond_6

    .line 132
    :cond_5
    move v4, v5

    .line 134
    :cond_6
    return v4

    .line 135
    :cond_7
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 138
    iput-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 140
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 142
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    .line 144
    :cond_8
    :goto_2
    return v4
    .line 146
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result p1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x2

    .line 22
    iget-object v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 23
    if-eq p1, v4, :cond_b

    .line 25
    if-eq p1, v5, :cond_2

    .line 27
    const/4 v0, 0x3

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    goto/16 :goto_b

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    .line 34
    return v1

    .line 37
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 38
    sub-float/2addr v0, p1

    .line 40
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 45
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownAmountOnStart:F

    .line 50
    add-float/2addr p1, v0

    .line 52
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 56
    if-eqz p1, :cond_6

    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    .line 60
    cmpg-float v5, v0, v2

    .line 62
    if-gez v5, :cond_3

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    move v2, v0

    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    const/high16 v5, 0x3f000000    # 0.5f

    .line 74
    goto :goto_1

    .line 76
    :cond_4
    const v5, 0x3e19999a    # 0.15f

    .line 77
    :goto_1
    mul-float/2addr v2, v5

    .line 80
    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 83
    move-result v0

    .line 86
    int-to-float v0, v0

    .line 87
    add-float/2addr v0, v2

    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 89
    move-result v5

    .line 92
    int-to-float v5, v5

    .line 93
    cmpl-float v0, v0, v5

    .line 94
    if-lez v0, :cond_5

    .line 96
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 98
    move-result v0

    .line 101
    int-to-float v0, v0

    .line 102
    add-float/2addr v0, v2

    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 104
    move-result v5

    .line 107
    int-to-float v5, v5

    .line 108
    sub-float/2addr v0, v5

    .line 109
    const v5, 0x3f59999a    # 0.85f

    .line 110
    mul-float/2addr v0, v5

    .line 113
    sub-float/2addr v2, v0

    .line 114
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 115
    move-result v0

    .line 118
    int-to-float v0, v0

    .line 119
    add-float/2addr v0, v2

    .line 120
    float-to-int v0, v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 122
    :cond_6
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    .line 125
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->minDragDistance:I

    .line 127
    int-to-float v0, v0

    .line 129
    cmpl-float p1, p1, v0

    .line 130
    if-lez p1, :cond_8

    .line 132
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 134
    if-nez p1, :cond_a

    .line 136
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 138
    iget-object p0, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 140
    if-nez p0, :cond_7

    .line 142
    goto :goto_2

    .line 144
    :cond_7
    move-object v3, p0

    .line 145
    :goto_2
    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 146
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 148
    goto :goto_4

    .line 151
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 152
    if-eqz p1, :cond_a

    .line 154
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 156
    iget-object p0, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 158
    if-nez p0, :cond_9

    .line 160
    goto :goto_3

    .line 162
    :cond_9
    move-object v3, p0

    .line 163
    :goto_3
    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 164
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 166
    :cond_a
    :goto_4
    return v4

    .line 169
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 170
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    .line 172
    move-result v7

    .line 175
    if-nez v7, :cond_17

    .line 176
    iget-object v7, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 178
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 180
    iget v7, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 182
    if-ne v7, v4, :cond_c

    .line 184
    move v7, v4

    .line 186
    goto :goto_5

    .line 187
    :cond_c
    move v7, v1

    .line 188
    :goto_5
    if-nez v7, :cond_d

    .line 189
    goto :goto_6

    .line 191
    :cond_d
    invoke-interface {p1, v5}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 192
    move-result p1

    .line 195
    if-nez p1, :cond_f

    .line 196
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 198
    if-nez p1, :cond_e

    .line 200
    goto :goto_7

    .line 202
    :cond_e
    :goto_6
    move p1, v1

    .line 203
    goto :goto_8

    .line 204
    :cond_f
    :goto_7
    move p1, v4

    .line 205
    :goto_8
    if-nez p1, :cond_17

    .line 206
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->canDragDown$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z

    .line 208
    move-result p1

    .line 211
    if-eqz p1, :cond_17

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 214
    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 216
    sub-float/2addr v0, v5

    .line 218
    float-to-int v0, v0

    .line 219
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->canDragDown$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z

    .line 220
    move-result v5

    .line 223
    iget-object v7, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 224
    if-eqz v5, :cond_13

    .line 226
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;

    .line 228
    invoke-direct {v2, v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 230
    iget-object v5, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 233
    if-nez v5, :cond_10

    .line 235
    move-object v5, v3

    .line 237
    :cond_10
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 238
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    .line 240
    move-result v5

    .line 243
    if-eqz v5, :cond_11

    .line 244
    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDraggedDownLockDownShade(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 246
    iget-object p1, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 249
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 251
    iput-boolean v4, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 253
    new-instance p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$1;

    .line 255
    invoke-direct {p1, v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 257
    iget-object v0, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 260
    invoke-interface {v0, p1, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 262
    goto :goto_9

    .line 265
    :cond_11
    invoke-virtual {v7, v0, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDraggedDown(ILcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 266
    iget-object v0, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 269
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    .line 271
    if-eqz v0, :cond_12

    .line 273
    if-eqz p1, :cond_14

    .line 275
    :cond_12
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$animationHandler$1;

    .line 277
    invoke-direct {v0, p1, v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$animationHandler$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 279
    invoke-virtual {v6, p1, v0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V

    .line 282
    goto :goto_9

    .line 285
    :cond_13
    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logUnSuccessfulDragDown(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 286
    const-wide/16 v4, 0x0

    .line 289
    invoke-virtual {v6, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V

    .line 291
    :cond_14
    :goto_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 294
    if-eqz p1, :cond_16

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 298
    if-eqz v0, :cond_15

    .line 300
    goto :goto_a

    .line 302
    :cond_15
    move-object v0, v3

    .line 303
    :goto_a
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 304
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserLockedChild(Landroid/view/View;Z)V

    .line 306
    iput-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 309
    :cond_16
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 311
    :goto_b
    return v1

    .line 313
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    .line 314
    return v1
    .line 317
.end method

.method public final stopDragging()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const-wide/16 v2, 0x177

    .line 12
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelChildExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;J)V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAborted()V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 29
    if-nez v0, :cond_1

    .line 31
    move-object v0, v1

    .line 33
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 34
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 40
    if-nez v0, :cond_2

    .line 42
    move-object v0, v1

    .line 44
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 48
    if-nez v0, :cond_3

    .line 50
    move-object v0, v1

    .line 52
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 53
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 55
    const/4 v0, 0x0

    .line 57
    const-wide/16 v2, 0x0

    .line 58
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V

    .line 60
    return-void
    .line 63
.end method

.method public final updateResources(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f07046c    # @dimen/keyguard_drag_down_min_distance '100.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->minDragDistance:I

    .line 13
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 19
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    .line 26
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->slopMultiplier:F

    .line 30
    return-void
    .line 32
.end method
