.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$TaskState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field mTaskSurface:Landroid/view/SurfaceControl;

.field mToken:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Landroid/window/TransitionInfo$Change;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 9
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 21
    return-void
    .line 23
.end method
