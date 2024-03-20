.class public final synthetic Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "MiuiDesktopModeController"

    .line 7
    const-string v1, "Initialize MiuiDesktopModeController"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mSettingsObserver:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;

    .line 14
    iget-object v1, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v1

    .line 21
    iget-object v2, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    .line 22
    const/4 v3, 0x0

    .line 24
    const/4 v4, -0x2

    .line 25
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {v0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 31
    move-result v0

    .line 34
    sput-boolean v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->mDesktopActive:Z

    .line 35
    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->updateDesktopModeActive(Z)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 43
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 48
    iput-object p0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 52
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->setMiuiDesktopModeController(Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;)V

    .line 54
    return-void
    .line 57
.end method
