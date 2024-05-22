.class public final Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final _authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _canRunFaceAuth:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _detectionStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public authCancellationSignal:Landroid/os/CancellationSignal;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

.field public final canRunDetection:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public cancelNotReceivedHandlerJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public cancellationInProgress:Z

.field public detectCancellationSignal:Landroid/os/CancellationSignal;

.field public final detectionCallback:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;

.field public final faceAcquiredInfoIgnoreList:Ljava/util/Set;

.field public final faceAuthCallback:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;

.field public final faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

.field public faceAuthRequestedWhileCancellation:Lcom/android/keyguard/FaceAuthUiEvent;

.field public final faceManager:Landroid/hardware/face/FaceManager;

.field public halErrorRetryJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final isBypassEnabled:Lkotlinx/coroutines/flow/Flow;

.field public final isDetectionSupported:Z

.field public final isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public retryCount:I

.field public final sessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final uiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceManager;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/log/SessionTracker;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/FaceAuthenticationLogger;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceManager:Landroid/hardware/face/FaceManager;

    move-object v3, p3

    .line 3
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 4
    iput-object v2, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v3, p5

    .line 5
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v3, p6

    .line 6
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v3, p7

    .line 7
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v3, p8

    .line 8
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object v3, p9

    .line 9
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->uiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v3, p10

    .line 10
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    move-object/from16 v3, p11

    .line 11
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    move-object/from16 v3, p14

    .line 12
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    move-object/from16 v3, p15

    .line 13
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object/from16 v3, p16

    .line 14
    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    const/4 v3, 0x0

    .line 15
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 16
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_detectionStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz v5, :cond_0

    iget-boolean v5, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isDetectionSupported:Z

    .line 20
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 21
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_canRunFaceAuth:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->canRunDetection:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 23
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v2, :cond_1

    .line 24
    new-instance v5, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1;

    invoke-direct {v5, p4, v3}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lkotlin/coroutines/Continuation;)V

    .line 25
    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    if-nez v2, :cond_2

    .line 26
    :cond_1
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v2, v4}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 27
    :cond_2
    iput-object v2, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isBypassEnabled:Lkotlinx/coroutines/flow/Flow;

    .line 28
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceLockoutResetCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceLockoutResetCallback$1;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p2, v2}, Landroid/hardware/face/FaceManager;->addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    .line 30
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030052    # @array/config_face_acquire_device_entry_ignorelist

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    .line 33
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 34
    iput-object v1, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAcquiredInfoIgnoreList:Ljava/util/Set;

    const-string v1, "DeviceEntryFaceAuthRepositoryImpl"

    move-object/from16 v2, p21

    .line 35
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 36
    sget-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 37
    new-instance v1, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthCallback:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;

    .line 38
    new-instance v1, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->detectionCallback:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;

    return-void
.end method

