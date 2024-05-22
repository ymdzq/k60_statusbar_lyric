.class public final Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final mAllUsersReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

.field public mAllowLockscreenRemoteInput:Z

.field public final mBaseBroadcastReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field public final mCommonNotifCollectionLazy:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentManagedProfiles:Landroid/util/SparseArray;

.field public final mCurrentProfiles:Landroid/util/SparseArray;

.field public mCurrentUserId:I

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

.field public mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

.field public final mOverviewProxyServiceLazy:Ldagger/Lazy;

.field public mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

.field public final mShouldHideNotifsLatestResult:Landroid/util/SparseBooleanArray;

.field public mShowLockscreenNotifications:Z

.field public mState:I

.field public final mUserChangedCallback:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersInLockdownLatestResult:Landroid/util/SparseBooleanArray;

.field public final mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

.field public final mVisibilityProviderLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationClickNotifier;Ldagger/Lazy;Landroid/app/KeyguardManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/Object;

    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    .line 12
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 14
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 16
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 19
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 21
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    .line 26
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 28
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 30
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 33
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 35
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 37
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 40
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 42
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 44
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersInLockdownLatestResult:Landroid/util/SparseBooleanArray;

    .line 47
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 49
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 51
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShouldHideNotifsLatestResult:Landroid/util/SparseBooleanArray;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    .line 61
    const/4 v2, 0x0

    .line 63
    iput v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    .line 64
    new-instance v3, Lcom/android/systemui/util/ListenerSet;

    .line 66
    invoke-direct {v3}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    .line 68
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    .line 71
    new-instance v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    .line 73
    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    .line 75
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    .line 78
    new-instance v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    .line 80
    const/4 v4, 0x1

    .line 82
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    .line 83
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    .line 86
    new-instance v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    .line 88
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    .line 90
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserChangedCallback:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    .line 93
    new-instance v3, Landroid/util/SparseArray;

    .line 95
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 97
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 100
    new-instance v3, Landroid/util/SparseArray;

    .line 102
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 104
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    .line 107
    iput v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 109
    move-object v2, p1

    .line 111
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 112
    move-object/from16 v2, p12

    .line 114
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 116
    move-object v2, p3

    .line 118
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 119
    move-object v2, p4

    .line 121
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 122
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 124
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 126
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 128
    move-result v1

    .line 131
    iput v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 132
    move-object v1, p6

    .line 134
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mVisibilityProviderLazy:Ldagger/Lazy;

    .line 135
    move-object v1, p7

    .line 137
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    .line 138
    move-object v1, p8

    .line 140
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 141
    move-object v1, p9

    .line 143
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mOverviewProxyServiceLazy:Ldagger/Lazy;

    .line 144
    move-object/from16 v1, p11

    .line 146
    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 148
    move-object/from16 v1, p17

    .line 151
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    move-object v1, p10

    .line 155
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 156
    move-object v1, p2

    .line 158
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 159
    move-object/from16 v1, p13

    .line 161
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 163
    move-object/from16 v1, p15

    .line 165
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 167
    move-object/from16 v1, p14

    .line 169
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 171
    move-object/from16 v1, p18

    .line 173
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 175
    move-object/from16 v1, p16

    .line 177
    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 179
    return-void
    .line 182
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "NotificationLockscreenUserManager state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mCurrentUserId="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 14
    const-string p2, "  mShowLockscreenNotifications="

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    const-string p2, "  mAllowLockscreenRemoteInput="

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 34
    const-string p2, "  mCurrentProfiles="

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter p2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 47
    move-result v0

    .line 50
    add-int/lit8 v0, v0, -0x1

    .line 51
    :goto_0
    if-ltz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 61
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v3, ""

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " "

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 90
    goto :goto_0

    .line 92
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 94
    const-string p2, "  mCurrentManagedProfiles="

    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    .line 102
    monitor-enter v0

    .line 104
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    .line 105
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 107
    move-result p2

    .line 110
    add-int/lit8 p2, p2, -0x1

    .line 111
    :goto_1
    if-ltz p2, :cond_1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v2, ""

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    .line 125
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 130
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 131
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v2, " "

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    add-int/lit8 p2, p2, -0x1

    .line 150
    goto :goto_1

    .line 152
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 154
    const-string p2, "  mLockscreenPublicMode="

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 164
    const-string p2, "  mUsersWithSeparateWorkChallenge="

    .line 167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    .line 172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 174
    const-string p2, "  mUsersAllowingPrivateNotifications="

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 184
    const-string p2, "  mUsersAllowingNotifications="

    .line 187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 194
    const-string p2, "  mUsersInLockdownLatestResult="

    .line 197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersInLockdownLatestResult:Landroid/util/SparseBooleanArray;

    .line 202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 204
    const-string p2, "  mShouldHideNotifsLatestResult="

    .line 207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShouldHideNotifsLatestResult:Landroid/util/SparseBooleanArray;

    .line 212
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    return-void

    .line 217
    :catchall_0
    move-exception p0

    .line 218
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    throw p0

    .line 220
    :catchall_1
    move-exception p0

    .line 221
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    throw p0
    .line 223
