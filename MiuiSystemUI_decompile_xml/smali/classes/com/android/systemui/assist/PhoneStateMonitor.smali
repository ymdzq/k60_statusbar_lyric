.class public final Lcom/android/systemui/assist/PhoneStateMonitor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

.field public static final sMiuiHomePkgNameList:Ljava/util/ArrayList;


# instance fields
.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public mDefaultHome:Landroid/content/ComponentName;

.field public volatile mFullscreenGesture:Z

.field public mLauncherShowing:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public mTopActivity:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 4
    const-string v2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    .line 6
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 8
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/systemui/assist/PhoneStateMonitor;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sput-object v0, Lcom/android/systemui/assist/PhoneStateMonitor;->sMiuiHomePkgNameList:Ljava/util/ArrayList;

    .line 21
    const-string v1, "com.miui.home"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v1, "com.android.provision"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v1, "com.mi.android.globallauncher"

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "com.aura.oobe.kddi"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
    .line 43
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/BootCompleteCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mMainHandler:Landroid/os/Handler;

    .line 11
    invoke-static {}, Lcom/android/systemui/assist/PhoneStateMonitor;->getCurrentDefaultHome()Landroid/content/ComponentName;

    .line 13
    move-result-object p3

    .line 16
    iput-object p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 17
    new-instance p3, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {p3, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    .line 21
    check-cast p4, Lcom/android/systemui/BootCompleteCacheImpl;

    .line 24
    iget-object p5, p4, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    move-result p5

    .line 31
    if-eqz p5, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    iget-object p5, p4, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 35
    monitor-enter p5

    .line 37
    :try_start_0
    iget-object p6, p4, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 40
    move-result p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz p6, :cond_1

    .line 44
    monitor-exit p5

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :try_start_1
    iget-object p4, p4, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 48
    new-instance p6, Ljava/lang/ref/WeakReference;

    .line 50
    invoke-direct {p6, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 52
    check-cast p4, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p5

    .line 60
    :goto_0
    new-instance p3, Landroid/content/IntentFilter;

    .line 61
    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    sget-object p4, Lcom/android/systemui/assist/PhoneStateMonitor;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    .line 66
    const/4 p5, 0x0

    .line 68
    move p6, p5

    .line 69
    :goto_1
    const/4 v0, 0x4

    .line 70
    if-ge p6, v0, :cond_2

    .line 71
    aget-object v0, p4, p6

    .line 73
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    add-int/lit8 p6, p6, 0x1

    .line 78
    goto :goto_1

    .line 80
    :cond_2
    new-instance p4, Lcom/android/systemui/assist/PhoneStateMonitor$1;

    .line 81
    invoke-direct {p4, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$1;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    .line 83
    invoke-virtual {p2, p4, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    sget-object p2, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 89
    invoke-virtual {p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 91
    move-result-object p3

    .line 94
    if-eqz p3, :cond_4

    .line 95
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 97
    if-nez p3, :cond_3

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    iget-object p4, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 102
    invoke-virtual {p3, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result p3

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    :goto_2
    move p3, p5

    .line 109
    :goto_3
    iput-boolean p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    .line 110
    sget-object p3, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 112
    new-instance p4, Lcom/android/systemui/assist/PhoneStateMonitor$2;

    .line 114
    invoke-direct {p4, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$2;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    .line 116
    invoke-virtual {p3, p4}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 119
    invoke-virtual {p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 122
    move-result-object p2

    .line 125
    iput-object p2, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mTopActivity:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    if-eqz p2, :cond_6

    .line 128
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 130
    if-nez p2, :cond_5

    .line 132
    goto :goto_4

    .line 134
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 135
    invoke-virtual {p2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result p2

    .line 140
    goto :goto_5

    .line 141
    :cond_6
    :goto_4
    move p2, p5

    .line 142
    :goto_5
    iput-boolean p2, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    .line 143
    new-instance p2, Lcom/android/systemui/assist/PhoneStateMonitor$3;

    .line 145
    invoke-direct {p2, p0, p7}, Lcom/android/systemui/assist/PhoneStateMonitor$3;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;Landroid/os/Handler;)V

    .line 147
    iget-object p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    move-result-object p3

    .line 155
    const-string p4, "force_fsg_nav_bar"

    .line 156
    invoke-static {p4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 158
    move-result-object p4

    .line 161
    const/4 p6, -0x1

    .line 162
    invoke-virtual {p3, p4, p5, p2, p6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object p1

    .line 169
    const-string p2, "force_fsg_nav_bar"

    .line 170
    invoke-static {p1, p2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 172
    move-result p1

    .line 175
    iput-boolean p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mFullscreenGesture:Z

    .line 176
    return-void

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    monitor-exit p5

    .line 180
    throw p0
    .line 181
.end method

.method public static getCurrentDefaultHome()Landroid/content/ComponentName;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v1, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 7
    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget-object v2, Lcom/android/systemui/shared/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 10
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 12
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v2

    .line 17
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 18
    move-object v2, v1

    .line 21
    :goto_0
    if-eqz v2, :cond_0

    .line 22
    return-object v2

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 28
    const/high16 v2, -0x80000000

    .line 29
    :goto_1
    move-object v3, v1

    .line 31
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 35
    if-eqz v4, :cond_3

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 41
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 42
    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 44
    if-le v5, v2, :cond_2

    .line 46
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 50
    move-result-object v3

    .line 53
    iget v2, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 54
    goto :goto_2

    .line 56
    :cond_2
    if-ne v5, v2, :cond_1

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    return-object v3
    .line 60
.end method


# virtual methods
.method public final getPhoneState()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eq v1, v4, :cond_1

    .line 11
    if-ne v1, v3, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move v1, v4

    .line 18
    :goto_1
    if-eqz v1, :cond_6

    .line 19
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    move v3, v4

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 29
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Optional;

    .line 35
    new-instance v1, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda1;

    .line 37
    invoke-direct {v1}, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda1;-><init>()V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 42
    move-result-object v0

    .line 45
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    const/4 v3, 0x3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    .line 62
    const-class v0, Landroid/app/KeyguardManager;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Landroid/app/KeyguardManager;

    .line 70
    if-eqz p0, :cond_4

    .line 72
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 74
    move-result p0

    .line 77
    if-eqz p0, :cond_4

    .line 78
    move v2, v4

    .line 80
    :cond_4
    if-eqz v2, :cond_5

    .line 81
    goto :goto_2

    .line 83
    :cond_5
    const/4 v3, 0x4

    .line 84
    goto :goto_2

    .line 85
    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    .line 86
    if-eqz p0, :cond_7

    .line 88
    const/4 v3, 0x5

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    const/16 v3, 0x9

    .line 92
    :goto_2
    return v3
    .line 94
.end method

.method public final onDefaultHomeChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mFullscreenGesture:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    sget-object v3, Lcom/android/systemui/assist/PhoneStateMonitor;->sMiuiHomePkgNameList:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 24
    :goto_1
    if-nez v1, :cond_2

    .line 25
    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v0

    .line 34
    const-string v1, "force_fsg_nav_bar"

    .line 35
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mMainHandler:Landroid/os/Handler;

    .line 40
    new-instance v1, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda2;

    .line 42
    invoke-direct {v1, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
    .line 50
.end method
