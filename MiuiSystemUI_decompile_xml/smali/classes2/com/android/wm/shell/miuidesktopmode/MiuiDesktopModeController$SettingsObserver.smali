.class public final Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 2
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/provider/SettingsStub;->getMiuiDesktopModeSetting()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    const-string p1, "MiuiDesktopModeController"

    .line 10
    const-string p2, "Received update for desktop mode setting"

    .line 12
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {p1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 19
    move-result p1

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->updateDesktopModeActive(Z)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method
