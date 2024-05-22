.class public final Lcom/android/wm/shell/windowdecor/WindowDecoration$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/WindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 6
    if-eq v1, p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 11
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 13
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 18
    iget p1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 20
    if-lez p1, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 25
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 27
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, p0, p1, p1, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 31
    :goto_0
    return-void
    .line 34
.end method
