.class public abstract Lcom/miui/systemui/util/ShutDownPasswordUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static mLocalReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static exeShutDownOrReboot(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;ZZ)Z
    .locals 7

    .line 1
    sget-object v6, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 2
    invoke-static {v6}, Lcom/miui/systemui/util/ShutDownPasswordUtils;->isShutDownPasswordEnabled(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/miui/systemui/util/ShutDownPasswordUtils;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/miui/systemui/util/ShutDownPasswordUtils$LocalReceiver;

    .line 14
    invoke-direct {v0, p0, p2, p3}, Lcom/miui/systemui/util/ShutDownPasswordUtils$LocalReceiver;-><init>(Lcom/android/internal/statusbar/IStatusBarService;ZZ)V

    .line 16
    sput-object v0, Lcom/miui/systemui/util/ShutDownPasswordUtils;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    new-instance v3, Landroid/content/IntentFilter;

    .line 21
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    const-string p0, "android.intent.action.USER_PRESENT"

    .line 26
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/miui/systemui/util/ShutDownPasswordUtils;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 33
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, v6

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 38
    :cond_0
    const/4 p0, 0x1

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 42
    new-instance p3, Lcom/miui/systemui/util/ShutDownPasswordUtils$1;

    .line 45
    invoke-direct {p3, v6}, Lcom/miui/systemui/util/ShutDownPasswordUtils$1;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0, p3, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo p3, "shutdown: "

    .line 56
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 68
    const-string p2, "ShutDownPasswordUtils"

    .line 69
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return p0

    .line 74
    :cond_1
    const/4 p0, 0x0

    .line 75
    return p0
    .line 76
.end method

.method public static isShutDownPasswordEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "keyguard"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/KeyguardManager;

    .line 8
    const/4 v1, -0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 11
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object p0

    .line 21
    const-string v0, "miui_shut_down_password_enabled"

    .line 22
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    move-result p0

    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p0, v0, :cond_0

    .line 29
    move v2, v0

    .line 31
    :cond_0
    return v2
.end method
