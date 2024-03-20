.class public abstract Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideUserTracker(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)Lcom/android/systemui/settings/UserTrackerImpl;
    .locals 8

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    new-instance v7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    move-object v1, v7

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    move-object v6, p4

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/settings/UserTrackerImpl;-><init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)V

    .line 14
    iget-boolean p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    .line 17
    if-eqz p0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    iput-boolean p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    .line 23
    invoke-virtual {v7, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)V

    .line 25
    new-instance p0, Landroid/content/IntentFilter;

    .line 28
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    const-string p1, "android.intent.action.USER_INFO_CHANGED"

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string p1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string p1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 43
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string p1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string p1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 53
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string p1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object p1, v7, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    .line 63
    const/4 p2, 0x0

    .line 65
    iget-object p3, v7, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {p1, v7, p0, p2, p3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    iget-object p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->iActivityManager:Landroid/app/IActivityManager;

    .line 71
    new-instance p1, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;

    .line 73
    invoke-direct {p1, v7}, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;-><init>(Lcom/android/systemui/settings/UserTrackerImpl;)V

    .line 75
    const-string p2, "UserTrackerImpl"

    .line 78
    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 80
    iget-object p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 83
    invoke-static {p0, p2, v7}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 85
    :goto_0
    return-object v7
    .line 88
.end method
