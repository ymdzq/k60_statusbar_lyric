.class public abstract Lcom/miui/utils/configs/MiuiDebugConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_EVENT_TRACKING:Z

.field public static final DEBUG_KEYGUARD:Z

.field public static final DEBUG_NOTIFICATION:Z

.field public static final DEBUG_PANEL:Z

.field public static final DEBUG_QUICK_SETTINGS:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "debug.sysui"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string v2, "debug.sysui.cloud"

    .line 13
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result v2

    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    const-string v2, "debug.sysui.memory"

    .line 21
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    move-result v2

    .line 26
    :cond_1
    const/4 v2, 0x1

    .line 27
    if-nez v0, :cond_3

    .line 28
    const-string v3, "debug.sysui.event"

    .line 30
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    move v3, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    :goto_0
    move v3, v2

    .line 41
    :goto_1
    sput-boolean v3, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_EVENT_TRACKING:Z

    .line 42
    if-nez v0, :cond_5

    .line 44
    const-string v3, "debug.sysui.notif"

    .line 46
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    goto :goto_2

    .line 54
    :cond_4
    move v3, v1

    .line 55
    goto :goto_3

    .line 56
    :cond_5
    :goto_2
    move v3, v2

    .line 57
    :goto_3
    sput-boolean v3, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    .line 58
    if-nez v0, :cond_7

    .line 60
    const-string v3, "debug.sysui.panel"

    .line 62
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 64
    move-result v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    goto :goto_4

    .line 70
    :cond_6
    move v3, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_7
    :goto_4
    move v3, v2

    .line 73
    :goto_5
    sput-boolean v3, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_PANEL:Z

    .line 74
    if-nez v0, :cond_9

    .line 76
    const-string v3, "debug.sysui.keyguard"

    .line 78
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    move-result v3

    .line 83
    if-eqz v3, :cond_8

    .line 84
    goto :goto_6

    .line 86
    :cond_8
    move v3, v1

    .line 87
    goto :goto_7

    .line 88
    :cond_9
    :goto_6
    move v3, v2

    .line 89
    :goto_7
    sput-boolean v3, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 90
    if-nez v0, :cond_a

    .line 92
    const-string v0, "debug.sysui.qs"

    .line 94
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    move-result v0

    .line 99
    if-eqz v0, :cond_b

    .line 100
    :cond_a
    move v1, v2

    .line 102
    :cond_b
    sput-boolean v1, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_QUICK_SETTINGS:Z

    .line 103
    return-void
    .line 105
.end method
