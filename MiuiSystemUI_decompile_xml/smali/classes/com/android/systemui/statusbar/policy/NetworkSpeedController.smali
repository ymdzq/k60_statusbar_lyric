.class public final Lcom/android/systemui/statusbar/policy/NetworkSpeedController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final EMPTY:[Ljava/lang/String;

.field public final mBgHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentUserId:I

.field public final mHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

.field public mIsMinimalismModeOn:Z

.field public mLastTime:J

.field public final mNetworkCallback:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;

.field public mNetworkConnected:Z

.field public final mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

.field public final mNetworks:Ljava/util/HashSet;

.field public mShowNetworkSpeed:Z

.field public final mShowNetworkSpeedObserver:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field public mTotalBytes:J

.field public final mUserChangedCallback:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;


# direct methods
.method public static -$$Nest$mupdateShowNetworkSpeed(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mCurrentUserId:I

    .line 8
    const-string/jumbo v2, "status_bar_show_network_speed"

    .line 10
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v3, 0x1

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 21
    const v0, 0x186a2

    .line 23
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    return-void
    .line 37
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/policy/MinimalismModeController;Lcom/android/systemui/dump/DumpManager;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    .line 10
    const-string v0, ""

    .line 12
    filled-new-array {v0, v0}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->EMPTY:[Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkCallback:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;

    .line 25
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;

    .line 27
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    .line 29
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mUserChangedCallback:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;

    .line 32
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Looper;I)V

    .line 41
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 48
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 50
    invoke-direct {v2}, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;-><init>()V

    .line 52
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 55
    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 57
    invoke-virtual {p3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V

    .line 59
    new-instance p3, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 62
    const/4 v2, 0x1

    .line 64
    invoke-direct {p3, p0, p2, v2}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Looper;I)V

    .line 65
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 68
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;

    .line 70
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;)V

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeedObserver:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    move-result-object p1

    .line 80
    const-string/jumbo v3, "status_bar_show_network_speed"

    .line 81
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    move-result-object v3

    .line 87
    const/4 v5, -0x1

    .line 88
    invoke-virtual {p1, v3, v2, p2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;->onChange(Z)V

    .line 92
    invoke-virtual {p7, p0}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->addListener(Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;)V

    .line 95
    check-cast p5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 98
    invoke-virtual {p5, v1, p4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 100
    invoke-virtual {p5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 103
    move-result p1

    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mCurrentUserId:I

    .line 107
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    .line 109
    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 114
    move-result-object p1

    .line 117
    invoke-virtual {p6, p1, v0, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 118
    invoke-virtual {p8, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 121
    return-void
    .line 124
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "NetworkSpeedController"

    .line 2
    const-string v0, "  visible="

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    .line 12
    const-string v1, "  networkSpeedNumber="

    .line 14
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "  networkSpeedUnit="

    .line 34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    .line 39
    invoke-static {p2, p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 41
    return-void
.end method

.method public final onMinimalismModeChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mIsMinimalismModeOn:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateVisibility()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateText([Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    .line 4
    const/4 v2, 0x0

    .line 6
    aget-object v3, p1, v2

    .line 7
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    aget-object v1, p1, v2

    .line 16
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    .line 18
    move v2, v3

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    .line 21
    aget-object v4, p1, v3

    .line 23
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    aget-object p1, p1, v3

    .line 31
    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    move v3, v2

    .line 36
    :goto_0
    if-eqz v3, :cond_2

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 39
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V

    .line 43
    :cond_2
    return-void
    .line 46
.end method

.method public final updateVisibility()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mIsMinimalismModeOn:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 17
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    .line 19
    if-eq v2, v0, :cond_2

    .line 21
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 27
    const v2, 0x186a4

    .line 29
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    const-wide/16 v2, 0x0

    .line 35
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    .line 37
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->EMPTY:[Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateText([Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 46
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V

    .line 50
    :cond_2
    return-void
    .line 53
.end method
