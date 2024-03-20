.class public final Lcom/android/wm/shell/pip/tv/TvPipBoundsController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final POSITION_DEBOUNCE_TIMEOUT_MILLIS:J = 0x12cL


# instance fields
.field public final mApplyPendingPlacementRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;

.field public final mClock:Ljava/util/function/Supplier;

.field public mCurrentPlacementBounds:Landroid/graphics/Rect;

.field public mListener:Lcom/android/wm/shell/pip/tv/TvPipController;

.field public final mMainHandler:Landroid/os/Handler;

.field public mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

.field public mPendingPlacementAnimationDuration:I

.field public mPendingStash:Z

.field public mPipTargetBounds:Landroid/graphics/Rect;

.field public mResizeAnimationDuration:I

.field public mStashDurationMs:I

.field public final mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

.field public final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

.field public mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mApplyPendingPlacementRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mClock:Ljava/util/function/Supplier;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 16
    iput-object p5, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p1

    .line 23
    const p2, 0x7f0b0046    # @integer/config_pipResizeAnimationDuration '425'

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 27
    move-result p2

    .line 30
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mResizeAnimationDuration:I

    .line 31
    const p2, 0x7f0b0047    # @integer/config_pipStashDuration '5000'

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 36
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mStashDurationMs:I

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final applyPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;ZI)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->stashType:I

    .line 2
    iget-object v1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    .line 12
    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 20
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    new-instance p2, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V

    .line 26
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 29
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mClock:Ljava/util/function/Supplier;

    .line 31
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Long;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 39
    move-result-wide v2

    .line 42
    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mStashDurationMs:I

    .line 43
    int-to-long v4, v4

    .line 45
    add-long/2addr v2, v4

    .line 46
    invoke-virtual {v0, p2, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 50
    iget-object p1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 52
    if-eqz p2, :cond_2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    if-nez v1, :cond_3

    .line 57
    move-object v1, p1

    .line 59
    :cond_3
    move-object p1, v1

    .line 60
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(ILandroid/graphics/Rect;)V

    .line 61
    return-void
    .line 64
.end method

.method public final applyPlacementBounds(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mCurrentPlacementBounds:Landroid/graphics/Rect;

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 9
    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPipTargetBounds:Landroid/graphics/Rect;

    .line 13
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    goto/16 :goto_2

    .line 21
    :cond_1
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPipTargetBounds:Landroid/graphics/Rect;

    .line 23
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 25
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 38
    const-string v3, "TvPipBoundsController"

    .line 40
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    const v3, 0x5933c256

    .line 46
    const-string v4, "%s: movePipTo() - new pip bounds: %s"

    .line 49
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mListener:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 54
    if-eqz p0, :cond_a

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 58
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 63
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 65
    if-eqz p0, :cond_a

    .line 67
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 69
    const/4 v0, 0x2

    .line 71
    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 74
    move-result p1

    .line 77
    int-to-float p1, p1

    .line 78
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 81
    move-result v2

    .line 84
    int-to-float v2, v2

    .line 85
    div-float/2addr p1, v2

    .line 86
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 87
    move-result v2

    .line 90
    int-to-float v2, v2

    .line 91
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 92
    move-result v3

    .line 95
    int-to-float v3, v3

    .line 96
    div-float/2addr v2, v3

    .line 97
    invoke-static {p1, v2}, Lcom/android/wm/shell/pip/PipUtils;->aspectRatioChanged(FF)Z

    .line 98
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipBackground:Landroid/view/View;

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 106
    move-result-object p1

    .line 109
    const/high16 v2, 0x3f800000    # 1.0f

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 112
    move-result-object p1

    .line 115
    sget-object v2, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 118
    move-result-object p1

    .line 121
    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    .line 122
    div-int/2addr v2, v0

    .line 124
    int-to-long v2, v2

    .line 125
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 126
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 133
    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 137
    move-result p2

    .line 140
    const/4 v2, 0x1

    .line 141
    if-le p1, p2, :cond_4

    .line 142
    move p1, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_4
    move p1, v1

    .line 146
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 147
    invoke-virtual {p2}, Lcom/android/internal/widget/LinearLayoutManager;->getOrientation()I

    .line 149
    move-result p2

    .line 152
    if-ne p2, v2, :cond_5

    .line 153
    move p2, v2

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    move p2, v1

    .line 157
    :goto_1
    if-eq p1, p2, :cond_6

    .line 158
    move v1, v2

    .line 160
    :cond_6
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 161
    if-eqz p2, :cond_7

    .line 163
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    move-result-object v2

    .line 170
    const-string v3, "TvPipMenuView"

    .line 171
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 173
    move-result-object v2

    .line 176
    const-string v3, "%s: onPipTransitionToTargetBoundsStarted(), orientation changed %b"

    .line 177
    const v4, -0xe1e635f

    .line 179
    const/16 v5, 0xc

    .line 182
    invoke-static {p2, v4, v5, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_7
    if-nez v1, :cond_8

    .line 187
    goto :goto_2

    .line 189
    :cond_8
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 190
    if-ne p2, v0, :cond_9

    .line 192
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 196
    move-result-object p1

    .line 199
    const/4 p2, 0x0

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 201
    move-result-object p1

    .line 204
    sget-object p2, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 207
    move-result-object p1

    .line 210
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    .line 211
    div-int/2addr p0, v0

    .line 213
    int-to-long v0, p0

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 215
    goto :goto_2

    .line 218
    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 221
    :cond_a
    :goto_2
    return-void
    .line 224
.end method

.method public final cancelScheduledPlacement()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mApplyPendingPlacementRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 19
    :cond_0
    return-void
    .line 21
.end method

.method public recalculatePipBounds(ZZIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget v2, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->stashType:I

    .line 9
    if-eqz p2, :cond_0

    .line 11
    move v3, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 16
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    .line 18
    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    .line 23
    iget-object p1, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(ILandroid/graphics/Rect;)V

    .line 28
    goto/16 :goto_2

    .line 31
    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 33
    if-eqz p2, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    .line 37
    iget-object p2, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 40
    if-nez p2, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    move-object p1, p2

    .line 45
    :goto_1
    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(ILandroid/graphics/Rect;)V

    .line 46
    goto/16 :goto_2

    .line 49
    :cond_3
    const/4 p2, 0x1

    .line 51
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    .line 52
    if-eqz p4, :cond_6

    .line 54
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 56
    if-nez p1, :cond_4

    .line 58
    if-eqz v3, :cond_5

    .line 60
    :cond_4
    move v1, p2

    .line 62
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    .line 63
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;ZI)V

    .line 66
    goto :goto_2

    .line 69
    :cond_6
    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mCurrentPlacementBounds:Landroid/graphics/Rect;

    .line 70
    if-eqz p4, :cond_7

    .line 72
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(ILandroid/graphics/Rect;)V

    .line 74
    :cond_7
    sget-boolean p4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 77
    if-eqz p4, :cond_8

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 81
    move-result-object p4

    .line 84
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object p4

    .line 88
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 89
    const-string v5, "TvPipBoundsController"

    .line 91
    filled-new-array {v5, p4}, [Ljava/lang/Object;

    .line 93
    move-result-object p4

    .line 96
    const v5, -0x6408e07

    .line 97
    const-string v6, "%s: schedulePinnedStackPlacement() - pip bounds: %s"

    .line 100
    invoke-static {v4, v5, v1, v6, p4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_8
    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 105
    if-eqz p4, :cond_b

    .line 107
    iget-object p4, p4, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 109
    invoke-static {p4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    move-result p1

    .line 114
    if-eqz p1, :cond_b

    .line 115
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    .line 117
    if-nez p1, :cond_9

    .line 119
    if-eqz v3, :cond_a

    .line 121
    :cond_9
    move v1, p2

    .line 123
    :cond_a
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    .line 124
    goto :goto_2

    .line 126
    :cond_b
    if-eqz v2, :cond_d

    .line 127
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    .line 129
    if-nez p1, :cond_c

    .line 131
    if-eqz v3, :cond_d

    .line 133
    :cond_c
    move v1, p2

    .line 135
    :cond_d
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    .line 136
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    .line 138
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mApplyPendingPlacementRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;

    .line 140
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 145
    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacementAnimationDuration:I

    .line 147
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mClock:Ljava/util/function/Supplier;

    .line 149
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 151
    move-result-object p0

    .line 154
    check-cast p0, Ljava/lang/Long;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 157
    move-result-wide p3

    .line 160
    const-wide/16 v0, 0x12c

    .line 161
    add-long/2addr p3, v0

    .line 163
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 164
    :goto_2
    return-void
    .line 167
.end method
