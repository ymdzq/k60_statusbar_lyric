.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;


# instance fields
.field public final _animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _clockPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isDozing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isQuickSettingsVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final biometricUnlockSource:Lkotlinx/coroutines/flow/Flow;

.field public final biometricUnlockState:Lkotlinx/coroutines/flow/Flow;

.field public final bottomAreaAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final clockPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final dozeTransitionListener:Lcom/android/systemui/doze/DozeTransitionListener;

.field public final dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

.field public final dreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

.field public final faceSensorLocation:Lkotlinx/coroutines/flow/Flow;

.field public final fingerprintSensorLocation:Lkotlinx/coroutines/flow/Flow;

.field public final isAodAvailable:Lkotlinx/coroutines/flow/Flow;

.field public final isDozing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDreaming:Lkotlinx/coroutines/flow/Flow;

.field public final isDreamingWithOverlay:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardUnlocked:Lkotlinx/coroutines/flow/Flow;

.field public final isQuickSettingsVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final linearDozeAmount:Lkotlinx/coroutines/flow/Flow;

.field public final statusBarState:Lkotlinx/coroutines/flow/Flow;

.field public final wakefulness:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/doze/DozeTransitionListener;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dreams/DreamOverlayCallbackController;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTransitionListener:Lcom/android/systemui/doze/DozeTransitionListener;

    .line 9
    iput-object p7, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 11
    iput-object p8, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 13
    iput-object p9, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    .line 15
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    move-result-object p5

    .line 22
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 23
    new-instance p6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 25
    invoke-direct {p6, p5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 27
    iput-object p6, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 30
    const/high16 p5, 0x3f800000    # 1.0f

    .line 32
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    move-result-object p5

    .line 37
    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 38
    move-result-object p5

    .line 41
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 42
    new-instance p6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    invoke-direct {p6, p5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 46
    iput-object p6, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->bottomAreaAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 49
    new-instance p5, Lcom/android/systemui/common/shared/model/Position;

    .line 51
    const/4 p6, 0x0

    .line 53
    invoke-direct {p5, p6, p6}, Lcom/android/systemui/common/shared/model/Position;-><init>(II)V

    .line 54
    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    move-result-object p5

    .line 60
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_clockPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 61
    new-instance p6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 63
    invoke-direct {p6, p5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 65
    iput-object p6, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->clockPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 68
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardShowing$1;

    .line 70
    const/4 p6, 0x0

    .line 72
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardShowing$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 73
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 76
    move-result-object p5

    .line 79
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 80
    move-result-object p5

    .line 83
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    .line 84
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isAodAvailable$1;

    .line 86
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isAodAvailable$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 88
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 91
    move-result-object p5

    .line 94
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 95
    move-result-object p5

    .line 98
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isAodAvailable:Lkotlinx/coroutines/flow/Flow;

    .line 99
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardOccluded$1;

    .line 101
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardOccluded$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 103
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 106
    move-result-object p5

    .line 109
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 110
    move-result-object p5

    .line 113
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    .line 114
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardUnlocked$1;

    .line 116
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardUnlocked$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 118
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 121
    move-result-object p5

    .line 124
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 125
    move-result-object p5

    .line 128
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardUnlocked:Lkotlinx/coroutines/flow/Flow;

    .line 129
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardGoingAway$1;

    .line 131
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardGoingAway$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 133
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 136
    move-result-object p5

    .line 139
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

    .line 140
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 142
    move-result p5

    .line 145
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    move-result-object p5

    .line 149
    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 150
    move-result-object p5

    .line 153
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isDozing:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 154
    new-instance p7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 156
    invoke-direct {p7, p5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 158
    iput-object p7, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDozing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 161
    invoke-static {p6}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 163
    move-result-object p5

    .line 166
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 167
    new-instance p7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 169
    invoke-direct {p7, p5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 171
    iput-object p7, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 174
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1;

    .line 176
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 178
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 181
    move-result-object p5

    .line 184
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 185
    move-result-object p5

    .line 188
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreamingWithOverlay:Lkotlinx/coroutines/flow/Flow;

    .line 189
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreaming$1;

    .line 191
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreaming$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 193
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 196
    move-result-object p5

    .line 199
    invoke-static {p5, p10}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 200
    move-result-object p5

    .line 203
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 204
    move-result-object p5

    .line 207
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreaming:Lkotlinx/coroutines/flow/Flow;

    .line 208
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$linearDozeAmount$1;

    .line 210
    invoke-direct {p5, p1, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$linearDozeAmount$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lkotlin/coroutines/Continuation;)V

    .line 212
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 215
    move-result-object p5

    .line 218
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->linearDozeAmount:Lkotlinx/coroutines/flow/Flow;

    .line 219
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1;

    .line 221
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 223
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 226
    move-result-object p5

    .line 229
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

    .line 230
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$statusBarState$1;

    .line 232
    invoke-direct {p5, p1, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$statusBarState$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 234
    invoke-static {p5}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 237
    move-result-object p1

    .line 240
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->statusBarState:Lkotlinx/coroutines/flow/Flow;

    .line 241
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;

    .line 243
    invoke-direct {p1, p3, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockState$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 245
    invoke-static {p1}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 248
    move-result-object p1

    .line 251
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->biometricUnlockState:Lkotlinx/coroutines/flow/Flow;

    .line 252
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1;

    .line 254
    invoke-direct {p1, p2, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1;-><init>(Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lkotlin/coroutines/Continuation;)V

    .line 256
    invoke-static {p1}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 259
    move-result-object p1

    .line 262
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/Flow;

    .line 263
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$fingerprintSensorLocation$1;

    .line 265
    invoke-direct {p1, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$fingerprintSensorLocation$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 267
    invoke-static {p1}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 270
    move-result-object p1

    .line 273
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->fingerprintSensorLocation:Lkotlinx/coroutines/flow/Flow;

    .line 274
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$faceSensorLocation$1;

    .line 276
    invoke-direct {p1, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$faceSensorLocation$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 278
    invoke-static {p1}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 281
    move-result-object p1

    .line 284
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->faceSensorLocation:Lkotlinx/coroutines/flow/Flow;

    .line 285
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockSource$1;

    .line 287
    invoke-direct {p1, p0, p6}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockSource$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 289
    invoke-static {p1}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 292
    move-result-object p1

    .line 295
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->biometricUnlockSource:Lkotlinx/coroutines/flow/Flow;

    .line 296
    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 298
    move-result-object p1

    .line 301
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isQuickSettingsVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 302
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 304
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 306
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isQuickSettingsVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 309
    return-void
    .line 311
.end method

.method public static final access$dozeMachineStateToModel(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/keyguard/shared/model/DozeStateModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    move-result p0

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string p1, "Invalid DozeMachine.State: state"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0

    .line 19
    :pswitch_0
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD_DOCKED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 20
    goto :goto_0

    .line 22
    :pswitch_1
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD_PAUSING:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 23
    goto :goto_0

    .line 25
    :pswitch_2
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD_PAUSED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 26
    goto :goto_0

    .line 28
    :pswitch_3
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->FINISH:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 29
    goto :goto_0

    .line 31
    :pswitch_4
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_PULSE_DONE:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 32
    goto :goto_0

    .line 34
    :pswitch_5
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 35
    goto :goto_0

    .line 37
    :pswitch_6
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_PULSING:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 38
    goto :goto_0

    .line 40
    :pswitch_7
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_REQUEST_PULSE:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 41
    goto :goto_0

    .line 43
    :pswitch_8
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 44
    goto :goto_0

    .line 46
    :pswitch_9
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 47
    goto :goto_0

    .line 49
    :pswitch_a
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 50
    goto :goto_0

    .line 52
    :pswitch_b
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->INITIALIZED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 53
    goto :goto_0

    .line 55
    :pswitch_c
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->UNINITIALIZED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 56
    :goto_0
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method

.method public static final access$statusBarStateIntToObject(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;I)Lcom/android/systemui/keyguard/shared/model/StatusBarState;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    if-eqz p1, :cond_2

    .line 5
    const/4 p0, 0x1

    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    const/4 p0, 0x2

    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->SHADE_LOCKED:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "Invalid StatusBarState value: "

    .line 18
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0

    .line 27
    :cond_1
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->KEYGUARD:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->SHADE:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    .line 31
    :goto_0
    return-object p0
    .line 33
.end method


# virtual methods
.method public final isKeyguardShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    return p0
    .line 8
.end method
