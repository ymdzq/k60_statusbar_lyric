.class public final Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final KEYGUARD_GOING_AWAY_FLAG_FAST_UNLOCK:I

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mShowPasswordScreenReceiver:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/systemui/UiOffloadThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 9
    iput-object p4, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    iput-object p6, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 13
    new-instance p1, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;

    .line 15
    invoke-direct {p1, p0, p5}, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;-><init>(Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;Landroid/os/Handler;)V

    .line 17
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mShowPasswordScreenReceiver:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;

    .line 20
    const/16 p1, 0x20

    .line 22
    iput p1, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->KEYGUARD_GOING_AWAY_FLAG_FAST_UNLOCK:I

    .line 24
    return-void
    .line 26
.end method

.method public static unblockScreenOn(Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    const-string v0, "miui_face"

    .line 2
    const-string/jumbo v1, "unblockScreenOn"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    :goto_0
    const/4 v3, -0x1

    .line 16
    if-ge v3, v1, :cond_0

    .line 17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 19
    move-result-object v3

    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 23
    move-result-object v4

    .line 26
    :try_start_0
    const-string v5, "com.android.internal.policy.IKeyguardStateCallback"

    .line 27
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 36
    invoke-interface {v5}, Lcom/android/internal/policy/IKeyguardStateCallback;->asBinder()Landroid/os/IBinder;

    .line 38
    move-result-object v5

    .line 41
    const/16 v6, 0xff

    .line 42
    invoke-interface {v5, v6, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 44
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception v5

    .line 53
    :try_start_1
    const-string/jumbo v6, "something wrong when unblock screen on"

    .line 54
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 66
    add-int/lit8 v1, v1, -0x1

    .line 69
    goto :goto_0

    .line 71
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 72
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 75
    throw p0

    .line 78
    :cond_0
    return-void
    .line 79
.end method


# virtual methods
.method public final keyguardGoingAway()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 10
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 16
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 18
    const/16 v1, 0x12

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget v0, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->KEYGUARD_GOING_AWAY_FLAG_FAST_UNLOCK:I

    .line 24
    or-int/2addr v1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v1, 0x8

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 30
    new-instance v2, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$keyguardGoingAway$1;

    .line 32
    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$keyguardGoingAway$1;-><init>(Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;I)V

    .line 34
    invoke-virtual {v0, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void
    .line 40
.end method
