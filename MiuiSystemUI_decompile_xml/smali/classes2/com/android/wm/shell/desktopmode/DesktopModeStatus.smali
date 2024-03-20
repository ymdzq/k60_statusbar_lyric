.class public abstract Lcom/android/wm/shell/desktopmode/DesktopModeStatus;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final IS_DISPLAY_CHANGE_ENABLED:Z

.field public static final IS_PROTO2_ENABLED:Z

.field public static final IS_SUPPORTED:Z

.field public static final IS_VEILED_RESIZE_ENABLED:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "persist.wm.debug.desktop_mode"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 9
    const-string v0, "persist.wm.debug.desktop_mode_2"

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 17
    const-string v0, "persist.wm.debug.desktop_veiled_resizing"

    .line 19
    const/4 v2, 0x1

    .line 21
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    move-result v0

    .line 25
    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    .line 26
    const-string v0, "persist.wm.debug.desktop_change_display"

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    move-result v0

    .line 33
    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_DISPLAY_CHANGE_ENABLED:Z

    .line 34
    return-void
    .line 36
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 10
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    return v2

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object p0

    .line 19
    const-string v0, "desktop_mode"

    .line 20
    const/4 v3, -0x2

    .line 22
    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    move v1, v2

    .line 29
    :cond_2
    return v1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 32
    if-eqz v0, :cond_3

    .line 34
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    const v2, -0x31203ae1

    .line 46
    const/4 v3, 0x0

    .line 49
    invoke-static {v0, v2, v1, v3, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_3
    return v1
    .line 53
.end method

.method public static isAnyEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
    .line 14
.end method
