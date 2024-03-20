.class public final Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;


# instance fields
.field public final _customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final authFlagsBasedPromptReason:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;

.field public final authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

.field public final biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

.field public final biometricLockedOutMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final bouncerMessageFactory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

.field public final customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isAnyBiometricsEnabledAndEnrolled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFaceEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->bouncerMessageFactory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 7
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthenticationEnabled()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 9
    move-result-object p4

    .line 12
    new-instance p5, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-direct {p5, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 16
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 19
    iget-object v2, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceEnrolled:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 21
    invoke-direct {v1, p4, v2, p5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 23
    iput-object v1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->isFaceEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 26
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;

    .line 28
    invoke-direct {p4, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 30
    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 33
    iget-object v2, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnabledByDevicePolicy:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 35
    iget-object v3, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 37
    invoke-direct {p5, v2, v3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 39
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 42
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$or$1;

    .line 44
    invoke-direct {p4, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$or$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 46
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 49
    invoke-direct {v2, v1, p5, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 51
    iput-object v2, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->isAnyBiometricsEnabledAndEnrolled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserTrustManaged()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 56
    move-result-object p1

    .line 59
    sget-object p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;->INSTANCE:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;

    .line 60
    iget-object p2, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->authenticationFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 62
    invoke-static {p2, p1, v2, p4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 64
    move-result-object p1

    .line 67
    new-instance p2, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;

    .line 68
    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;)V

    .line 70
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsBasedPromptReason:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;

    .line 73
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;

    .line 75
    invoke-direct {p1, p3, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    .line 77
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 80
    move-result-object p1

    .line 83
    const/4 p4, -0x1

    .line 84
    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 85
    move-result-object p1

    .line 88
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 89
    move-result-object p1

    .line 92
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    move-result-object p5

    .line 96
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 97
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 99
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 101
    move-result-object p5

    .line 104
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 105
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 107
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 109
    move-result-object p5

    .line 112
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 113
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 115
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 117
    move-result-object p5

    .line 120
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 121
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 123
    new-instance p5, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$2;

    .line 125
    const/4 v1, 0x0

    .line 127
    invoke-direct {p5, p1, p0, v1}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;I)V

    .line 128
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthMessage$2;

    .line 131
    invoke-direct {p1, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthMessage$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 133
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 136
    invoke-direct {v1, p1, p5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 138
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 141
    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

    .line 145
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$2;

    .line 147
    const/4 p5, 0x1

    .line 149
    invoke-direct {p1, p2, p0, p5}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;I)V

    .line 150
    new-instance p2, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsMessage$2;

    .line 153
    invoke-direct {p2, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsMessage$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 155
    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 158
    invoke-direct {p5, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 160
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 163
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

    .line 167
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1;

    .line 169
    invoke-direct {p1, p3, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    .line 171
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 174
    move-result-object p1

    .line 177
    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 178
    move-result-object p1

    .line 181
    check-cast p6, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;

    .line 182
    iget-object p2, p6, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->isLockedOut:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 184
    new-instance p3, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;

    .line 186
    invoke-direct {p3, p0, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;-><init>(Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 188
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 191
    invoke-direct {p4, p2, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 193
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricLockedOutMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 196
    return-void
    .line 198
.end method
