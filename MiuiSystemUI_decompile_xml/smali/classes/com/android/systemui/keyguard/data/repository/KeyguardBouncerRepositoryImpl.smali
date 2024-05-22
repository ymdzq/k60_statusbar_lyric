.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;


# instance fields
.field public final _alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _alternateBouncerVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isBackButtonEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _keyguardAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _keyguardPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _panelExpansionAmount:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerDisappearAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerScrimmed:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerShow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _showMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _sideFpsShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final alternateBouncerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public final isBackButtonEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public lastAlternateBouncerVisibleTime:J

.field public final panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerScrimmed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final resourceUpdateRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    move-object/from16 v3, p1

    .line 11
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    move-result-object v4

    .line 20
    iput-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 21
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 23
    invoke-direct {v5, v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 25
    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 30
    move-result-object v4

    .line 33
    iput-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 34
    new-instance v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 36
    invoke-direct {v6, v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 38
    iput-object v6, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 41
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 43
    move-result-object v4

    .line 46
    iput-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    new-instance v7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 49
    invoke-direct {v7, v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 51
    iput-object v7, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 54
    const/4 v4, 0x0

    .line 56
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    move-result-object v8

    .line 60
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerDisappearAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 61
    new-instance v9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 63
    invoke-direct {v9, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 65
    iput-object v9, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 68
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 70
    move-result-object v8

    .line 73
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerScrimmed:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 74
    new-instance v10, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 76
    invoke-direct {v10, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 78
    iput-object v10, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerScrimmed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 81
    const/high16 v8, 0x3f800000    # 1.0f

    .line 83
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 85
    move-result-object v8

    .line 88
    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 89
    move-result-object v8

    .line 92
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_panelExpansionAmount:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    new-instance v11, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 95
    invoke-direct {v11, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 97
    iput-object v11, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 100
    const/4 v8, 0x0

    .line 102
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    move-result-object v8

    .line 106
    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 107
    move-result-object v8

    .line 110
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 111
    new-instance v12, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 113
    invoke-direct {v12, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 115
    iput-object v12, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 118
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 120
    move-result-object v8

    .line 123
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_isBackButtonEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 124
    new-instance v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 126
    invoke-direct {v13, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 128
    iput-object v13, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->isBackButtonEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 131
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 133
    move-result-object v8

    .line 136
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 137
    new-instance v14, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 139
    invoke-direct {v14, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 141
    iput-object v14, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->keyguardAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 144
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 146
    move-result-object v8

    .line 149
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_showMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 150
    new-instance v14, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 152
    invoke-direct {v14, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 154
    iput-object v14, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->showMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 157
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 159
    move-result-object v8

    .line 162
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 163
    new-instance v15, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 165
    invoke-direct {v15, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 167
    iput-object v15, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->resourceUpdateRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 170
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 172
    move-result-object v8

    .line 175
    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_alternateBouncerVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 176
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 178
    invoke-direct {v4, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 180
    iput-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->alternateBouncerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 183
    move-object v4, v14

    .line 185
    move-object v8, v15

    .line 186
    const-wide/16 v14, -0x1

    .line 187
    iput-wide v14, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->lastAlternateBouncerVisibleTime:J

    .line 189
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 191
    move-result-object v14

    .line 194
    iput-object v14, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 195
    new-instance v15, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 197
    invoke-direct {v15, v14}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 199
    iput-object v15, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 202
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 204
    move-result-object v3

    .line 207
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_sideFpsShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 208
    new-instance v14, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 210
    invoke-direct {v14, v3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 212
    iput-object v14, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 215
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 217
    if-nez v0, :cond_0

    .line 219
    goto/16 :goto_0

    .line 221
    :cond_0
    const-string v0, "PrimaryBouncerShow"

    .line 223
    const-string v3, ""

    .line 225
    move-object/from16 v16, v14

    .line 227
    const/4 v14, 0x0

    .line 229
    invoke-static {v5, v2, v3, v0, v14}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 230
    move-result-object v0

    .line 233
    new-instance v5, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$1;

    .line 234
    const/4 v14, 0x0

    .line 236
    invoke-direct {v5, v14}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 237
    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 240
    invoke-direct {v14, v5, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 242
    invoke-static {v14, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 245
    const-string v0, "PrimaryBouncerShowingSoon"

    .line 248
    const/4 v5, 0x0

    .line 250
    invoke-static {v6, v2, v3, v0, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 251
    move-result-object v0

    .line 254
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 255
    const-string v0, "PrimaryBouncerStartingToHide"

    .line 258
    invoke-static {v7, v2, v3, v0, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 260
    move-result-object v0

    .line 263
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 264
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;

    .line 267
    invoke-direct {v0, v9, v5}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;I)V

    .line 269
    const-string v6, "PrimaryBouncerStartingDisappearAnimation"

    .line 272
    invoke-static {v0, v2, v3, v6, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 274
    move-result-object v0

    .line 277
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 278
    const-string v0, "PrimaryBouncerScrimmed"

    .line 281
    invoke-static {v10, v2, v3, v0, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 283
    move-result-object v0

    .line 286
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 287
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;

    .line 290
    const/4 v5, 0x1

    .line 292
    invoke-direct {v0, v11, v5}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;I)V

    .line 293
    const-string v5, "PanelExpansionAmountMillis"

    .line 296
    const/4 v6, -0x1

    .line 298
    invoke-static {v0, v2, v3, v5, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)Lkotlinx/coroutines/flow/SafeFlow;

    .line 299
    move-result-object v0

    .line 302
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 303
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;

    .line 306
    const/4 v5, 0x2

    .line 308
    invoke-direct {v0, v12, v5}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;I)V

    .line 309
    const-string v5, "KeyguardPosition"

    .line 312
    invoke-static {v0, v2, v3, v5, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)Lkotlinx/coroutines/flow/SafeFlow;

    .line 314
    move-result-object v0

    .line 317
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 318
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 321
    invoke-direct {v0, v13}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 323
    const-string v5, "IsBackButtonEnabled"

    .line 326
    const/4 v6, 0x0

    .line 328
    invoke-static {v0, v2, v3, v5, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 329
    move-result-object v0

    .line 332
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 333
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;

    .line 336
    const/4 v5, 0x3

    .line 338
    invoke-direct {v0, v4, v5}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;I)V

    .line 339
    const-string v4, "ShowMessage"

    .line 342
    const/4 v5, 0x0

    .line 344
    invoke-static {v0, v2, v4, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 345
    move-result-object v0

    .line 348
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 349
    const-string v0, "ResourceUpdateRequests"

    .line 352
    invoke-static {v8, v2, v3, v0, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 354
    move-result-object v0

    .line 357
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 358
    const-string v0, "IsAlternateBouncerUIAvailable"

    .line 361
    invoke-static {v15, v2, v3, v0, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 363
    move-result-object v0

    .line 366
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 367
    const-string v0, "isSideFpsShowing"

    .line 370
    move-object/from16 v4, v16

    .line 372
    invoke-static {v4, v2, v3, v0, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/SafeFlow;

    .line 374
    move-result-object v0

    .line 377
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 378
    :goto_0
    return-void
    .line 381
.end method


# virtual methods
.method public final setAlternateVisible(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_alternateBouncerVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    .line 18
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v1

    .line 28
    iput-wide v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->lastAlternateBouncerVisibleTime:J

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    const-wide/16 v1, -0x1

    .line 34
    iput-wide v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->lastAlternateBouncerVisibleTime:J

    .line 36
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 42
    return-void
    .line 45
.end method
