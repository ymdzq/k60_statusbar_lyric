.class public final Lcom/android/wm/shell/pip/tv/TvPipController$3;
.super Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onImeVisibilityChanged(ZI)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    int-to-long v0, p2

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v3

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "TvPipController"

    .line 17
    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    const/16 v1, 0x1c

    .line 23
    const-string v3, "%s: onImeVisibilityChanged(), visible=%b, height=%d"

    .line 25
    const v4, -0xc12c90

    .line 27
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 35
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 37
    if-ne p1, v1, :cond_2

    .line 39
    if-eqz p1, :cond_1

    .line 41
    iget v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    .line 43
    if-ne p2, v1, :cond_2

    .line 45
    :cond_1
    return-void

    .line 47
    :cond_2
    iput-boolean p1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 48
    iput p2, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    .line 50
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 52
    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 56
    :cond_3
    return-void
    .line 59
.end method
