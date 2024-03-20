.class public final Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 2
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    const-string p1, "desktop_mode"

    .line 7
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    .line 13
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    const/4 p2, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    const v1, -0x37a2c220    # -226551.5f

    .line 18
    invoke-static {p1, v1, p2, v0, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 26
    move-result p1

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->updateDesktopModeActive(Z)V

    .line 32
    :cond_1
    return-void
    .line 35
.end method
