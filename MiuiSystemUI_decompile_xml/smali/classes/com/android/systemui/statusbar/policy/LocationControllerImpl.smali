.class public final Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# instance fields
.field public final mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public mAreActiveLocationRequests:Z

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

.field public final mContentObserver:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public final mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mShouldDisplayAllAccesses:Z

.field public mShowSystemAccessesFlag:Z

.field public mShowSystemAccessesSetting:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/DeviceConfigProxy;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/BootCompleteCache;Lcom/android/systemui/settings/UserTracker;Landroid/content/pm/PackageManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 9
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    .line 11
    new-instance p1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 13
    invoke-direct {p1, p0, p4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/os/Looper;)V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 18
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    iput-object p10, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 22
    iput-object p11, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 24
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mBackgroundHandler:Landroid/os/Handler;

    .line 26
    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string p4, "location_indicators_small_enabled"

    .line 33
    const-string p7, "privacy"

    .line 35
    const/4 p8, 0x0

    .line 37
    invoke-static {p7, p4, p8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    move-result p4

    .line 41
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShouldDisplayAllAccesses:Z

    .line 42
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const-string p3, "location_indicators_show_system"

    .line 47
    invoke-static {p7, p3, p8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    move-result p3

    .line 52
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesFlag:Z

    .line 53
    const/4 p3, -0x2

    .line 55
    const-string p4, "locationShowSystemOps"

    .line 56
    invoke-interface {p11, p8, p3, p4}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 58
    move-result p3

    .line 61
    const/4 p9, 0x1

    .line 62
    if-ne p3, p9, :cond_0

    .line 63
    move p3, p9

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move p3, p8

    .line 67
    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesSetting:Z

    .line 68
    new-instance p3, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

    .line 70
    invoke-direct {p3, p0, p5}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/os/Handler;)V

    .line 72
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContentObserver:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

    .line 75
    const/4 p10, -0x1

    .line 77
    invoke-interface {p11, p4, p3, p10}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 78
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance p3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    .line 84
    invoke-direct {p3, p5}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 86
    new-instance p4, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda0;

    .line 89
    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    .line 91
    invoke-static {p7, p3, p4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 94
    new-instance p3, Landroid/content/IntentFilter;

    .line 97
    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    const-string p4, "android.location.MODE_CHANGED"

    .line 102
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 107
    invoke-virtual {p6, p0, p3, p1, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 109
    const/16 p1, 0x2a

    .line 112
    filled-new-array {p8, p9, p1}, [I

    .line 114
    move-result-object p1

    .line 117
    check-cast p2, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 118
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 120
    new-instance p1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;

    .line 123
    invoke-direct {p1, p0, p8}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;I)V

    .line 125
    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
    .line 131
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 4
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 14
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    return-void
    .line 20
.end method

.method public areActiveHighPowerLocationRequests()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 2
    check-cast p0, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getActiveAppOps(Z)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 16
    move v2, v0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 18
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/systemui/appops/AppOpItem;

    .line 24
    iget v3, v3, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 26
    const/16 v4, 0x2a

    .line 28
    if-ne v3, v4, :cond_0

    .line 30
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return v0
    .line 37
.end method

.method public areActiveLocationRequests()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShouldDisplayAllAccesses:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 9
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesFlag:Z

    .line 11
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v2, :cond_2

    .line 15
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesSetting:Z

    .line 17
    if-eqz v2, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    move v2, v4

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    move v2, v3

    .line 24
    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 25
    check-cast v5, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 27
    invoke-virtual {v5, v4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getActiveAppOps(Z)Ljava/util/List;

    .line 29
    move-result-object v5

    .line 32
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 33
    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 35
    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 37
    move-result-object v6

    .line 40
    check-cast v5, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v7

    .line 46
    move v8, v4

    .line 47
    move v9, v8

    .line 48
    move v10, v9

    .line 49
    move v11, v10

    .line 50
    :goto_2
    if-ge v8, v7, :cond_d

    .line 51
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v12

    .line 56
    check-cast v12, Lcom/android/systemui/appops/AppOpItem;

    .line 57
    iget v12, v12, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 59
    if-eq v12, v3, :cond_3

    .line 61
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v12

    .line 66
    check-cast v12, Lcom/android/systemui/appops/AppOpItem;

    .line 67
    iget v12, v12, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 69
    if-nez v12, :cond_c

    .line 71
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v12

    .line 76
    check-cast v12, Lcom/android/systemui/appops/AppOpItem;

    .line 77
    iget v13, v12, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 79
    invoke-static {v13}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 81
    move-result-object v13

    .line 84
    iget v14, v12, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 85
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 87
    move-result-object v15

    .line 90
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 91
    move-result v3

    .line 94
    move/from16 v16, v4

    .line 95
    :goto_3
    if-ge v4, v3, :cond_5

    .line 97
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v17

    .line 102
    check-cast v17, Landroid/content/pm/UserInfo;

    .line 103
    move/from16 v18, v3

    .line 105
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 107
    move-result-object v3

    .line 110
    invoke-virtual {v3, v15}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v3

    .line 114
    if-eqz v3, :cond_4

    .line 115
    const/16 v16, 0x1

    .line 117
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 119
    move/from16 v3, v18

    .line 121
    goto :goto_3

    .line 123
    :cond_5
    if-nez v16, :cond_6

    .line 124
    goto :goto_4

    .line 126
    :cond_6
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 127
    iget-object v4, v12, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 129
    invoke-virtual {v3, v13, v4, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 131
    move-result v3

    .line 134
    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 135
    const/4 v15, -0x1

    .line 137
    invoke-static {v12, v13, v15, v14, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 138
    move-result v4

    .line 141
    if-nez v4, :cond_8

    .line 142
    and-int/lit16 v3, v3, 0x100

    .line 144
    if-nez v3, :cond_7

    .line 146
    :goto_4
    const/4 v3, 0x1

    .line 148
    goto :goto_5

    .line 149
    :cond_7
    const/4 v3, 0x0

    .line 150
    goto :goto_5

    .line 151
    :cond_8
    and-int/lit16 v3, v3, 0x200

    .line 152
    if-nez v3, :cond_7

    .line 154
    goto :goto_4

    .line 156
    :goto_5
    if-eqz v3, :cond_9

    .line 157
    const/4 v10, 0x1

    .line 159
    goto :goto_6

    .line 160
    :cond_9
    const/4 v11, 0x1

    .line 161
    :goto_6
    if-nez v2, :cond_b

    .line 162
    if-nez v9, :cond_b

    .line 164
    if-nez v3, :cond_a

    .line 166
    goto :goto_7

    .line 168
    :cond_a
    const/4 v9, 0x0

    .line 169
    goto :goto_8

    .line 170
    :cond_b
    :goto_7
    const/4 v9, 0x1

    .line 171
    :cond_c
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 172
    const/4 v3, 0x1

    .line 174
    const/4 v4, 0x0

    .line 175
    goto :goto_2

    .line 176
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    .line 177
    move-result v2

    .line 180
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 181
    if-eq v9, v1, :cond_e

    .line 183
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 185
    const/4 v4, 0x2

    .line 187
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    :cond_e
    if-nez v1, :cond_12

    .line 191
    if-nez v2, :cond_f

    .line 193
    if-nez v10, :cond_f

    .line 195
    if-eqz v11, :cond_12

    .line 197
    :cond_f
    if-eqz v2, :cond_10

    .line 199
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 201
    sget-object v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_MONITOR_HIGH_POWER:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    .line 203
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 205
    :cond_10
    if-eqz v10, :cond_11

    .line 208
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 210
    sget-object v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    .line 212
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 214
    :cond_11
    if-eqz v11, :cond_12

    .line 217
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 219
    sget-object v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_NON_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    .line 221
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 223
    :cond_12
    return-void
    .line 226
.end method

.method public final isLocationEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 2
    const-string v1, "location"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/location/LocationManager;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    .line 12
    check-cast v1, Lcom/android/systemui/BootCompleteCacheImpl;

    .line 14
    invoke-virtual {v1}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 22
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
    .line 39
.end method

.method public final onActiveStateChanged(Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    .line 2
    return-void
    .line 5
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.location.MODE_CHANGED"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 14
    sget p1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->$r8$clinit:I

    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    .line 20
    move-result p1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 24
    new-instance p2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 28
    invoke-static {p0, p2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 4
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final setLocationEnabled(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 10
    const-string/jumbo v2, "user"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/os/UserManager;

    .line 19
    const-string v2, "no_share_location"

    .line 21
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v1

    .line 40
    const-string v2, "location_changer"

    .line 41
    const/4 v3, 0x2

    .line 43
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 44
    const-class v1, Landroid/location/LocationManager;

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    check-cast p0, Landroid/location/LocationManager;

    .line 53
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 59
    const/4 p0, 0x1

    .line 62
    return p0
.end method

.method public final updateActiveLocationRequests()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShouldDisplayAllAccesses:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mBackgroundHandler:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    .line 20
    move-result v1

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 24
    if-eq v1, v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 28
    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 38
    sget-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_MONITOR_HIGH_POWER:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    .line 40
    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 42
    :cond_1
    :goto_0
    return-void
    .line 45
.end method
