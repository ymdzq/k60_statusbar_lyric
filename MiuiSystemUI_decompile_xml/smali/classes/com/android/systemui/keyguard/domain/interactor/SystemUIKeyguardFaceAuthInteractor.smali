.class public final Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;


# instance fields
.field public final authenticationStatus:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final detectionStatus:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final faceAuthenticationLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final listeners:Ljava/util/List;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/log/FaceAuthenticationLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;

    .line 5
    iput-object p7, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 7
    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->faceAuthenticationLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->listeners:Ljava/util/List;

    .line 16
    check-cast p3, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 18
    iget-object p1, p3, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 22
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 24
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->authenticationStatus:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 27
    iget-object p1, p3, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_detectionStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 29
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 31
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 33
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->detectionStatus:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final runFaceAuth(Lcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->faceAuthenticationLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 9
    const-string v0, "Skipping face auth request because feature flag is false"

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/FaceAuthenticationLogger;->ignoredFaceAuthTrigger(Lcom/android/keyguard/FaceAuthUiEvent;Ljava/lang/String;)V

    .line 13
    return-void
    .line 16
.end method

.method public final start()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
    .line 9
.end method