.end method

.method public final isAnyProfilePublicMode()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 21
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 23
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    monitor-exit v0

    .line 31
    return v2

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
    .line 41
.end method

.method public final isCurrentProfile(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
    .line 25
.end method

.method public final isLockscreenPublicMode(I)Z
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 8
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    xor-int/2addr v1, v2

    .line 15
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 18
    move-result v3

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    .line 22
    move-result v0

    .line 25
    xor-int/2addr v0, v2

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_0

    .line 28
    if-nez v1, :cond_1

    .line 30
    :cond_0
    if-eqz v0, :cond_2

    .line 32
    :cond_1
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v0, v4

    .line 36
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 37
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    move-result-object v1

    .line 42
    iget v1, v1, Landroid/app/Notification;->visibility:I

    .line 43
    if-nez v1, :cond_3

    .line 45
    move v1, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v1, v4

    .line 49
    :goto_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 50
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    .line 56
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    new-instance p0, Ljava/lang/Throwable;

    .line 64
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 66
    const-string p1, "LockscreenUserManager"

    .line 69
    const-string v3, "mEntryManager was null!"

    .line 71
    invoke-static {p1, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    goto :goto_2

    .line 76
    :cond_4
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 80
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 81
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 85
    move-result-object p0

    .line 88
    if-eqz p0, :cond_5

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 91
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getLockscreenVisibilityOverride()I

    .line 93
    move-result p0

    .line 96
    if-nez p0, :cond_5

    .line 97
    :goto_2
    move p0, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move p0, v4

    .line 101
    :goto_3
    const-class p1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 102
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 107
    check-cast p1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 108
    check-cast p1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 110
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isShowMessageWhenFaceUnlockSuccess()Z

    .line 112
    move-result p1

    .line 115
    if-eqz p1, :cond_6

    .line 116
    return v2

    .line 118
    :cond_6
    if-nez p0, :cond_8

    .line 119
    if-eqz v1, :cond_7

    .line 121
    if-eqz v0, :cond_7

    .line 123
    goto :goto_4

    .line 125
    :cond_7
    move v2, v4

    .line 126
    :cond_8
    :goto_4
    return v2
    .line 127
.end method

.method public final notifyNotificationStateChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->dirtyListeners:Lcom/android/systemui/util/ListenerSet;

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Runnable;

    .line 38
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    return-void
    .line 44
.end method

.method public final onStateChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    .line 4
    return-void
    .line 7
.end method

.method public setLockscreenPublicMode(ZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 2
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateCurrentProfilesCache()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 41
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 43
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    const-string v3, "android.os.usertype.profile.MANAGED"

    .line 48
    iget-object v4, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    .line 58
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 60
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 67
    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;

    .line 69
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
    .line 80
.end method

.method public final updateLockscreenNotificationSetting()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 4
    const/4 v2, 0x1

    .line 6
    const-string v3, "lock_screen_show_notifications"

    .line 7
    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 20
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 22
    invoke-virtual {v5, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 24
    move-result v3

    .line 27
    and-int/lit8 v3, v3, 0x4

    .line 28
    if-nez v3, :cond_1

    .line 30
    move v3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v3, v1

    .line 34
    :goto_1
    if-eqz v0, :cond_2

    .line 35
    if-eqz v3, :cond_2

    .line 37
    goto :goto_2

    .line 39
    :cond_2
    move v2, v1

    .line 40
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    .line 43
    return-void
    .line 45
.end method

.method public final updatePublicMode()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    move-object v0, v1

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v3

    .line 20
    :goto_1
    if-eqz v0, :cond_2

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 23
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 25
    if-eqz v1, :cond_2

    .line 27
    move v1, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v1, v2

    .line 31
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 32
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    .line 34
    move-result-object v5

    .line 37
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    .line 38
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    .line 40
    move-result-object v7

    .line 43
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 44
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 49
    move-result v9

    .line 52
    sub-int/2addr v9, v3

    .line 53
    :goto_3
    if-ltz v9, :cond_6

    .line 54
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    move-result-object v10

    .line 59
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 60
    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 62
    new-instance v11, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda0;

    .line 64
    invoke-direct {v11, p0, v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    .line 66
    invoke-static {v11}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 69
    move-result-object v11

    .line 72
    check-cast v11, Ljava/lang/Boolean;

    .line 73
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    move-result v11

    .line 78
    if-nez v1, :cond_5

    .line 79
    iget v12, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 81
    if-eq v10, v12, :cond_5

    .line 83
    if-eqz v11, :cond_5

    .line 85
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    invoke-virtual {v12, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 89
    move-result v12

    .line 92
    if-eqz v12, :cond_5

    .line 93
    if-nez v0, :cond_4

    .line 95
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 97
    invoke-virtual {v12, v10}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 99
    move-result v12

    .line 102
    if-eqz v12, :cond_3

    .line 103
    goto :goto_4

    .line 105
    :cond_3
    move v12, v2

    .line 106
    goto :goto_5

    .line 107
    :cond_4
    :goto_4
    move v12, v3

    .line 108
    goto :goto_5

    .line 109
    :cond_5
    move v12, v1

    .line 110
    :goto_5
    invoke-virtual {p0, v12, v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setLockscreenPublicMode(ZI)V

    .line 111
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 114
    add-int/lit8 v9, v9, -0x1

    .line 117
    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v0

    .line 123
    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->notifyNotificationStateChanged()V

    .line 132
    :cond_8
    return-void
    .line 135
.end method

.method public final userAllowsPrivateNotificationsInPublic(I)Z
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    return v1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 7
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 9
    move-result v3

    .line 12
    if-gez v3, :cond_5

    .line 13
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 15
    const-string v4, "lock_screen_allow_private_notifications"

    .line 17
    const/4 v5, 0x0

    .line 19
    invoke-interface {v3, v5, p1, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 20
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    move v3, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v3, v5

    .line 28
    :goto_0
    if-ne p1, v0, :cond_2

    .line 29
    goto :goto_1

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 32
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 35
    move-result p0

    .line 38
    and-int/lit8 p0, p0, 0x8

    .line 39
    if-nez p0, :cond_3

    .line 41
    :goto_1
    move p0, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move p0, v5

    .line 45
    :goto_2
    if-eqz v3, :cond_4

    .line 46
    if-eqz p0, :cond_4

    .line 48
    goto :goto_3

    .line 50
    :cond_4
    move v1, v5

    .line 51
    :goto_3
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 52
    return v1

    .line 55
    :cond_5
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 56
    move-result p0

    .line 59
    return p0
    .line 60
.end method
