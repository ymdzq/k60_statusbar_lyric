.class public final synthetic Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 12
    const v2, -0x48c5e5bb

    .line 14
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v2, v1, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_0
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 26
    const-string v3, "extra_shell_desktop_mode"

    .line 28
    invoke-virtual {v2, v3, v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mSettingsObserver:Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

    .line 33
    iget-object v2, v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v2

    .line 40
    iget-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    .line 41
    const/4 v4, -0x2

    .line 43
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->updateDesktopModeActive(Z)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 59
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 61
    return-void
    .line 64
.end method
