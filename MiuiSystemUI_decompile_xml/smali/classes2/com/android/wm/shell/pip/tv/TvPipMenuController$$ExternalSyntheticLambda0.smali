.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 6
    if-eqz v0, :cond_3

    .line 8
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    const-string v3, "TvPipMenuView"

    .line 17
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    const v4, 0x6e93c7d4

    .line 23
    const-string v5, "%s: onPipTransitionFinished()"

    .line 26
    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipBackground:Landroid/view/View;

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 33
    move-result-object v1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 38
    move-result-object v1

    .line 41
    iget v3, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    .line 42
    const/4 v4, 0x2

    .line 44
    div-int/2addr v3, v4

    .line 45
    int-to-long v5, v3

    .line 46
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 47
    move-result-object v1

    .line 50
    sget-object v3, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    .line 51
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 53
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 57
    if-eqz p0, :cond_1

    .line 60
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->init()V

    .line 64
    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 67
    iget-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 71
    move-result v1

    .line 74
    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 75
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 77
    move-result v5

    .line 80
    if-le v1, v5, :cond_2

    .line 81
    const/4 v2, 0x1

    .line 83
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 84
    iget p0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 87
    if-ne p0, v4, :cond_3

    .line 89
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getAlpha()F

    .line 93
    move-result p0

    .line 96
    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    cmpl-float p0, p0, v1

    .line 99
    if-eqz p0, :cond_3

    .line 101
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 105
    move-result-object p0

    .line 108
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 109
    move-result-object p0

    .line 112
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 113
    move-result-object p0

    .line 116
    iget v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    .line 117
    div-int/2addr v0, v4

    .line 119
    int-to-long v0, v0

    .line 120
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 121
    :cond_3
    return-void
    .line 124
.end method
