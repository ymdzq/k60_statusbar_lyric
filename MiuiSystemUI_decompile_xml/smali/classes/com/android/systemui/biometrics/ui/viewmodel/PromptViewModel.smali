.class public final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _canTryAgainNow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _fingerprintStartMode:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _forceLargeSize:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _forceMediumSize:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAuthenticating:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _message:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final description:Lkotlinx/coroutines/flow/Flow;

.field public final fingerprintStartMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final interactor:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

.field public final isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAuthenticating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isCancelButtonVisible:Lkotlinx/coroutines/flow/Flow;

.field public final isConfirmButtonVisible:Lkotlinx/coroutines/flow/Flow;

.field public final isConfirmationRequested:Lkotlinx/coroutines/flow/Flow;

.field public final isCredentialButtonVisible:Lkotlinx/coroutines/flow/Flow;

.field public final isIndicatorMessageVisible:Lkotlinx/coroutines/flow/Flow;

.field public final isNegativeButtonVisible:Lkotlinx/coroutines/flow/Flow;

.field public final isRetrySupported:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

.field public final isTryAgainButtonVisible:Lkotlinx/coroutines/flow/Flow;

.field public final legacyState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final message:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final modalities:Lkotlinx/coroutines/flow/Flow;

.field public final negativeButtonText:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

.field public final size:Lkotlinx/coroutines/flow/Flow;

.field public final subtitle:Lkotlinx/coroutines/flow/Flow;

.field public final title:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->interactor:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    .line 5
    iget-object v0, p1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 7
    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 12
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 15
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->modalities:Lkotlinx/coroutines/flow/Flow;

    .line 19
    const/4 v2, 0x1

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 25
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 26
    move-result-object v3

    .line 29
    iput-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_legacyState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 30
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 32
    invoke-direct {v4, v3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 34
    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->legacyState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 37
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    move-result-object v4

    .line 44
    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticating:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 47
    invoke-direct {v5, v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 49
    iput-object v5, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 52
    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    .line 54
    invoke-direct {v4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;-><init>()V

    .line 56
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 59
    move-result-object v4

    .line 62
    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 63
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 65
    invoke-direct {v5, v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 67
    iput-object v5, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 70
    iget-object v4, p1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isConfirmationRequested:Lkotlinx/coroutines/flow/Flow;

    .line 72
    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isConfirmationRequested:Lkotlinx/coroutines/flow/Flow;

    .line 74
    iget-object v6, p1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 76
    iput-object v6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 78
    new-instance v6, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 80
    invoke-direct {v6, v0, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 82
    iput-object v6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->negativeButtonText:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 85
    sget-object v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;->INSTANCE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;

    .line 87
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 89
    move-result-object v2

    .line 92
    iput-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_message:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    new-instance v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 95
    invoke-direct {v6, v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 97
    iput-object v6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->message:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 100
    new-instance v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 102
    const/4 v7, 0x2

    .line 104
    invoke-direct {v2, v1, v7}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 105
    iput-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isRetrySupported:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 108
    sget-object v8, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Pending:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    .line 110
    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 112
    move-result-object v8

    .line 115
    iput-object v8, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_fingerprintStartMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 116
    new-instance v9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 118
    invoke-direct {v9, v8}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 120
    iput-object v9, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintStartMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 123
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 125
    move-result-object v8

    .line 128
    iput-object v8, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_forceLargeSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 129
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 131
    move-result-object v10

    .line 134
    iput-object v10, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_forceMediumSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 135
    new-instance v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;

    .line 137
    const/4 v12, 0x0

    .line 139
    invoke-direct {v11, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 140
    filled-new-array {v8, v10, v1, v4, v9}, [Lkotlinx/coroutines/flow/Flow;

    .line 143
    move-result-object v4

    .line 146
    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 147
    invoke-direct {v8, v4, v11, v7}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/Function;I)V

    .line 149
    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 152
    move-result-object v4

    .line 155
    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->size:Lkotlinx/coroutines/flow/Flow;

    .line 156
    new-instance v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 158
    const/4 v8, 0x3

    .line 160
    invoke-direct {v7, v0, v8}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 161
    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 164
    move-result-object v7

    .line 167
    iput-object v7, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->title:Lkotlinx/coroutines/flow/Flow;

    .line 168
    new-instance v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 170
    const/4 v8, 0x4

    .line 172
    invoke-direct {v7, v0, v8}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 173
    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 176
    move-result-object v7

    .line 179
    iput-object v7, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->subtitle:Lkotlinx/coroutines/flow/Flow;

    .line 180
    new-instance v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    .line 182
    const/4 v8, 0x5

    .line 184
    invoke-direct {v7, v0, v8}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 185
    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 188
    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->description:Lkotlinx/coroutines/flow/Flow;

    .line 192
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;

    .line 194
    invoke-direct {v0, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 196
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 199
    invoke-direct {v7, v4, v6, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 201
    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 204
    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isIndicatorMessageVisible:Lkotlinx/coroutines/flow/Flow;

    .line 208
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isConfirmButtonVisible$1;

    .line 210
    invoke-direct {v0, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isConfirmButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 212
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 215
    invoke-direct {v6, v4, v5, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 217
    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 220
    move-result-object v0

    .line 223
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isConfirmButtonVisible:Lkotlinx/coroutines/flow/Flow;

    .line 224
    new-instance v6, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;

    .line 226
    invoke-direct {v6, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 228
    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isCredentialAllowed:Lkotlinx/coroutines/flow/Flow;

    .line 231
    invoke-static {v4, v5, p1, v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 233
    move-result-object v6

    .line 236
    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 237
    move-result-object v6

    .line 240
    iput-object v6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isNegativeButtonVisible:Lkotlinx/coroutines/flow/Flow;

    .line 241
    new-instance v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCancelButtonVisible$1;

    .line 243
    invoke-direct {v7, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCancelButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 245
    invoke-static {v4, v5, v6, v0, v7}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 248
    move-result-object v0

    .line 251
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 252
    move-result-object v0

    .line 255
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isCancelButtonVisible:Lkotlinx/coroutines/flow/Flow;

    .line 256
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 258
    move-result-object v0

    .line 261
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_canTryAgainNow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 262
    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;

    .line 264
    invoke-direct {v3, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 266
    invoke-static {v0, v4, v5, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 269
    move-result-object v0

    .line 272
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 273
    move-result-object v0

    .line 276
    new-instance v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;

    .line 277
    invoke-direct {v2, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 279
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 282
    invoke-direct {v3, v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 284
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 287
    move-result-object v0

    .line 290
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isTryAgainButtonVisible:Lkotlinx/coroutines/flow/Flow;

    .line 291
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCredentialButtonVisible$1;

    .line 293
    invoke-direct {v0, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCredentialButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 295
    invoke-static {v4, v5, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 298
    move-result-object p1

    .line 301
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 302
    move-result-object p1

    .line 305
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isCredentialButtonVisible:Lkotlinx/coroutines/flow/Flow;

    .line 306
    return-void
    .line 308
.end method
