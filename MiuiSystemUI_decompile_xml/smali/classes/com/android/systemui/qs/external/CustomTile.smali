.class public final Lcom/android/systemui/qs/external/CustomTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;


# static fields
.field public static sCustomTileRef:Ljava/lang/ref/WeakReference;


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

.field public mDefaultIcon:Landroid/graphics/drawable/Icon;

.field public mDefaultLabel:Ljava/lang/CharSequence;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsShowingDialog:Z

.field public mIsTokenGranted:Z

.field public final mKey:Lcom/android/systemui/qs/external/TileServiceKey;

.field public mListening:Z

.field public final mMiTileOptimizer:Lcom/android/systemui/qs/MiTileOptimizer;

.field public final mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

.field public final mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

.field public final mTile:Landroid/service/quicksettings/Tile;

.field public final mTileServices:Lcom/android/systemui/qs/external/TileServices;

.field public final mToken:Landroid/os/IBinder;

.field public final mUser:I

.field public final mUserContext:Landroid/content/Context;

.field public mViewClicked:Landroid/view/View;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/qs/external/TileServices;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p13

    .line 3
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 5
    new-instance v2, Landroid/os/Binder;

    .line 8
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 10
    iput-object v2, v0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    iput-object v2, v0, Lcom/android/systemui/qs/external/CustomTile;->mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    .line 23
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 25
    move-result-object v2

    .line 28
    iput-object v2, v0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 29
    invoke-static/range {p10 .. p10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 31
    move-result-object v2

    .line 34
    iput-object v2, v0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 35
    new-instance v3, Landroid/service/quicksettings/Tile;

    .line 37
    invoke-direct {v3}, Landroid/service/quicksettings/Tile;-><init>()V

    .line 39
    iput-object v3, v0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 42
    move-object/from16 v3, p11

    .line 44
    iput-object v3, v0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    .line 46
    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getUserId()I

    .line 48
    move-result v3

    .line 51
    iput v3, v0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    .line 52
    new-instance v4, Lcom/android/systemui/qs/external/TileServiceKey;

    .line 54
    invoke-direct {v4, v3, v2}, Lcom/android/systemui/qs/external/TileServiceKey;-><init>(ILandroid/content/ComponentName;)V

    .line 56
    iput-object v4, v0, Lcom/android/systemui/qs/external/CustomTile;->mKey:Lcom/android/systemui/qs/external/TileServiceKey;

    .line 59
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iget-object v4, v1, Lcom/android/systemui/qs/external/TileServices;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 64
    new-instance v5, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 66
    iget-object v6, v1, Lcom/android/systemui/qs/external/TileServices;->mHandlerProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 70
    move-result-object v6

    .line 73
    check-cast v6, Landroid/os/Handler;

    .line 74
    iget-object v7, v1, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 76
    iget-object v8, v1, Lcom/android/systemui/qs/external/TileServices;->mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    .line 78
    iget-object v9, v1, Lcom/android/systemui/qs/external/TileServices;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 80
    new-instance v10, Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 82
    iget-object v11, v1, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 84
    new-instance v12, Lcom/android/systemui/qs/external/PackageManagerAdapter;

    .line 86
    invoke-direct {v12, v11}, Lcom/android/systemui/qs/external/PackageManagerAdapter;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v13, Landroid/content/Intent;

    .line 91
    const-string v14, "android.service.quicksettings.action.QS_TILE"

    .line 93
    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 98
    move-result-object v13

    .line 101
    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 102
    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 104
    move-result-object v14

    .line 107
    move-object/from16 p1, v10

    .line 108
    move-object/from16 p2, v6

    .line 110
    move-object/from16 p3, v11

    .line 112
    move-object/from16 p4, p13

    .line 114
    move-object/from16 p5, v12

    .line 116
    move-object/from16 p6, v4

    .line 118
    move-object/from16 p7, v13

    .line 120
    move-object/from16 p8, v14

    .line 122
    move-object/from16 p9, v9

    .line 124
    invoke-direct/range {p1 .. p9}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Lcom/android/systemui/qs/external/PackageManagerAdapter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 126
    move-object/from16 p1, v5

    .line 129
    move-object/from16 p2, p13

    .line 131
    move-object/from16 p3, v6

    .line 133
    move-object/from16 p4, v7

    .line 135
    move-object/from16 p5, v8

    .line 137
    move-object/from16 p6, v10

    .line 139
    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    .line 141
    iget-object v4, v1, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 144
    monitor-enter v4

    .line 146
    :try_start_0
    iget-object v6, v1, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 147
    invoke-virtual {v6, p0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v6, v1, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    .line 152
    invoke-virtual {v6, v3, v2, p0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    .line 157
    iget-object v3, v5, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 159
    iget-object v3, v3, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    .line 161
    invoke-virtual {v1, v3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    const/4 v1, 0x1

    .line 167
    iput-boolean v1, v5, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    .line 168
    iget-object v1, v5, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 170
    iget-object v3, v1, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 172
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 174
    move-result-object v3

    .line 177
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 178
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 180
    move-result v1

    .line 183
    new-instance v4, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;

    .line 184
    invoke-direct {v4, v5, v3, v1}, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;Landroid/content/ComponentName;I)V

    .line 186
    iget-object v1, v5, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    .line 189
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    iput-object v5, v0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 194
    iget-object v1, v5, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 196
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 198
    move-object/from16 v1, p12

    .line 200
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    .line 202
    move-object/from16 v1, p14

    .line 204
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 206
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 208
    const/16 v3, 0xc

    .line 210
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    const-class v1, Lcom/miui/systemui/SettingsManager;

    .line 215
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    move-result-object v1

    .line 220
    check-cast v1, Lcom/miui/systemui/SettingsManager;

    .line 221
    iget-boolean v1, v1, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 223
    if-nez v1, :cond_0

    .line 225
    const-string v1, "android.systemui.cts"

    .line 227
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 229
    move-result-object v3

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    move-result v1

    .line 236
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 242
    const-string v2, "TestTileService"

    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 245
    move-result v1

    .line 248
    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 251
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 253
    sput-object v1, Lcom/android/systemui/qs/external/CustomTile;->sCustomTileRef:Ljava/lang/ref/WeakReference;

    .line 256
    :cond_0
    sget-object v1, Lcom/android/systemui/qs/MiTileOptimizer;->mInstance:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 258
    if-nez v1, :cond_2

    .line 260
    const-class v1, Lcom/android/systemui/qs/MiTileOptimizer;

    .line 262
    monitor-enter v1

    .line 264
    :try_start_1
    sget-object v2, Lcom/android/systemui/qs/MiTileOptimizer;->mInstance:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 265
    if-nez v2, :cond_1

    .line 267
    new-instance v2, Lcom/android/systemui/qs/MiTileOptimizer;

    .line 269
    invoke-direct {v2}, Lcom/android/systemui/qs/MiTileOptimizer;-><init>()V

    .line 271
    sput-object v2, Lcom/android/systemui/qs/MiTileOptimizer;->mInstance:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 274
    :cond_1
    monitor-exit v1

    .line 276
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    throw v0

    .line 280
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/systemui/qs/MiTileOptimizer;->mInstance:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 281
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mMiTileOptimizer:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 283
    return-void

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    throw v0
    .line 288
.end method

.method public static getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    const/4 v1, 0x7

    .line 8
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "Empty custom tile spec action"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
    .line 31
.end method

.method public static isServiceRestricted(Landroid/content/pm/ServiceInfo;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    const-string v1, "com.android.device.restriction"

    .line 8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    return v0

    .line 20
    :cond_1
    const-string v1, ";"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    array-length v1, p0

    .line 27
    move v2, v0

    .line 28
    :goto_0
    const/4 v3, 0x1

    .line 29
    if-ge v2, v1, :cond_3

    .line 30
    aget-object v4, p0, v2

    .line 32
    if-eqz v4, :cond_2

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 39
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    move v0, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    :goto_1
    xor-int/lit8 p0, v0, 0x1

    .line 53
    return p0
    .line 55
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "custom("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, ")"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method


# virtual methods
.method public final applyTileState(Landroid/service/quicksettings/Tile;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    if-eqz p2, :cond_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 10
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    if-eqz p2, :cond_3

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 27
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 33
    :cond_3
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    .line 36
    move-result-object v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    if-eqz p2, :cond_5

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 44
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    .line 46
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 50
    :cond_5
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    .line 53
    move-result-object v0

    .line 56
    if-nez v0, :cond_6

    .line 57
    if-eqz p2, :cond_7

    .line 59
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 61
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    .line 63
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    :cond_7
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    .line 70
    move-result-object v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    if-eqz p2, :cond_9

    .line 76
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 78
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {p2, v0}, Landroid/service/quicksettings/Tile;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 84
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 87
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getActivityLaunchForClick()Landroid/app/PendingIntent;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Landroid/service/quicksettings/Tile;->setActivityLaunchForClick(Landroid/app/PendingIntent;)V

    .line 93
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 96
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    .line 98
    move-result v0

    .line 101
    invoke-virtual {p2, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 102
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    .line 105
    move-result p1

    .line 108
    const/4 p2, 0x2

    .line 109
    if-ne p1, p2, :cond_c

    .line 110
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mMiTileOptimizer:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 114
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    const-string p1, "Add packagename to WhiteList"

    .line 123
    sget-boolean p2, Lcom/android/systemui/qs/MiTileOptimizer;->ENABLE_PROP:Z

    .line 125
    if-eqz p2, :cond_c

    .line 127
    if-nez p0, :cond_a

    .line 129
    goto :goto_0

    .line 131
    :cond_a
    sget-object p2, Lcom/android/systemui/qs/MiTileOptimizer;->sBindServiceProcessWhiteList:Ljava/util/ArrayList;

    .line 132
    monitor-enter p2

    .line 134
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 135
    move-result v0

    .line 138
    if-nez v0, :cond_b

    .line 139
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-boolean v0, Lcom/android/systemui/qs/MiTileOptimizer;->DEBUG:Z

    .line 144
    if-eqz v0, :cond_b

    .line 146
    const-string v0, "MiTileOptimizer"

    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 153
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_b
    monitor-exit p2

    .line 157
    goto :goto_0

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    throw p0

    .line 161
    :cond_c
    :goto_0
    return-void
    .line 162
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 9
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    iget v5, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    .line 25
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 27
    move-result-object v0

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    new-instance v4, Landroid/content/Intent;

    .line 34
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 39
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 41
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 43
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v0, v3

    .line 50
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    const-string v1, "android.intent.extra.COMPONENT_NAME"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 58
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getState()I

    .line 60
    move-result p0

    .line 63
    const-string/jumbo v1, "state"

    .line 64
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    return-object v0

    .line 70
    :cond_1
    new-instance p0, Landroid/content/Intent;

    .line 71
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 73
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v0, "package"

    .line 78
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 83
    invoke-static {v0, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    move-result-object p0

    .line 91
    return-object p0
    .line 92
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x10c

    .line 2
    return p0
    .line 4
.end method

.method public final getMetricsSpec()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getStaleTimeout()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 4
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 9
    int-to-long v0, p0

    .line 10
    const-wide/32 v2, 0xea60

    .line 11
    mul-long/2addr v0, v2

    .line 14
    const-wide/32 v2, 0x36ee80

    .line 15
    add-long/2addr v0, v2

    .line 18
    return-wide v0
    .line 19
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 4
    return-object p0
    .line 6
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 6
    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->getState()I

    .line 8
    move-result v3

    .line 11
    const-string v4, "handleClick: "

    .line 12
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 14
    if-nez v3, :cond_0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, " is unavailable"

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 40
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v4, ", pendingBind: "

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 56
    iget-boolean v6, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 58
    invoke-static {v3, v6, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mViewClicked:Landroid/view/View;

    .line 63
    const/4 p1, 0x0

    .line 65
    const/4 v3, 0x1

    .line 66
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 67
    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 69
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    const/4 v7, 0x0

    .line 74
    const/16 v8, 0x7f3

    .line 75
    invoke-interface {v6, v0, v8, p1, v7}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 77
    iput-boolean v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    move-result-object v6

    .line 87
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 91
    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 92
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 96
    move-result v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 99
    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 100
    if-nez v6, :cond_2

    .line 102
    :try_start_2
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    .line 104
    move-result v6

    .line 107
    if-nez v6, :cond_1

    .line 108
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mMiTileOptimizer:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 110
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 112
    move-result-object v8

    .line 115
    iget-object v9, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    .line 116
    iget-object v9, v9, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-static {v9, v8}, Lcom/android/systemui/qs/MiTileOptimizer;->tileNeedOpt(Landroid/content/Context;Ljava/lang/String;)Z

    .line 123
    move-result v6

    .line 126
    if-eqz v6, :cond_2

    .line 127
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 129
    invoke-virtual {v7}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 132
    :cond_2
    if-eqz v1, :cond_3

    .line 135
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 137
    const-string/jumbo v6, "security"

    .line 139
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    move-result-object v6

    .line 149
    const-string v8, "exemptTemporarily"

    .line 150
    new-array v9, v3, [Ljava/lang/Class;

    .line 152
    const-class v10, Ljava/lang/String;

    .line 154
    aput-object v10, v9, p1

    .line 156
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    move-result-object v6

    .line 161
    new-array v3, v3, [Ljava/lang/Object;

    .line 162
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 164
    move-result-object v8

    .line 167
    aput-object v8, v3, p1

    .line 168
    invoke-virtual {v6, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 170
    goto :goto_0

    .line 173
    :catch_1
    move-exception p1

    .line 174
    :try_start_4
    const-string v3, "reflect exempt background start exception!"

    .line 175
    invoke-static {v5, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->getActivityLaunchForClick()Landroid/app/PendingIntent;

    .line 180
    move-result-object p1

    .line 183
    if-eqz p1, :cond_4

    .line 184
    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->getActivityLaunchForClick()Landroid/app/PendingIntent;

    .line 186
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/CustomTile;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    .line 190
    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {v7, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onClick(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 194
    goto :goto_1

    .line 197
    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 198
    const-string p1, " NameNotFoundException: "

    .line 200
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 211
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :catch_3
    :goto_1
    return-void
    .line 215
.end method

.method public final handleDestroy()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 12
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-interface {v0, v2, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    .line 22
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 24
    iget-object v3, v0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 26
    monitor-enter v3

    .line 28
    :try_start_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 29
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 32
    iget-object v4, v2, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 35
    iget-object v5, v4, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    move-result v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    iget-object v5, v4, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUserReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 47
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    .line 53
    :cond_2
    const/4 v5, 0x0

    .line 56
    iput-object v5, v4, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .line 57
    iget-object v4, v0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 59
    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, v0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    .line 64
    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 66
    iget-object v2, v2, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    .line 68
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v2, v0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    .line 73
    iget v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    .line 75
    iget-object v5, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 77
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 82
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    iget-object v2, v0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    .line 88
    new-instance v4, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;

    .line 90
    invoke-direct {v4, v0, p0, v1}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V

    .line 92
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    monitor-exit v3

    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0
    .line 102
.end method

.method public final handleInitialize()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 15
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "No default icon for "

    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 26
    const-string v3, ", destroying tile"

    .line 28
    invoke-static {v0, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 34
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 41
    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->removeTile(Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->isToggleableTile()Z

    .line 48
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 54
    move-result-object v2

    .line 57
    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 60
    move-result-object v2

    .line 63
    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 64
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 66
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 68
    iput-object v4, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 70
    iput-object v4, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 72
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 74
    iput-object p0, v2, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    .line 78
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    .line 84
    iget-object v2, v2, Lcom/android/systemui/qs/external/CustomTileStatePersister;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 86
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mKey:Lcom/android/systemui/qs/external/TileServiceKey;

    .line 88
    iget-object v3, v3, Lcom/android/systemui/qs/external/TileServiceKey;->string:Ljava/lang/String;

    .line 90
    const/4 v4, 0x0

    .line 92
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;->readTileFromString(Ljava/lang/String;)Landroid/service/quicksettings/Tile;

    .line 100
    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception v3

    .line 105
    const-string v5, "Bad saved state: "

    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 111
    const-string v5, "TileServicePersistence"

    .line 112
    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_0
    move-object v2, v4

    .line 117
    :goto_1
    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/external/CustomTile;->applyTileState(Landroid/service/quicksettings/Tile;Z)V

    .line 120
    iput-boolean v1, v0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 123
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 125
    :cond_3
    return-void
    .line 128
.end method

.method public final handleSetListening(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    .line 10
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 15
    const/4 v3, 0x0

    .line 17
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 18
    if-eqz p1, :cond_2

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 22
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 37
    invoke-virtual {p1, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 42
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isTileReady()Z

    .line 48
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    .line 54
    move-result p1

    .line 57
    if-nez p1, :cond_4

    .line 58
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mMiTileOptimizer:Lcom/android/systemui/qs/MiTileOptimizer;

    .line 60
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    .line 66
    iget-object v3, v3, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {v3, v0}, Lcom/android/systemui/qs/MiTileOptimizer;->tileNeedOpt(Landroid/content/Context;Ljava/lang/String;)Z

    .line 73
    move-result p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    :cond_1
    const/4 p1, 0x1

    .line 79
    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 80
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    iput-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mViewClicked:Landroid/view/View;

    .line 87
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 89
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    .line 92
    if-eqz p1, :cond_3

    .line 94
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    if-nez p1, :cond_3

    .line 98
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 100
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 102
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-interface {p1, v2, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    .line 112
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 114
    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    goto :goto_0

    .line 119
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    const-string v0, " NameNotFoundException: "

    .line 122
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 133
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :catch_2
    :cond_4
    :goto_0
    return-void
    .line 139
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 4
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 15
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 27
    const-string v3, "Invalid icon, forcing into unavailable state"

    .line 29
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 36
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p0

    .line 41
    :goto_0
    new-instance p2, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;

    .line 42
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    .line 47
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    .line 49
    move-result-object p0

    .line 52
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    .line 55
    move-result-object p0

    .line 58
    const/4 p2, 0x0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 62
    move-result v2

    .line 65
    if-lez v2, :cond_0

    .line 66
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 68
    goto :goto_1

    .line 70
    :cond_0
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 71
    :goto_1
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    .line 73
    move-result-object p0

    .line 76
    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    .line 79
    move-result-object p0

    .line 82
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 83
    goto :goto_2

    .line 85
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 86
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 88
    :goto_2
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    .line 90
    move-result-object p0

    .line 93
    if-eqz p0, :cond_2

    .line 94
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    .line 96
    move-result-object p0

    .line 99
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 100
    goto :goto_3

    .line 102
    :cond_2
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 103
    :goto_3
    instance-of p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 105
    if-eqz p0, :cond_4

    .line 107
    const-class p0, Landroid/widget/Switch;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 114
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 115
    move-object p0, p1

    .line 117
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 118
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 120
    const/4 p2, 0x2

    .line 122
    if-ne p1, p2, :cond_3

    .line 123
    const/4 v1, 0x1

    .line 125
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 126
    :cond_4
    return-void
    .line 128
.end method

.method public final isAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :cond_1
    :goto_0
    return v1
    .line 17
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isToggleableTile()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 12
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 14
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 18
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 20
    return-object p0
    .line 23
.end method

.method public final populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 2
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 6
    invoke-virtual {p1, p0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final startActivityAndCollapse(Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, "Intent not for activity."

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto :goto_1

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    .line 16
    if-nez v0, :cond_1

    .line 18
    const-string p0, "Launching activity before click"

    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    goto :goto_1

    .line 25
    :cond_1
    const-string v0, "The activity is starting"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mViewClicked:Landroid/view/View;

    .line 31
    if-nez v0, :cond_2

    .line 33
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 42
    move-result-object v0

    .line 45
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/app/PendingIntent;Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    :goto_1
    return-void
    .line 56
.end method

.method public final updateDefaultTileAndIcon()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 10
    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getHostExt()Lcom/android/systemui/qs/QSTileHostExt;

    .line 12
    move-result-object v4

    .line 15
    iget-object v4, v4, Lcom/android/systemui/qs/QSTileHostExt;->tileServices:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v4

    .line 21
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v5

    .line 25
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 26
    const/4 v7, 0x0

    .line 28
    if-eqz v5, :cond_1

    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 34
    check-cast v5, Landroid/content/pm/ServiceInfo;

    .line 35
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 37
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v9

    .line 42
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    move-result v8

    .line 46
    if-eqz v8, :cond_0

    .line 47
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 49
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 51
    move-result-object v9

    .line 54
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    move-result v8

    .line 58
    if-eqz v8, :cond_0

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    move-object v5, v7

    .line 62
    :goto_0
    const/4 v4, 0x0

    .line 63
    if-nez v5, :cond_3

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    move-result-object v1

    .line 69
    :try_start_0
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 73
    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 74
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 78
    move-result v5

    .line 81
    if-eqz v5, :cond_2

    .line 82
    const v5, 0xc0200

    .line 84
    goto :goto_1

    .line 87
    :cond_2
    const/high16 v5, 0xc0000

    .line 88
    :goto_1
    or-int/lit16 v5, v5, 0x80

    .line 90
    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 92
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    move-object v5, v1

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    const-string v5, " NameNotFoundException: "

    .line 100
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object v5, v7

    .line 115
    :goto_2
    if-nez v5, :cond_3

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "getTileServiceInfo is null"

    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 135
    iput-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    .line 137
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 139
    invoke-interface {v3, p0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->removeTile(Ljava/lang/String;)V

    .line 141
    goto/16 :goto_9

    .line 144
    :cond_3
    iget v0, v5, Landroid/content/pm/ServiceInfo;->icon:I

    .line 146
    if-eqz v0, :cond_4

    .line 148
    goto :goto_3

    .line 150
    :cond_4
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 151
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 153
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 155
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    .line 157
    move-result-object v3

    .line 160
    const/4 v8, 0x1

    .line 161
    if-eqz v3, :cond_c

    .line 162
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    .line 164
    move-result-object v3

    .line 167
    iget-object v9, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 168
    if-ne v3, v9, :cond_5

    .line 170
    goto :goto_4

    .line 172
    :cond_5
    if-eqz v3, :cond_a

    .line 173
    if-nez v9, :cond_6

    .line 175
    goto :goto_5

    .line 177
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    .line 178
    move-result v10

    .line 181
    const/4 v11, 0x2

    .line 182
    if-ne v10, v11, :cond_a

    .line 183
    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getType()I

    .line 185
    move-result v10

    .line 188
    if-eq v10, v11, :cond_7

    .line 189
    goto :goto_5

    .line 191
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 192
    move-result v10

    .line 195
    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 196
    move-result v11

    .line 199
    if-eq v10, v11, :cond_8

    .line 200
    goto :goto_5

    .line 202
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 203
    move-result-object v3

    .line 206
    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 207
    move-result-object v9

    .line 210
    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    move-result v3

    .line 214
    if-nez v3, :cond_9

    .line 215
    goto :goto_5

    .line 217
    :cond_9
    :goto_4
    move v3, v8

    .line 218
    goto :goto_6

    .line 219
    :cond_a
    :goto_5
    move v3, v4

    .line 220
    :goto_6
    if-eqz v3, :cond_b

    .line 221
    goto :goto_7

    .line 223
    :cond_b
    move v3, v4

    .line 224
    goto :goto_8

    .line 225
    :cond_c
    :goto_7
    move v3, v8

    .line 226
    :goto_8
    if-eqz v0, :cond_d

    .line 227
    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->isServiceRestricted(Landroid/content/pm/ServiceInfo;)Z

    .line 229
    move-result v9

    .line 232
    if-nez v9, :cond_d

    .line 233
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 235
    move-result-object v6

    .line 238
    invoke-static {v6, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 239
    move-result-object v7

    .line 242
    :cond_d
    iput-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 243
    if-eqz v3, :cond_e

    .line 245
    invoke-virtual {v1, v7}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 247
    :cond_e
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    .line 250
    move-result-object v0

    .line 253
    if-eqz v0, :cond_f

    .line 254
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    .line 256
    move-result-object v0

    .line 259
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    .line 260
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 262
    move-result v0

    .line 265
    if-eqz v0, :cond_10

    .line 266
    :cond_f
    move v4, v8

    .line 268
    :cond_10
    invoke-virtual {v5, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 269
    move-result-object v0

    .line 272
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    .line 273
    if-eqz v4, :cond_11

    .line 275
    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 277
    :cond_11
    :goto_9
    return-void
    .line 280
.end method
