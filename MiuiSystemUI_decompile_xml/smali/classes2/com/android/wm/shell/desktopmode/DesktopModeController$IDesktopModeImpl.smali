.class public final Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;
.super Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getVisibleTaskCount(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 5
    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v2, p1, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda0;-><init>(I[I)V

    .line 9
    const-string p1, "getVisibleTaskCount"

    .line 12
    invoke-static {p0, p1, v2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 14
    const/4 p0, 0x0

    .line 17
    aget p0, v1, p0

    .line 18
    return p0
    .line 20
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 3
    return-void
    .line 5
.end method

.method public final showDesktopApps(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    const/4 p1, 0x0

    .line 9
    const-string/jumbo v1, "showDesktopApps"

    .line 10
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method
