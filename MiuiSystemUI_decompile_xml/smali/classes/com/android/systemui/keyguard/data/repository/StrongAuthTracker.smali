.class public final Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _authFlags:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _nonStrongBiometricAllowed:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final currentUserAuthFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isStrongBiometricAllowed:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepository;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 5
    new-instance p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    .line 7
    move-object v0, p1

    .line 9
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 12
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 16
    move-object v1, p1

    .line 18
    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 21
    move-result-object v1

    .line 24
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 27
    move-result v1

    .line 30
    invoke-direct {p2, v0, v1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;-><init>(II)V

    .line 31
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 34
    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_authFlags:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 38
    new-instance p2, Lkotlin/Pair;

    .line 40
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 45
    move-result-object v0

    .line 48
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v0

    .line 54
    move-object v1, p1

    .line 55
    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 56
    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 58
    move-result-object v1

    .line 61
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 64
    move-result v1

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object v1

    .line 71
    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 75
    move-result-object p2

    .line 78
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_nonStrongBiometricAllowed:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 79
    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 81
    iget-object p2, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 83
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$1;

    .line 85
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, p2, v1}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 88
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 91
    move-result-object p2

    .line 94
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$1;

    .line 95
    const/4 v1, 0x0

    .line 97
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;)V

    .line 98
    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 101
    move-result-object p2

    .line 104
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->currentUserAuthFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 105
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;

    .line 107
    invoke-direct {v0, p2, p0}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;)V

    .line 109
    iput-object v0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->isStrongBiometricAllowed:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;

    .line 112
    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 114
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$1;

    .line 116
    const/4 v0, 0x2

    .line 118
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 119
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 122
    move-result-object p1

    .line 125
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$2;

    .line 126
    invoke-direct {p2, v1, p0}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;)V

    .line 128
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 131
    move-result-object p1

    .line 134
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 135
    return-void
    .line 137
.end method


# virtual methods
.method public final onIsNonStrongBiometricAllowedChanged(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_nonStrongBiometricAllowed:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    new-instance v1, Lkotlin/Pair;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v3

    .line 17
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "onIsNonStrongBiometricAllowedChanged for userId: "

    .line 26
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, ", "

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, "BiometricsRepositoryImpl"

    .line 39
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 41
    return-void
    .line 44
.end method

.method public final onStrongAuthRequiredChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_authFlags:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    new-instance v1, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    .line 8
    invoke-direct {v1, p1, v0}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;-><init>(II)V

    .line 10
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "onStrongAuthRequiredChanged for userId: "

    .line 18
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ", flag value: "

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    const-string p1, "BiometricsRepositoryImpl"

    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
    .line 43
.end method
