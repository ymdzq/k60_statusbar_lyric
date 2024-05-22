.class public final Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mIsFullscreen:Z

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mView:Landroid/view/View;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 7
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 9
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 11
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    move-result-object v1

    .line 21
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    new-instance v1, Landroid/view/View;

    .line 26
    invoke-direct {v1, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    .line 31
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    .line 33
    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 35
    iget v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 38
    invoke-virtual {p6, v2, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    .line 40
    const-string p6, "Fullscreen Indicator"

    .line 43
    invoke-virtual {v1, p6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 45
    move-result-object p6

    .line 48
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 49
    move-result-object p6

    .line 52
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 53
    move-result-object p6

    .line 56
    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 57
    invoke-virtual {v0, p6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    new-instance p6, Landroid/view/WindowManager$LayoutParams;

    .line 62
    const/4 v5, 0x2

    .line 64
    const/16 v6, 0x8

    .line 65
    const/4 v7, -0x2

    .line 67
    move-object v2, p6

    .line 68
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    const-string v2, "Fullscreen indicator for Task="

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 87
    invoke-virtual {p6, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p6}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 91
    new-instance v1, Landroid/view/WindowlessWindowManager;

    .line 94
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 96
    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 98
    const/4 v4, 0x0

    .line 100
    invoke-direct {v1, v2, v3, v4}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 101
    new-instance v2, Landroid/view/SurfaceControlViewHost;

    .line 104
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 106
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 108
    move-result-object p2

    .line 111
    const-string p3, "FullscreenVisualIndicator"

    .line 112
    invoke-direct {v2, p4, p2, v1, p3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 114
    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 117
    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    .line 119
    invoke-virtual {v2, p2, p6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 121
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 124
    const/4 p2, -0x1

    .line 126
    invoke-virtual {v0, p0, p5, p2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 127
    new-instance p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$$ExternalSyntheticLambda0;

    .line 130
    invoke-direct {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    .line 132
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 135
    return-void
    .line 138
.end method
