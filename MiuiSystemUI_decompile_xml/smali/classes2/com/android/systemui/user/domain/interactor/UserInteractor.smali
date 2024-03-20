.class public final Lcom/android/systemui/user/domain/interactor/UserInteractor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final _dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityManager:Landroid/app/ActivityManager;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final callbacks:Ljava/util/Set;

.field public final dialogDismissRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dialogShowRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

.field public final headlessSystemUserMode:Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserModeImpl;

.field public final isGuestUserAutoCreated:Z

.field public final isGuestUserResetting:Z

.field public final isStatusBarUserChipEnabled:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final manager:Landroid/os/UserManager;

.field public final refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

.field public final repository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

.field public final userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Landroid/os/UserManager;Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserModeImpl;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/app/ActivityManager;Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object/from16 v2, p8

    .line 4
    move-object/from16 v3, p15

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    move-object v4, p1

    .line 11
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 12
    iput-object v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 14
    move-object v4, p3

    .line 16
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 17
    move-object/from16 v4, p4

    .line 19
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 21
    move-object/from16 v4, p5

    .line 23
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 25
    move-object/from16 v4, p6

    .line 27
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    .line 29
    move-object/from16 v4, p7

    .line 31
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->headlessSystemUserMode:Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserModeImpl;

    .line 33
    iput-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    move-object/from16 v4, p12

    .line 37
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 39
    move-object/from16 v4, p13

    .line 41
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityManager:Landroid/app/ActivityManager;

    .line 43
    move-object/from16 v4, p14

    .line 45
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 47
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 49
    move-object/from16 v5, p16

    .line 51
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 53
    new-instance v5, Lkotlinx/coroutines/sync/MutexImpl;

    .line 55
    const/4 v6, 0x0

    .line 57
    invoke-direct {v5, v6}, Lkotlinx/coroutines/sync/MutexImpl;-><init>(Z)V

    .line 58
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 61
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 63
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 65
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->callbacks:Ljava/util/Set;

    .line 68
    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 70
    iget-object v5, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userInfos:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 72
    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 74
    invoke-direct {v7, v5}, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)V

    .line 76
    iput-object v7, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 79
    iget-object v5, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getActions()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 83
    move-result-object v8

    .line 86
    iget-object v9, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 87
    new-instance v10, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;

    .line 89
    const/4 v11, 0x0

    .line 91
    invoke-direct {v10, p0, v11}, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 92
    invoke-static {v7, v5, v8, v9, v10}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 95
    move-result-object v5

    .line 98
    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$2;

    .line 99
    invoke-direct {v7, p0, v11}, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 101
    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 104
    invoke-direct {v8, v7, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 106
    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    .line 111
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-static {v8, v2, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 116
    move-result-object v7

    .line 119
    iput-object v7, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 120
    iget-object v7, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 122
    new-instance v8, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;

    .line 124
    invoke-direct {v8, v7, p0, v6}, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserInteractor;I)V

    .line 126
    invoke-static {v8, v2, v5, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 129
    move-result-object v5

    .line 132
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 133
    iget-boolean v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    .line 135
    iput-boolean v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserAutoCreated:Z

    .line 137
    iget-boolean v3, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserResetting:Z

    .line 139
    iput-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserResetting:Z

    .line 141
    iget-boolean v3, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isStatusBarUserChipEnabled:Z

    .line 143
    iput-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isStatusBarUserChipEnabled:Z

    .line 145
    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 147
    move-result-object v3

    .line 150
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 151
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 153
    invoke-direct {v5, v3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 155
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dialogShowRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 158
    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 160
    move-result-object v3

    .line 163
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 164
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 166
    invoke-direct {v5, v3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 168
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dialogDismissRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 171
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$keyguardUpdateMonitorCallback$1;

    .line 173
    invoke-direct {v3, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 175
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 178
    invoke-virtual/range {p14 .. p14}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->refreshIfNotPaused()V

    .line 180
    move-object/from16 v4, p9

    .line 183
    iget-object v4, v4, Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;->callState:Lkotlinx/coroutines/flow/Flow;

    .line 185
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 187
    move-result-object v4

    .line 190
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$1;

    .line 191
    invoke-direct {v5, p0, v11}, Lcom/android/systemui/user/domain/interactor/UserInteractor$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 193
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 196
    invoke-direct {v6, v5, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 198
    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 201
    new-instance v4, Landroid/content/IntentFilter;

    .line 204
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    const-string v5, "android.intent.action.USER_ADDED"

    .line 209
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v5, "android.intent.action.USER_REMOVED"

    .line 214
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v5, "android.intent.action.USER_INFO_CHANGED"

    .line 219
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v5, "android.intent.action.USER_SWITCHED"

    .line 224
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v5, "android.intent.action.USER_STOPPED"

    .line 229
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v5, "android.intent.action.USER_UNLOCKED"

    .line 234
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 239
    sget-object v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$3;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserInteractor$3;

    .line 241
    const/16 v7, 0xc

    .line 243
    move-object/from16 v8, p10

    .line 245
    invoke-static {v8, v4, v5, v6, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    .line 247
    move-result-object v4

    .line 250
    iget-object v1, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 251
    invoke-static {v1, v11}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 253
    move-result-object v1

    .line 256
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$4;

    .line 257
    invoke-direct {v5, v11}, Lcom/android/systemui/user/domain/interactor/UserInteractor$4;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 259
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 262
    invoke-direct {v6, v4, v1, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 264
    new-instance v1, Lcom/android/systemui/user/domain/interactor/UserInteractor$5;

    .line 267
    invoke-direct {v1, p0, v11}, Lcom/android/systemui/user/domain/interactor/UserInteractor$5;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 269
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 272
    invoke-direct {v0, v1, v6}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 274
    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 277
    move-object/from16 v0, p11

    .line 280
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 282
    return-void
.end method

.method public static final access$onBroadcastReceived(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/Intent;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p3, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    move-object v0, p3

    .line 9
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;

    .line 10
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 12
    const/high16 v2, -0x80000000

    .line 14
    and-int v3, v1, v2

    .line 16
    if-eqz v3, :cond_0

    .line 18
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;

    .line 24
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 26
    :goto_0
    iget-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->result:Ljava/lang/Object;

    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 33
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    if-ne v2, v4, :cond_1

    .line 39
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->L$0:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 43
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    goto/16 :goto_1

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 57
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 64
    if-eqz p3, :cond_c

    .line 65
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 67
    move-result v2

    .line 70
    const v5, -0xc02da2e

    .line 71
    if-eq v2, v5, :cond_b

    .line 74
    const v5, 0x31af1c32

    .line 76
    const/16 v6, -0x2710

    .line 79
    const-string v7, "android.intent.extra.user_handle"

    .line 81
    const/4 v8, 0x0

    .line 83
    if-eq v2, v5, :cond_8

    .line 84
    const v5, 0x392cb822

    .line 86
    if-eq v2, v5, :cond_3

    .line 89
    goto/16 :goto_1

    .line 91
    :cond_3
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 93
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p3

    .line 98
    if-nez p3, :cond_4

    .line 99
    goto/16 :goto_1

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dismissDialog()V

    .line 103
    const/4 p3, -0x1

    .line 106
    invoke-virtual {p1, v7, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 107
    move-result p1

    .line 110
    if-eqz p2, :cond_5

    .line 111
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 113
    if-ne p2, p1, :cond_5

    .line 115
    move v8, v4

    .line 117
    :cond_5
    if-nez v8, :cond_7

    .line 118
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$notifyCallbacks$1;

    .line 120
    invoke-direct {p2, p0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$notifyCallbacks$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 122
    const/4 p3, 0x3

    .line 125
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 126
    invoke-static {v2, v3, v3, p2, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 128
    new-instance p2, Landroid/content/Intent;

    .line 131
    const-class p3, Lcom/android/systemui/SystemUISecondaryUserService;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 135
    invoke-direct {p2, v2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    iget-object p3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 140
    check-cast p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 142
    iget v5, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    .line 144
    if-eq v5, v6, :cond_6

    .line 146
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 148
    move-result-object v5

    .line 151
    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 152
    iput v6, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    .line 155
    :cond_6
    if-eqz p1, :cond_7

    .line 157
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 159
    move-result-object v5

    .line 162
    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 163
    iput p1, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    .line 166
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 168
    iget-boolean p2, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    .line 170
    if-eqz p2, :cond_c

    .line 172
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->L$0:Ljava/lang/Object;

    .line 174
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 176
    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->guaranteePresent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 178
    move-result-object p1

    .line 181
    if-ne p1, v1, :cond_c

    .line 182
    goto :goto_2

    .line 184
    :cond_8
    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 185
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result p2

    .line 190
    if-nez p2, :cond_9

    .line 191
    goto :goto_1

    .line 193
    :cond_9
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 194
    move-result p1

    .line 197
    if-nez p1, :cond_a

    .line 198
    goto :goto_1

    .line 200
    :cond_a
    move v4, v8

    .line 201
    goto :goto_1

    .line 202
    :cond_b
    const-string p1, "android.intent.action.USER_INFO_CHANGED"

    .line 203
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    :cond_c
    :goto_1
    if-eqz v4, :cond_d

    .line 208
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    new-instance p1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$unpauseAndRefresh$1;

    .line 215
    invoke-direct {p1, p0, v3}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$unpauseAndRefresh$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    .line 217
    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 220
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 222
    const/4 p3, 0x2

    .line 224
    invoke-static {p2, p0, v3, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 225
    :cond_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 228
    :goto_2
    return-object v1
    .line 230
.end method

.method public static final access$toRecord(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/pm/UserInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;

    iget v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->result:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v8, :cond_1

    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->I$0:I

    iget-object v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserManager;

    iget-object v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v2, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    move v3, v7

    .line 5
    :goto_1
    iput-object v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$0:Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    iput-object v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$1:Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    iput-object v9, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$2:Ljava/lang/Object;

    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->I$0:I

    iput v8, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    .line 6
    invoke-virtual {v0, v2, v4, v7}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_4

    goto :goto_9

    :cond_4
    move-object v11, v1

    move-object v2, v6

    move-object v1, v9

    move/from16 v22, v3

    move-object v3, v0

    move/from16 v0, v22

    .line 7
    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v0, :cond_5

    move v14, v8

    goto :goto_3

    :cond_5
    move v14, v7

    .line 8
    :goto_3
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    .line 9
    new-instance v5, Lcom/android/systemui/user/data/source/UserRecord;

    .line 10
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_4
    const/4 v0, 0x0

    :goto_5
    move-object v12, v0

    goto :goto_6

    .line 12
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070770    # @dimen/max_avatar_size '48.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 13
    invoke-static {v0, v1, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :goto_6
    const/4 v15, 0x0

    const/16 v16, 0x0

    if-nez v3, :cond_9

    if-eqz v14, :cond_8

    if-nez v13, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v17, v7

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v17, v8

    :goto_8
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3b0

    move-object v10, v5

    .line 14
    invoke-direct/range {v10 .. v21}, Lcom/android/systemui/user/data/source/UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ZI)V

    :goto_9
    return-object v5
.end method

.method public static final access$toRecord(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/shared/model/UserActionModel;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v3, v2, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;

    iget v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    iget v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->Z$0:Z

    iget v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->I$0:I

    iget-object v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/user/shared/model/UserActionModel;

    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v3, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    iput-object v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$0:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    iput-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$1:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$2:Ljava/lang/Object;

    iput v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->I$0:I

    move/from16 v7, p3

    iput-boolean v7, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->Z$0:Z

    iput v6, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_3

    goto/16 :goto_9

    :cond_3
    move v13, v7

    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 19
    iget-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserAutoCreated:Z

    if-eqz v3, :cond_4

    iget-boolean v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserResetting:Z

    if-nez v0, :cond_5

    :cond_4
    move v14, v6

    goto :goto_2

    :cond_5
    move v14, v4

    .line 20
    :goto_2
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_6

    move v10, v6

    goto :goto_3

    :cond_6
    move v10, v4

    .line 21
    :goto_3
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_7

    move v12, v6

    goto :goto_4

    :cond_7
    move v12, v4

    .line 22
    :goto_4
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_8

    move v15, v6

    goto :goto_5

    :cond_8
    move v15, v4

    :goto_5
    const-string v0, "no_add_user"

    .line 23
    invoke-static {v5, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    const/4 v7, 0x0

    if-nez v3, :cond_9

    move-object/from16 v16, v7

    goto :goto_7

    .line 24
    :cond_9
    invoke-static {v5, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, v7

    :goto_6
    move-object/from16 v16, v3

    .line 25
    :goto_7
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_b

    move/from16 v17, v6

    goto :goto_8

    :cond_b
    move/from16 v17, v4

    .line 26
    :goto_8
    new-instance v4, Lcom/android/systemui/user/data/source/UserRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v18, 0xb

    move-object v7, v4

    invoke-direct/range {v7 .. v18}, Lcom/android/systemui/user/data/source/UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ZI)V

    :goto_9
    return-object v4
.end method

.method public static final access$toUserModels(Lcom/android/systemui/user/domain/interactor/UserInteractor;Ljava/util/List;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    move-object v0, p4

    .line 9
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;

    .line 10
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 12
    const/high16 v2, -0x80000000

    .line 14
    and-int v3, v1, v2

    .line 16
    if-eqz v3, :cond_0

    .line 18
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;

    .line 24
    invoke-direct {v0, p0, p4}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 26
    :goto_0
    iget-object p4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->result:Ljava/lang/Object;

    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 33
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    if-eq v2, v4, :cond_2

    .line 39
    if-ne v2, v3, :cond_1

    .line 41
    iget-boolean p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$1:Z

    .line 43
    iget-boolean p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 45
    iget p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 47
    iget-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$2:Ljava/lang/Object;

    .line 49
    check-cast p3, Ljava/util/Iterator;

    .line 51
    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 53
    check-cast v2, Ljava/util/Collection;

    .line 55
    iget-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 57
    check-cast v4, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 59
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    move-object v5, v4

    .line 64
    move-object v4, v2

    .line 65
    move-object v2, v1

    .line 66
    goto/16 :goto_6

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0

    .line 76
    :cond_2
    iget-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 77
    iget p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 79
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 81
    move-object p1, p0

    .line 83
    check-cast p1, Ljava/util/List;

    .line 84
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 86
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 88
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 97
    iput-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 99
    iput p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 101
    iput-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 103
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 105
    const/4 p4, 0x0

    .line 107
    invoke-virtual {p0, p2, v0, p4}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    .line 108
    move-result-object p4

    .line 111
    if-ne p4, v1, :cond_4

    .line 112
    goto/16 :goto_7

    .line 114
    :cond_4
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    .line 116
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    move-result p4

    .line 121
    new-instance v2, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$$inlined$sortedBy$1;

    .line 122
    invoke-direct {v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$$inlined$sortedBy$1;-><init>()V

    .line 124
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 127
    move-result-object p1

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object p1

    .line 139
    move-object v4, p0

    .line 140
    move p0, p4

    .line 141
    move-object p4, v1

    .line 142
    move v7, p3

    .line 143
    move-object p3, p1

    .line 144
    move p1, v7

    .line 145
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v5

    .line 149
    if-eqz v5, :cond_c

    .line 150
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v5

    .line 155
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 156
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 158
    iput-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 160
    iput-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$2:Ljava/lang/Object;

    .line 162
    iput p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 164
    iput-boolean p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 166
    iput-boolean p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$1:Z

    .line 168
    iput v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 170
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    if-nez p1, :cond_5

    .line 175
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 177
    move-result v6

    .line 180
    if-nez v6, :cond_5

    .line 181
    goto :goto_3

    .line 183
    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 184
    move-result v6

    .line 187
    if-nez v6, :cond_6

    .line 188
    goto :goto_3

    .line 190
    :cond_6
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 191
    move-result v6

    .line 194
    if-nez v6, :cond_8

    .line 195
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    .line 197
    move-result v6

    .line 200
    if-eqz v6, :cond_7

    .line 201
    goto :goto_4

    .line 203
    :cond_7
    :goto_3
    const/4 v5, 0x0

    .line 204
    goto :goto_5

    .line 205
    :cond_8
    :goto_4
    invoke-virtual {v4, v5, p2, p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 206
    move-result-object v5

    .line 209
    if-ne v5, v1, :cond_9

    .line 210
    goto :goto_5

    .line 212
    :cond_9
    check-cast v5, Lcom/android/systemui/user/shared/model/UserModel;

    .line 213
    :goto_5
    if-ne v5, p4, :cond_a

    .line 215
    move-object v1, p4

    .line 217
    goto :goto_7

    .line 218
    :cond_a
    move-object v7, v1

    .line 219
    move-object v1, p4

    .line 220
    move-object p4, v5

    .line 221
    move-object v5, v4

    .line 222
    move-object v4, v2

    .line 223
    move-object v2, v7

    .line 224
    :goto_6
    check-cast p4, Lcom/android/systemui/user/shared/model/UserModel;

    .line 225
    if-eqz p4, :cond_b

    .line 227
    invoke-interface {v4, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_b
    move-object p4, v1

    .line 232
    move-object v1, v2

    .line 233
    move-object v2, v4

    .line 234
    move-object v4, v5

    .line 235
    goto :goto_2

    .line 236
    :cond_c
    move-object v1, v2

    .line 237
    check-cast v1, Ljava/util/List;

    .line 238
    :goto_7
    return-object v1
    .line 240
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p1, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    return-void
    .line 14
.end method

.method public final canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 30
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    if-eq v2, v7, :cond_3

    .line 39
    if-eq v2, v5, :cond_2

    .line 41
    if-ne v2, v4, :cond_1

    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    goto/16 :goto_5

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 57
    :cond_2
    iget p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 58
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 60
    check-cast p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 62
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    goto :goto_2

    .line 67
    :cond_3
    iget-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->Z$0:Z

    .line 68
    iget p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 70
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 72
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 74
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    goto :goto_1

    .line 79
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$isHeadlessSystemUserMode$1;

    .line 83
    invoke-direct {p2, p0, v6}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$isHeadlessSystemUserMode$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 85
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 88
    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 90
    iput-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->Z$0:Z

    .line 92
    iput v7, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 94
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 96
    invoke-static {v2, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 101
    if-ne p2, v1, :cond_5

    .line 102
    return-object v1

    .line 104
    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 105
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    move-result p2

    .line 110
    if-eqz p3, :cond_8

    .line 111
    if-eqz p2, :cond_8

    .line 113
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 115
    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 117
    iput v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isAnyUserUnlocked(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    move-result-object p2

    .line 124
    if-ne p2, v1, :cond_6

    .line 125
    return-object v1

    .line 127
    :cond_6
    move v8, p1

    .line 128
    move-object p1, p0

    .line 129
    move p0, v8

    .line 130
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    .line 131
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    move-result p2

    .line 136
    if-eqz p2, :cond_7

    .line 137
    move-object v8, p1

    .line 139
    move p1, p0

    .line 140
    move-object p0, v8

    .line 141
    goto :goto_3

    .line 142
    :cond_7
    move p2, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    :goto_3
    move p2, v7

    .line 145
    move v8, p1

    .line 146
    move-object p1, p0

    .line 147
    move p0, v8

    .line 148
    :goto_4
    if-eqz p2, :cond_a

    .line 149
    iget-object p2, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 151
    new-instance p3, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;

    .line 153
    invoke-direct {p3, p1, p0, v6}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;ILkotlin/coroutines/Continuation;)V

    .line 155
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 158
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 160
    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 162
    move-result-object p2

    .line 165
    if-ne p2, v1, :cond_9

    .line 166
    return-object v1

    .line 168
    :cond_9
    :goto_5
    check-cast p2, Ljava/lang/Number;

    .line 169
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 171
    move-result p0

    .line 174
    if-nez p0, :cond_a

    .line 175
    move v3, v7

    .line 177
    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    move-result-object p0

    .line 181
    return-object p0
    .line 182
.end method

.method public final dismissDialog()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method

.method public final executeAction(Lcom/android/systemui/user/shared/model/UserActionModel;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    if-eqz p1, :cond_3

    .line 9
    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 11
    const/4 v2, 0x1

    .line 13
    if-eq p1, v2, :cond_2

    .line 14
    const/4 v3, 0x2

    .line 16
    iget-object v4, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 17
    if-eq p1, v3, :cond_1

    .line 19
    if-eq p1, v0, :cond_0

    .line 21
    goto/16 :goto_0

    .line 23
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 25
    const-string p1, "android.settings.USER_SETTINGS"

    .line 27
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-interface {v4, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 32
    goto/16 :goto_0

    .line 35
    :cond_1
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_RESTRICTED_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 37
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dismissDialog()V

    .line 42
    new-instance p0, Landroid/content/Intent;

    .line 45
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 47
    const-string p1, "android.os.action.CREATE_SUPERVISED_USER"

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    move-result-object p0

    .line 55
    const p1, 0x10402e8    # @android:string/date_time

    .line 56
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    move-result-object p0

    .line 66
    const/high16 p1, 0x10000000

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    move-result-object p0

    .line 72
    invoke-interface {v4, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 77
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 79
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 82
    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 86
    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dismissDialog()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 93
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 95
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 97
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing()Z

    .line 101
    move-result p0

    .line 104
    sget v1, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    .line 105
    new-instance v1, Landroid/content/Intent;

    .line 107
    const-class v2, Lcom/android/systemui/user/CreateUserActivity;

    .line 109
    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const/high16 p2, 0x14000000

    .line 114
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    const-string p2, "extra_is_keyguard_showing"

    .line 119
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const/4 v2, 0x1

    .line 124
    const/4 v3, 0x0

    .line 125
    const/4 v4, 0x1

    .line 126
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 127
    move-result-object v5

    .line 130
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V

    .line 131
    goto :goto_0

    .line 134
    :cond_3
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_GUEST_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 135
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 137
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$1;

    .line 140
    invoke-direct {v4, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$1;-><init>(Ljava/lang/Object;)V

    .line 142
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$2;

    .line 145
    invoke-direct {v5, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$2;-><init>(Ljava/lang/Object;)V

    .line 147
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$3;

    .line 150
    invoke-direct {v6, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$3;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 155
    iget-object p0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 157
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createAndSwitchTo$1;

    .line 159
    const/4 v7, 0x0

    .line 161
    move-object v2, p1

    .line 162
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createAndSwitchTo$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 163
    const/4 p2, 0x0

    .line 166
    invoke-static {p0, p2, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 167
    :goto_0
    return-void
    .line 170
.end method

.method public final exitGuestUser(IIZ)V
    .locals 9

    .line 1
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$1;

    .line 2
    invoke-direct {v5, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$1;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$2;

    .line 7
    invoke-direct {v6, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$2;-><init>(Ljava/lang/Object;)V

    .line 9
    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$3;

    .line 12
    invoke-direct {v7, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$3;-><init>(Ljava/lang/Object;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 19
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 23
    move-result-object v3

    .line 26
    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    .line 27
    const-string v1, "User requesting to start a new session ("

    .line 29
    const-string v2, "GuestUserInteractor"

    .line 31
    if-eq v0, p1, :cond_0

    .line 33
    const-string p0, ") is not current user ("

    .line 35
    const-string p2, ")"

    .line 37
    invoke-static {v1, p1, p0, v0, p2}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 47
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, ") is not a guest"

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;

    .line 74
    const/4 v8, 0x0

    .line 76
    move-object v0, p1

    .line 77
    move-object v1, p0

    .line 78
    move v2, p2

    .line 79
    move v4, p3

    .line 80
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;ILandroid/content/pm/UserInfo;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 81
    const/4 p2, 0x3

    .line 84
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 85
    const/4 p3, 0x0

    .line 87
    invoke-static {p0, p3, p3, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 88
    :goto_0
    return-void
    .line 91
.end method

.method public final getActions()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 2
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 8
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 10
    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    .line 12
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;

    .line 14
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 20
    invoke-static {v1, p0, v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    iget p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->I$0:I

    .line 37
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->L$0:Ljava/lang/Object;

    .line 39
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    if-eqz p3, :cond_4

    .line 58
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 60
    const p1, 0x7f080ed9    # @drawable/ic_account_circle 'res/drawable/ic_account_circle.xml'

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    return-object p0

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    const-string p1, "Required value was null."

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 83
    :cond_4
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$userIcon$1;

    .line 84
    const/4 p3, 0x0

    .line 86
    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$userIcon$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;ILkotlin/coroutines/Continuation;)V

    .line 87
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->L$0:Ljava/lang/Object;

    .line 90
    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->I$0:I

    .line 92
    iput v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 94
    iget-object p3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 96
    invoke-static {p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 101
    if-ne p2, v1, :cond_5

    .line 102
    return-object v1

    .line 104
    :cond_5
    :goto_1
    check-cast p2, Landroid/graphics/Bitmap;

    .line 105
    if-eqz p2, :cond_6

    .line 107
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 109
    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    return-object p0

    .line 114
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object p0

    .line 120
    const/4 p2, 0x0

    .line 121
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    .line 122
    move-result-object p0

    .line 125
    return-object p0
    .line 126
.end method

.method public final getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 2
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 8
    new-instance v2, Lcom/android/systemui/user/domain/interactor/UserInteractor$users$1;

    .line 10
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$users$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 16
    invoke-static {p0, v1, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method

.method public final isAnyUserUnlocked(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;

    .line 21
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 30
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    if-ne v2, v4, :cond_1

    .line 36
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$1:Ljava/lang/Object;

    .line 38
    check-cast p0, Ljava/util/Iterator;

    .line 40
    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$0:Ljava/lang/Object;

    .line 42
    check-cast v2, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 57
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    .line 61
    invoke-virtual {p1, v4, v4, v4}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    .line 63
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    goto :goto_3

    .line 73
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p1

    .line 77
    move-object v8, p1

    .line 78
    move-object p1, p0

    .line 79
    move-object p0, v8

    .line 80
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 84
    if-eqz v2, :cond_8

    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 90
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 91
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 93
    if-eqz v5, :cond_7

    .line 95
    iget-object v5, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 97
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$2$1;

    .line 99
    const/4 v7, 0x0

    .line 101
    invoke-direct {v6, p1, v2, v7}, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$2$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)V

    .line 102
    iput-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$0:Ljava/lang/Object;

    .line 105
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$1:Ljava/lang/Object;

    .line 107
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 109
    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    move-result-object v2

    .line 114
    if-ne v2, v1, :cond_5

    .line 115
    return-object v1

    .line 117
    :cond_5
    move-object v8, v2

    .line 118
    move-object v2, p1

    .line 119
    move-object p1, v8

    .line 120
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    move-object p1, v2

    .line 129
    move v2, v4

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    move-object p1, v2

    .line 132
    :cond_7
    move v2, v3

    .line 133
    :goto_2
    if-eqz v2, :cond_4

    .line 134
    move v3, v4

    .line 136
    :cond_8
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    move-result-object p0

    .line 140
    return-object p0
    .line 141
.end method

.method public final removeCallback(Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeCallback$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p1, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    return-void
    .line 14
.end method

.method public final removeGuestUser(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;

    .line 2
    const/16 v1, -0x2710

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;IILkotlin/coroutines/Continuation;)V

    .line 7
    const/4 p1, 0x3

    .line 10
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    invoke-static {p0, v2, v2, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    return-void
    .line 16
.end method

.method public final selectUser(ILcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 2
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 6
    move-result-object v1

    .line 9
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 10
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 12
    if-ne p1, v2, :cond_0

    .line 14
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    new-instance p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 22
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 24
    iget v6, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->lastSelectedNonGuestUserId:I

    .line 26
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 28
    move-result v7

    .line 31
    iget-object v0, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 32
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing()Z

    .line 36
    move-result v8

    .line 39
    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$1;

    .line 40
    invoke-direct {v9, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$1;-><init>(Ljava/lang/Object;)V

    .line 42
    move-object v4, p1

    .line 45
    move-object v10, p2

    .line 46
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;-><init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 50
    return-void

    .line 53
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 60
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 62
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 64
    move-result v7

    .line 67
    iget-object v1, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 68
    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 70
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing()Z

    .line 72
    move-result v8

    .line 75
    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$2;

    .line 76
    invoke-direct {v9, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$2;-><init>(Ljava/lang/Object;)V

    .line 78
    move-object v4, v0

    .line 81
    move v6, p1

    .line 82
    move-object v10, p2

    .line 83
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;-><init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 87
    return-void

    .line 90
    :cond_1
    if-eqz p2, :cond_2

    .line 91
    check-cast p2, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    .line 93
    invoke-virtual {p2}, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->dismiss()V

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->switchUser(I)V

    .line 98
    return-void
    .line 101
.end method

.method public final showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 4
    return-void
    .line 7
.end method

.method public final showUserSwitcher(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;

    .line 14
    invoke-direct {v0, p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;-><init>(Lcom/android/systemui/animation/Expandable;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;

    .line 23
    invoke-direct {v0, p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;-><init>(Lcom/android/systemui/animation/Expandable;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 28
    :goto_0
    return-void
    .line 31
.end method

.method public final switchUser(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    new-instance v2, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    .line 9
    const/4 v4, 0x2

    .line 12
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    invoke-static {v1, v0, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityManager:Landroid/app/ActivityManager;

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string p1, "UserInteractor"

    .line 25
    const-string v0, "Couldn\'t switch user."

    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :goto_0
    return-void
.end method

.method public final toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    instance-of v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;

    .line 10
    if-eqz v4, :cond_0

    .line 12
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;

    .line 15
    iget v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 17
    const/high16 v6, -0x80000000

    .line 19
    and-int v7, v5, v6

    .line 21
    if-eqz v7, :cond_0

    .line 23
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;

    .line 29
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 31
    :goto_0
    iget-object v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->result:Ljava/lang/Object;

    .line 34
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    iget v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 38
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x1

    .line 42
    if-eqz v6, :cond_3

    .line 43
    if-eq v6, v9, :cond_2

    .line 45
    if-ne v6, v7, :cond_1

    .line 47
    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 49
    iget v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 51
    iget-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 53
    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 55
    check-cast v4, Lcom/android/systemui/common/shared/model/Text;

    .line 57
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    move v11, v0

    .line 62
    move-object v12, v4

    .line 63
    goto/16 :goto_4

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0

    .line 73
    :cond_2
    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 74
    iget v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 76
    iget-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 78
    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 80
    check-cast v4, Lcom/android/systemui/common/shared/model/Text;

    .line 82
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    move v11, v0

    .line 87
    move v15, v2

    .line 88
    move-object v12, v4

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 94
    move/from16 v6, p2

    .line 96
    if-ne v3, v6, :cond_4

    .line 98
    move v6, v9

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move v6, v8

    .line 102
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 103
    move-result v10

    .line 106
    if-eqz v10, :cond_7

    .line 107
    new-instance v7, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 109
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 111
    invoke-direct {v7, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object v7, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 116
    iput-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 118
    iput v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 120
    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 122
    iput v9, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 124
    invoke-virtual {v0, v3, v4, v9}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 129
    if-ne v0, v5, :cond_5

    .line 130
    return-object v5

    .line 132
    :cond_5
    move v15, v2

    .line 133
    move v11, v3

    .line 134
    move v1, v6

    .line 135
    move-object v12, v7

    .line 136
    move-object v3, v0

    .line 137
    :goto_2
    move-object v13, v3

    .line 138
    check-cast v13, Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance v0, Lcom/android/systemui/user/shared/model/UserModel;

    .line 141
    if-eqz v1, :cond_6

    .line 143
    move v14, v9

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move v14, v8

    .line 147
    :goto_3
    const/16 v16, 0x1

    .line 148
    move-object v10, v0

    .line 150
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/user/shared/model/UserModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 151
    goto :goto_8

    .line 154
    :cond_7
    new-instance v10, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 155
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 157
    invoke-direct {v10, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    .line 159
    iput-object v10, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 162
    iput-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 164
    iput v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 166
    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 168
    iput v7, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 170
    invoke-virtual {v0, v3, v4, v8}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 175
    if-ne v0, v5, :cond_8

    .line 176
    return-object v5

    .line 178
    :cond_8
    move v11, v3

    .line 179
    move v1, v6

    .line 180
    move-object v12, v10

    .line 181
    move-object v3, v0

    .line 182
    :goto_4
    move-object v13, v3

    .line 183
    check-cast v13, Landroid/graphics/drawable/Drawable;

    .line 184
    if-nez v2, :cond_a

    .line 186
    if-eqz v1, :cond_9

    .line 188
    goto :goto_5

    .line 190
    :cond_9
    move v15, v8

    .line 191
    goto :goto_6

    .line 192
    :cond_a
    :goto_5
    move v15, v9

    .line 193
    :goto_6
    new-instance v0, Lcom/android/systemui/user/shared/model/UserModel;

    .line 194
    if-eqz v1, :cond_b

    .line 196
    move v14, v9

    .line 198
    goto :goto_7

    .line 199
    :cond_b
    move v14, v8

    .line 200
    :goto_7
    const/16 v16, 0x0

    .line 201
    move-object v10, v0

    .line 203
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/user/shared/model/UserModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 204
    :goto_8
    return-object v0
    .line 207
.end method
