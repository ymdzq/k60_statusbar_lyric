.class public abstract Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final IS_SUPPORTED:Z

.field public static mDesktopActive:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.config.miui_desktop_mode_enabled"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->IS_SUPPORTED:Z

    .line 9
    sput-boolean v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->mDesktopActive:Z

    .line 11
    return-void
    .line 13
.end method

.method public static isActive()Z
    .locals 1

    .line 6
    sget-boolean v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->mDesktopActive:Z

    return v0
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->IS_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/provider/SettingsStub;->getMiuiDesktopModeSetting()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x2

    .line 4
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read MIUI_DESKTOP_MODE settings "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiDesktopModeStatus"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
