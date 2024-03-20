.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;


# instance fields
.field public final activityContainerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activityInVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activityOutVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final icon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final networkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final roaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showExclamationMark:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showNetworkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shownLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final subscriptionId:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p4

    .line 6
    move-object/from16 v3, p5

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    move/from16 v4, p1

    .line 13
    iput v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->subscriptionId:I

    .line 15
    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$showExclamationMark$1;

    .line 17
    const/4 v5, 0x0

    .line 19
    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$showExclamationMark$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 20
    iget-object v6, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDefaultDataEnabled:Lkotlinx/coroutines/flow/StateFlow;

    .line 23
    iget-object v7, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDefaultConnectionFailed:Lkotlinx/coroutines/flow/StateFlow;

    .line 25
    iget-object v8, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isInService:Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    invoke-static {v6, v7, v8, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 29
    move-result-object v4

    .line 32
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 33
    move-result-object v6

    .line 36
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    invoke-static {v4, v3, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    move-result-object v4

    .line 42
    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->showExclamationMark:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$shownLevel$1;

    .line 45
    invoke-direct {v6, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$shownLevel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 47
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 50
    iget-object v9, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->level:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 52
    invoke-direct {v7, v9, v8, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 54
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 57
    move-result-object v6

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v9

    .line 65
    invoke-static {v7, v3, v6, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 66
    move-result-object v6

    .line 69
    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->shownLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 70
    iget-boolean v7, v2, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;->hasDataCapabilities:Z

    .line 72
    if-nez v7, :cond_0

    .line 74
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 78
    invoke-direct {v9, v7}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 80
    goto :goto_0

    .line 83
    :cond_0
    move-object/from16 v7, p3

    .line 84
    iget-object v7, v7, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isAirplaneMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 86
    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$isVisible$1;

    .line 88
    invoke-direct {v9, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$isVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 90
    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 93
    iget-object v11, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isForceHidden:Lkotlinx/coroutines/flow/Flow;

    .line 95
    invoke-direct {v10, v7, v11, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 97
    move-object v9, v10

    .line 100
    :goto_0
    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 101
    move-result-object v7

    .line 104
    iget-object v9, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 105
    const-string v10, ""

    .line 107
    const-string/jumbo v11, "visible"

    .line 109
    invoke-static {v7, v9, v10, v11, v8}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 112
    move-result-object v7

    .line 115
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 116
    move-result-object v11

    .line 119
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    invoke-static {v7, v3, v11, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 122
    move-result-object v7

    .line 125
    iput-object v7, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 126
    new-instance v7, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;

    .line 128
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 130
    move-result-object v11

    .line 133
    check-cast v11, Ljava/lang/Number;

    .line 134
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 136
    move-result v11

    .line 139
    iget-object v13, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->numberOfLevels:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 140
    invoke-virtual {v13}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 142
    move-result-object v14

    .line 145
    check-cast v14, Ljava/lang/Number;

    .line 146
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 148
    move-result v14

    .line 151
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 152
    move-result-object v15

    .line 155
    check-cast v15, Ljava/lang/Boolean;

    .line 156
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    move-result v15

    .line 161
    iget-object v8, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

    .line 162
    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 164
    move-result-object v16

    .line 167
    check-cast v16, Ljava/lang/Boolean;

    .line 168
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    move-result v5

    .line 173
    invoke-direct {v7, v11, v14, v15, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;-><init>(IIZZ)V

    .line 174
    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$icon$1$1;

    .line 177
    const/4 v11, 0x0

    .line 179
    invoke-direct {v5, v11}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$icon$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 180
    invoke-static {v6, v13, v4, v8, v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 183
    move-result-object v4

    .line 186
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 187
    move-result-object v4

    .line 190
    const-string v5, "icon"

    .line 191
    invoke-static {v4, v9, v5, v7}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 193
    move-result-object v4

    .line 196
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 197
    move-result-object v5

    .line 200
    invoke-static {v4, v3, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 201
    move-result-object v4

    .line 204
    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->icon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 205
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 207
    sget-object v5, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 209
    const/4 v7, 0x0

    .line 211
    aget v5, v5, v7

    .line 212
    invoke-direct {v4, v5}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 214
    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;

    .line 217
    const/4 v7, 0x1

    .line 219
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 220
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 223
    move-result-object v6

    .line 226
    invoke-static {v5, v3, v6, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 227
    move-result-object v4

    .line 230
    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 231
    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$showNetworkTypeIcon$1;

    .line 233
    const/4 v5, 0x0

    .line 235
    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$showNetworkTypeIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 236
    iget-object v5, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDataConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 239
    iget-object v6, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDataEnabled:Lkotlinx/coroutines/flow/StateFlow;

    .line 241
    iget-object v7, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/StateFlow;

    .line 243
    iget-object v11, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->mobileIsDefault:Lkotlinx/coroutines/flow/StateFlow;

    .line 245
    filled-new-array {v5, v6, v7, v11, v8}, [Lkotlinx/coroutines/flow/Flow;

    .line 247
    move-result-object v5

    .line 250
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 251
    const/4 v7, 0x2

    .line 253
    invoke-direct {v6, v5, v4, v7}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/Function;I)V

    .line 254
    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 257
    move-result-object v4

    .line 260
    const-string/jumbo v5, "showNetworkTypeIcon"

    .line 261
    const/4 v6, 0x0

    .line 264
    invoke-static {v4, v9, v10, v5, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 265
    move-result-object v4

    .line 268
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 269
    move-result-object v5

    .line 272
    invoke-static {v4, v3, v5, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 273
    move-result-object v4

    .line 276
    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->showNetworkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 277
    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$networkTypeIcon$1;

    .line 279
    const/4 v6, 0x0

    .line 281
    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$networkTypeIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 282
    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 285
    iget-object v11, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->networkTypeIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 287
    invoke-direct {v8, v11, v4, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 289
    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 292
    move-result-object v4

    .line 295
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 296
    move-result-object v5

    .line 299
    invoke-static {v4, v3, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 300
    move-result-object v4

    .line 303
    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->networkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 304
    iget-object v4, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isRoaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 306
    const-string/jumbo v5, "roaming"

    .line 308
    const/4 v8, 0x0

    .line 311
    invoke-static {v4, v9, v10, v5, v8}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 312
    move-result-object v4

    .line 315
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 316
    move-result-object v5

    .line 319
    invoke-static {v4, v3, v5, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 320
    move-result-object v4

    .line 323
    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->roaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 324
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;->shouldShowActivityConfig:Z

    .line 326
    if-nez v2, :cond_1

    .line 328
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 330
    invoke-direct {v1, v6}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 332
    goto :goto_1

    .line 335
    :cond_1
    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->activity:Lkotlinx/coroutines/flow/StateFlow;

    .line 336
    :goto_1
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;

    .line 338
    const/4 v4, 0x0

    .line 340
    invoke-direct {v2, v1, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 341
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 344
    move-result-object v2

    .line 347
    const-string v5, "activityInVisible"

    .line 348
    invoke-static {v2, v9, v10, v5, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 350
    move-result-object v2

    .line 353
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 354
    move-result-object v5

    .line 357
    invoke-static {v2, v3, v5, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 358
    move-result-object v2

    .line 361
    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->activityInVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 362
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;

    .line 364
    invoke-direct {v2, v1, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 366
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 369
    move-result-object v2

    .line 372
    const-string v5, "activityOutVisible"

    .line 373
    invoke-static {v2, v9, v10, v5, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 375
    move-result-object v2

    .line 378
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 379
    move-result-object v5

    .line 382
    invoke-static {v2, v3, v5, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 383
    move-result-object v2

    .line 386
    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->activityOutVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 387
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;

    .line 389
    const/4 v5, 0x3

    .line 391
    invoke-direct {v2, v1, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 392
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 395
    move-result-object v1

    .line 398
    const-string v2, "activityContainerVisible"

    .line 399
    invoke-static {v1, v9, v10, v2, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 401
    move-result-object v1

    .line 404
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 405
    move-result-object v2

    .line 408
    invoke-static {v1, v3, v2, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 409
    move-result-object v1

    .line 412
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->activityContainerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 413
    return-void
    .line 415
.end method


# virtual methods
.method public final getNetworkTypeIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->networkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method
