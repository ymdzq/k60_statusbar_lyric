.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 12
    const-string v2, "TvPipBoundsController"

    .line 14
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    const v3, 0x260d1cfe

    .line 20
    const-string v4, "%s: applyPendingPlacement()"

    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    .line 32
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacementAnimationDuration:I

    .line 34
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;ZI)V

    .line 36
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    .line 39
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 42
    :cond_1
    return-void
    .line 44
.end method
