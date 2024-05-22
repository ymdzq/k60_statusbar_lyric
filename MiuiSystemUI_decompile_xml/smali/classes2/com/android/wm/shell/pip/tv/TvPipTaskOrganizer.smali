.class public final Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;
.super Lcom/android/wm/shell/pip/PipTaskOrganizer;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p16}, Lcom/android/wm/shell/pip/PipTaskOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final applyNewPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyNewPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 9
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    .line 11
    move-result v1

    .line 14
    invoke-static {v0, v1}, Lcom/android/wm/shell/pip/PipUtils;->aspectRatioChanged(FF)Z

    .line 15
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    .line 23
    move-result v0

    .line 26
    iget-object v2, v1, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;

    .line 45
    invoke-interface {v3, v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;->onExpandedAspectRatioChanged(F)V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getTitle()Ljava/lang/CharSequence;

    .line 51
    move-result-object v0

    .line 54
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 55
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getTitle()Ljava/lang/CharSequence;

    .line 57
    move-result-object v2

    .line 60
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getTitle()Ljava/lang/CharSequence;

    .line 67
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->notifyTitleChanged(Ljava/lang/CharSequence;)V

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getSubtitle()Ljava/lang/CharSequence;

    .line 74
    move-result-object v0

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 78
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSubtitle()Ljava/lang/CharSequence;

    .line 80
    move-result-object p0

    .line 83
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result p0

    .line 87
    if-nez p0, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getSubtitle()Ljava/lang/CharSequence;

    .line 90
    move-result-object p0

    .line 93
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->notifySubtitleChanged(Ljava/lang/CharSequence;)V

    .line 94
    :cond_2
    return-void
    .line 97
.end method

.method public final shouldSyncPipTransactionWithMenu()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
