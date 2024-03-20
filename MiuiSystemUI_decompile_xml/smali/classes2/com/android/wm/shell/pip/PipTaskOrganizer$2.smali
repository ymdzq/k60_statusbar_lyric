.class public final Lcom/android/wm/shell/pip/PipTaskOrganizer$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPipTransitionCanceled(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPipTransitionFinished(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 11
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    :cond_0
    return-void
    .line 17
.end method

.method public final onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
