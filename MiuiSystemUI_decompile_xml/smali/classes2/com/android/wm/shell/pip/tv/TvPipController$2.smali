.class public final Lcom/android/wm/shell/pip/tv/TvPipController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const-string v1, "TvPipController"

    .line 8
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x1b96dcbf

    .line 14
    const/4 v3, 0x0

    .line 17
    const-string v4, "%s: onActionsChanged()"

    .line 18
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->setAppActions(Ljava/util/List;Landroid/app/RemoteAction;)V

    .line 27
    return-void
    .line 30
.end method

.method public final onAspectRatioChanged(F)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    float-to-double v0, p1

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    move-result-object v0

    .line 12
    const-string v1, "TvPipController"

    .line 13
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    const/16 v1, 0x8

    .line 19
    const-string v3, "%s: onAspectRatioChanged: %f"

    .line 21
    const v4, 0x53f4db6f

    .line 23
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 31
    iput p1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 33
    iget-boolean p1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 35
    if-nez p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final onExpandedAspectRatioChanged(F)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    float-to-double v0, p1

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    move-result-object v0

    .line 12
    const-string v1, "TvPipController"

    .line 13
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    const/16 v1, 0x8

    .line 19
    const-string v3, "%s: onExpandedAspectRatioChanged: %f"

    .line 21
    const v4, 0x50aac288

    .line 23
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 31
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setDesiredTvExpandedAspectRatio(FZ)V

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 37
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 39
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    iget v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 45
    cmpl-float v2, v2, v4

    .line 47
    if-eqz v2, :cond_1

    .line 49
    move v2, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v2, v1

    .line 53
    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 54
    invoke-virtual {v5, v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateExpansionEnabled(Z)V

    .line 56
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 59
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 61
    if-eqz v2, :cond_2

    .line 63
    cmpl-float v2, p1, v4

    .line 65
    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateExpandedPipSize()V

    .line 69
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 72
    :cond_2
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 75
    if-eqz v2, :cond_3

    .line 77
    cmpl-float v2, p1, v4

    .line 79
    if-nez v2, :cond_3

    .line 81
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpansionToggled(Z)V

    .line 83
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 88
    :cond_3
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 91
    if-nez v1, :cond_4

    .line 93
    cmpl-float p1, p1, v4

    .line 95
    if-eqz p1, :cond_4

    .line 97
    iget-boolean p1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    .line 99
    if-nez p1, :cond_4

    .line 101
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateExpandedPipSize()V

    .line 103
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpansionToggled(Z)V

    .line 106
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 111
    :cond_4
    return-void
    .line 114
.end method