.method public static final access$onFaceAuthRequestCompleted(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->cancellationInProgress:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->authCancellationSignal:Landroid/os/CancellationSignal;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final authenticate(Lcom/android/keyguard/FaceAuthUiEvent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result v1

    .line 13
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const-string p0, "face auth is currently running"

    .line 20
    invoke-virtual {v3, p1, p0}, Lcom/android/systemui/log/FaceAuthenticationLogger;->ignoredFaceAuthTrigger(Lcom/android/keyguard/FaceAuthUiEvent;Ljava/lang/String;)V

    .line 22
    return-object v2

    .line 25
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->cancellationInProgress:Z

    .line 26
    if-eqz v1, :cond_1

    .line 28
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthRequestedWhileCancellation:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 30
    invoke-virtual {v3, p2, p1}, Lcom/android/systemui/log/FaceAuthenticationLogger;->queuingRequestWhileCancelling(Lcom/android/keyguard/FaceAuthUiEvent;Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthRequestedWhileCancellation:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 35
    return-object v2

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthRequestedWhileCancellation:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 39
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_canRunFaceAuth:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result v4

    .line 52
    iget-object v5, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 53
    if-eqz v4, :cond_2

    .line 55
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;

    .line 57
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;Lcom/android/keyguard/FaceAuthUiEvent;Lkotlin/coroutines/Continuation;)V

    .line 59
    invoke-static {v5, p2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    if-eqz p2, :cond_9

    .line 67
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->canRunDetection:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 69
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    move-result p2

    .line 80
    if-eqz p2, :cond_9

    .line 81
    const-string p2, "face auth gating check is false, falling back to detection."

    .line 83
    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/log/FaceAuthenticationLogger;->ignoredFaceAuthTrigger(Lcom/android/keyguard/FaceAuthUiEvent;Ljava/lang/String;)V

    .line 85
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isDetectionSupported:Z

    .line 88
    if-nez p1, :cond_4

    .line 90
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceManager:Landroid/hardware/face/FaceManager;

    .line 92
    if-eqz p0, :cond_3

    .line 94
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 96
    move-result-object v1

    .line 99
    :cond_3
    invoke-virtual {v3, p0, v1}, Lcom/android/systemui/log/FaceAuthenticationLogger;->detectionNotSupported(Landroid/hardware/face/FaceManager;Ljava/util/List;)V

    .line 100
    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 107
    check-cast p1, Ljava/lang/Boolean;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    move-result p1

    .line 113
    if-nez p1, :cond_6

    .line 114
    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->detectCancellationSignal:Landroid/os/CancellationSignal;

    .line 116
    if-eqz p1, :cond_5

    .line 118
    goto :goto_0

    .line 120
    :cond_5
    new-instance p1, Landroid/os/CancellationSignal;

    .line 121
    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->detectCancellationSignal:Landroid/os/CancellationSignal;

    .line 126
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detect$2;

    .line 128
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detect$2;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 130
    invoke-static {v5, p1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 133
    move-result-object p0

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 141
    check-cast p1, Ljava/lang/Boolean;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    move-result p1

    .line 147
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->detectCancellationSignal:Landroid/os/CancellationSignal;

    .line 148
    if-eqz p0, :cond_7

    .line 150
    const/4 p0, 0x1

    .line 152
    goto :goto_1

    .line 153
    :cond_7
    const/4 p0, 0x0

    .line 154
    :goto_1
    invoke-virtual {v3, p1, p0}, Lcom/android/systemui/log/FaceAuthenticationLogger;->skippingDetection(ZZ)V

    .line 155
    :goto_2
    move-object p0, v2

    .line 158
    :goto_3
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 159
    if-ne p0, p1, :cond_8

    .line 161
    return-object p0

    .line 163
    :cond_8
    return-object v2

    .line 164
    :cond_9
    const-string p0, "face auth & detect gating check is false"

    .line 165
    invoke-virtual {v3, p1, p0}, Lcom/android/systemui/log/FaceAuthenticationLogger;->ignoredFaceAuthTrigger(Lcom/android/keyguard/FaceAuthUiEvent;Ljava/lang/String;)V

    .line 167
    return-object v2
    .line 170
.end method

.method public final cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->authCancellationSignal:Landroid/os/CancellationSignal;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 7
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$cancel$1;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$cancel$1;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 13
    const/4 v2, 0x3

    .line 16
    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 17
    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->cancelNotReceivedHandlerJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 23
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->cancellationInProgress:Z

    .line 26
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 32
    return-void
    .line 35
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "DeviceEntryFaceAuthRepositoryImpl state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->cancellationInProgress:Z

    .line 7
    const-string v0, "  cancellationInProgress: "

    .line 9
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 11
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "  _isLockedOut.value: "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 37
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "  _isAuthRunning.value: "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "  isDetectionSupported: "

    .line 62
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isDetectionSupported:Z

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string p2, "  FaceManager state:"

    .line 79
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "    faceManager: "

    .line 86
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceManager:Landroid/hardware/face/FaceManager;

    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const/4 p2, 0x0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 106
    move-result-object v1

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    move-object v1, p2

    .line 111
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    const-string v3, "    sensorPropertiesInternal: "

    .line 114
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 125
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 131
    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 140
    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 141
    if-eqz v0, :cond_1

    .line 143
    iget-boolean v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    move-result-object v0

    .line 150
    goto :goto_1

    .line 151
    :cond_1
    move-object v0, p2

    .line 152
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "    supportsFaceDetection: "

    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthRequestedWhileCancellation:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 170
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 174
    move-result-object p2

    .line 177
    :cond_2
    const-string v0, "  faceAuthRequestedWhileCancellation: "

    .line 178
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 180
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->authCancellationSignal:Landroid/os/CancellationSignal;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "  authCancellationSignal: "

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->detectCancellationSignal:Landroid/os/CancellationSignal;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "  detectCancellationSignal: "

    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p2

    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "  faceAcquiredInfoIgnoreList: "

    .line 223
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAcquiredInfoIgnoreList:Ljava/util/Set;

    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p2

    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 240
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 242
    move-result-object p2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "  _authenticationStatus: "

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p2

    .line 259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_detectionStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 263
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 265
    move-result-object p2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "  _detectionStatus: "

    .line 271
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object p2

    .line 282
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 286
    check-cast p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 288
    invoke-virtual {p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 290
    move-result-object p2

    .line 293
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 294
    const-string v0, "  currentUserId: "

    .line 296
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 298
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 301
    const/4 v0, 0x1

    .line 303
    invoke-virtual {p2, v0}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 304
    move-result-object p2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "  keyguardSessionId: "

    .line 310
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object p2

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 325
    if-eqz p0, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 329
    move-result p0

    .line 332
    goto :goto_2

    .line 333
    :cond_3
    const/4 p0, 0x0

    .line 334
    :goto_2
    const-string p2, "  lockscreenBypassEnabled: "

    .line 335
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 337
    return-void
    .line 340
.end method
