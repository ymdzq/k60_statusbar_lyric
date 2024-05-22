.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final ACTION_LAUNCH_FULLSCREEN_FROM_FREEFORM:Ljava/lang/String; = "miui.intent.action_launch_fullscreen_from_freeform"

.field private static final FAMILYSMILE_ACTIVITY:Ljava/lang/String; = "jp.netstar.familysmile.appwatch.AppWatchBlockActivity"

.field private static final FAMILYSMILE_PACKAGE:Ljava/lang/String; = "jp.netstar.familysmile"

.field private static final FOCUS_MODE_STATUS:Ljava/lang/String; = "settings_focus_mode_status"

.field private static final MIUI_OPTIMIZATION:Ljava/lang/String; = "miui_optimization"

.field private static final PARENTALCONTROLS_ACTIVITY:Ljava/lang/String; = "jp.co.daj.consumer.ifilter.blocker.BlockActivity"

.field private static final PARENTALCONTROLS_PACKAGE:Ljava/lang/String; = "jp.softbank.mb.parentalcontrols"

.field private static final POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field private static final SP_IN_KID_MODE:Ljava/lang/String; = "kid_mode_status"

.field private static final SUPPORTS_FREEFORM_WINDOW_MANAGERMENT:Ljava/lang/String; = "enable_freeform_support"

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFocusModeObserver:Landroid/database/ContentObserver;

.field private mFreeFormReceiver:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;

.field private mKidModeObserver:Landroid/database/ContentObserver;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

.field private final mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field private mMiuiOptObserver:Landroid/database/ContentObserver;

.field private mOneHandyModeActivatedObserver:Landroid/database/ContentObserver;

.field private mSuperPowerOpenObserver:Landroid/database/ContentObserver;

.field private mSupportsFreeformWindowManagementObserver:Landroid/database/ContentObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMainHandler:Landroid/os/Handler;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mFreeFormReceiver:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;

    .line 10
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$1;

    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 14
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mOneHandyModeActivatedObserver:Landroid/database/ContentObserver;

    .line 24
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;

    .line 26
    new-instance v1, Landroid/os/Handler;

    .line 28
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V

    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMiuiOptObserver:Landroid/database/ContentObserver;

    .line 36
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$3;

    .line 38
    new-instance v1, Landroid/os/Handler;

    .line 40
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 42
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$3;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V

    .line 45
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mSupportsFreeformWindowManagementObserver:Landroid/database/ContentObserver;

    .line 48
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;

    .line 50
    new-instance v1, Landroid/os/Handler;

    .line 52
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 54
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V

    .line 57
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mSuperPowerOpenObserver:Landroid/database/ContentObserver;

    .line 60
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$5;

    .line 62
    new-instance v1, Landroid/os/Handler;

    .line 64
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 66
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$5;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V

    .line 69
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mFocusModeObserver:Landroid/database/ContentObserver;

    .line 72
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$6;

    .line 74
    new-instance v1, Landroid/os/Handler;

    .line 76
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 78
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$6;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V

    .line 81
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mKidModeObserver:Landroid/database/ContentObserver;

    .line 84
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$7;

    .line 86
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$7;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)V

    .line 88
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

    .line 91
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMainHandler:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 97
    :try_start_0
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 99
    move-result-object p3

    .line 102
    invoke-virtual {p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isMIUIProduct()Z

    .line 103
    move-result p3

    .line 106
    if-eqz p3, :cond_0

    .line 107
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mFreeFormReceiver:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;

    .line 109
    iget-object v0, p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 111
    invoke-virtual {p1, p3, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    const-string p2, "MiuiFreeformModeObserver"

    .line 118
    const-string p3, "registerReceiver err :"

    .line 120
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    move-result-object p1

    .line 130
    const-string p2, "one_handed_mode_activated"

    .line 131
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 133
    move-result-object p2

    .line 136
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mOneHandyModeActivatedObserver:Landroid/database/ContentObserver;

    .line 137
    invoke-virtual {p1, p2, v3, p3, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 144
    move-result-object p1

    .line 147
    const-string p2, "power_supersave_mode_open"

    .line 148
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 150
    move-result-object p2

    .line 153
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mSuperPowerOpenObserver:Landroid/database/ContentObserver;

    .line 154
    invoke-virtual {p1, p2, v3, p3, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 161
    move-result-object p1

    .line 164
    const-string/jumbo p2, "settings_focus_mode_status"

    .line 165
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 168
    move-result-object p2

    .line 171
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mFocusModeObserver:Landroid/database/ContentObserver;

    .line 172
    invoke-virtual {p1, p2, v3, p3, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 179
    move-result-object p1

    .line 182
    const-string p2, "kid_mode_status"

    .line 183
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 185
    move-result-object p2

    .line 188
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mKidModeObserver:Landroid/database/ContentObserver;

    .line 189
    invoke-virtual {p1, p2, v3, p3, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 196
    move-result-object p1

    .line 199
    const-string p2, "miui_optimization"

    .line 200
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 202
    move-result-object p2

    .line 205
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMiuiOptObserver:Landroid/database/ContentObserver;

    .line 206
    const/4 v0, -0x1

    .line 208
    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 214
    move-result-object p1

    .line 217
    const-string p2, "enable_freeform_support"

    .line 218
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 220
    move-result-object p2

    .line 223
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mSupportsFreeformWindowManagementObserver:Landroid/database/ContentObserver;

    .line 224
    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 226
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->registerActivityObserver()V

    .line 229
    return-void
    .line 232
.end method

.method private registerActivityObserver()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 8
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 10
    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_0
    return-void
    .line 21
.end method
