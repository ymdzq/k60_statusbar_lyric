.class public final synthetic Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 9
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 11
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    .line 14
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 17
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const/4 p0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 29
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 35
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 40
.end method
