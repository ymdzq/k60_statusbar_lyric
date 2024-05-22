.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    iget-object v2, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 11
    if-nez v2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 16
    iput-object v1, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 19
    iget-object v2, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 28
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 30
    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 32
    return-void
    .line 34
.end method
