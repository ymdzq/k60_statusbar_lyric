.class public final Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController;


# static fields
.field public static final DEBUG:Z

.field public static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastReceiver:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$3;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mCurrentVpns:Landroid/util/SparseArray;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mHasCACerts:Landroid/util/ArrayMap;

.field public final mNetworkCallback:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVpnManager:Landroid/net/VpnManager;

.field public mVpnUserId:I


# direct methods
.method public static -$$Nest$mupdateState(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 10
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 12
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 30
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 32
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnManager:Landroid/net/VpnManager;

    .line 34
    invoke-virtual {v4, v3}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    .line 36
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    iget-object v5, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 42
    if-eqz v5, :cond_1

    .line 44
    const-string v6, "com.miui.vpnsdkmanager"

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    iget-object v5, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 54
    const-string v6, "com.miui.securityadd"

    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    iget-boolean v5, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 65
    if-eqz v5, :cond_2

    .line 67
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 69
    invoke-virtual {v4, v5}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    .line 71
    move-result-object v4

    .line 74
    if-eqz v4, :cond_0

    .line 75
    iget v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 77
    const/4 v5, 0x3

    .line 79
    if-eq v4, v5, :cond_2

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 89
    return-void
    .line 91
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "SecurityController"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    .line 9
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 11
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 13
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 20
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 31
    new-instance v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 35
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;

    .line 38
    new-instance v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$3;

    .line 40
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 42
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$3;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    .line 47
    const-string v3, "device_policy"

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 54
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 55
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 57
    const-string v3, "connectivity"

    .line 59
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 64
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 65
    const-class v4, Landroid/net/VpnManager;

    .line 67
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 72
    check-cast v4, Landroid/net/VpnManager;

    .line 73
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnManager:Landroid/net/VpnManager;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    move-result-object v4

    .line 80
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    const-string/jumbo v4, "user"

    .line 83
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 89
    check-cast p1, Landroid/os/UserManager;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 92
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 94
    const-string p6, "SecurityControllerImpl"

    .line 96
    invoke-virtual {p7, p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 98
    new-instance p6, Landroid/content/IntentFilter;

    .line 101
    invoke-direct {p6}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    const-string p7, "android.security.action.TRUST_STORE_CHANGED"

    .line 106
    invoke-virtual {p6, p7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string p7, "android.intent.action.USER_UNLOCKED"

    .line 111
    invoke-virtual {p6, p7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object p7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 116
    invoke-virtual {p4, v2, p6, p3, p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 118
    sget-object p3, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    .line 121
    invoke-virtual {v3, p3, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 123
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 126
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 128
    move-result p3

    .line 131
    iput p3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 132
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 134
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 138
    move-result p3

    .line 141
    if-eqz p3, :cond_0

    .line 142
    iget p1, p1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 144
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 146
    goto :goto_0

    .line 148
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 149
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    .line 153
    invoke-virtual {p2, v0, p5}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
    .line 159
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .line 2
    const-string v0, "addCallback "

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 6
    monitor-enter v1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    .line 20
    if-eqz v2, :cond_1

    .line 22
    const-string v2, "SecurityController"

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    monitor-exit v1

    .line 48
    :goto_1
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
    .line 52
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "SecurityController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mCurrentVpns={"

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    const/4 p2, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v0

    .line 18
    if-ge p2, v0, :cond_1

    .line 19
    if-lez p2, :cond_0

    .line 21
    const-string v0, ", "

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 30
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 34
    const/16 v0, 0x3d

    .line 37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 48
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    add-int/lit8 p2, p2, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo p0, "}"

    .line 58
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    return-void
    .line 64
.end method

.method public final fireCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .line 21
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;->onStateChanged()V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
    .line 31
.end method

.method public final getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 4
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 9
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 11
    move-result-object v0

    .line 14
    :try_start_0
    new-instance v1, Landroid/content/pm/ResolveInfo;

    .line 15
    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    const/16 v3, 0x80

    .line 22
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 28
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {v0, p0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0
    .line 39
.end method

.method public final getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const p1, 0x7f13067f    # @string/legacy_vpn_name 'VPN'

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 23
    move-result-object p0

    .line 26
    invoke-static {p0, p1}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 27
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    const-string v0, "Package "

    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, " is not present"

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    const-string p2, "SecurityController"

    .line 56
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 p0, 0x0

    .line 61
    return-object p0
    .line 62
.end method

.method public final getPrimaryVpnName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Landroid/os/UserHandle;

    .line 14
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 16
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0
    .line 27
.end method

.method public final getWorkProfileUserId(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 22
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 30
    return p0

    .line 32
    :cond_1
    const/16 p0, -0x2710

    .line 33
    return p0
    .line 35
.end method

.method public final getWorkProfileVpnName()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    .line 4
    move-result v0

    .line 7
    const/16 v1, -0x2710

    .line 8
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-object v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    return-object v2
    .line 33
.end method

.method public final hasCACertInCurrentUser()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Boolean;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final hasCACertInWorkProfile()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    .line 4
    move-result v0

    .line 7
    const/16 v1, -0x2710

    .line 8
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return v2

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    const/4 v2, 0x1

    .line 34
    :cond_1
    return v2
    .line 35
.end method

.method public final hasWorkProfile()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    .line 4
    move-result p0

    .line 7
    const/16 v0, -0x2710

    .line 8
    if-eq p0, v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final isDeviceManaged()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isParentalControlsEnabled()Z
    .locals 2

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 4
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 11
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public final isVpnBranded()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    iget-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 16
    if-eqz v2, :cond_1

    .line 18
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 27
    const/16 v2, 0x80

    .line 29
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 31
    move-result-object p0

    .line 34
    if-eqz p0, :cond_4

    .line 35
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 37
    if-eqz v0, :cond_4

    .line 39
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 41
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    goto :goto_1

    .line 47
    :cond_3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 48
    const-string v0, "com.android.systemui.IS_BRANDED"

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    :cond_4
    :goto_1
    return v1
    .line 56
.end method

.method public final isVpnEnabled()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    .line 6
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    aget v4, v0, v3

    .line 15
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    return v2
    .line 30
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .line 2
    const-string/jumbo v0, "removeCallback "

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    monitor-enter v1

    .line 9
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    monitor-exit v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    .line 14
    if-eqz v2, :cond_1

    .line 16
    const-string v2, "SecurityController"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v1

    .line 40
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
    .line 44
.end method
