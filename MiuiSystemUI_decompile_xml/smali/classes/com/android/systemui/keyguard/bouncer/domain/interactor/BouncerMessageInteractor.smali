.class public final Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final bouncerMessage:Lkotlinx/coroutines/flow/Flow;

.field public final factory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object/from16 v1, p2

    .line 6
    iput-object v1, v0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;->factory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

    .line 8
    sget-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 10
    new-instance v1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 12
    const-string v2, ""

    .line 14
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x1e

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 19
    new-instance v5, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 22
    invoke-direct {v5, v2, v3, v4}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 24
    new-instance v2, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 27
    invoke-direct {v2, v1, v5}, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;-><init>(Lcom/android/systemui/keyguard/bouncer/shared/model/Message;Lcom/android/systemui/keyguard/bouncer/shared/model/Message;)V

    .line 29
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 32
    invoke-direct {v6, v2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 34
    move-object/from16 v1, p1

    .line 37
    check-cast v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 39
    iget-object v7, v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    iget-object v8, v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

    .line 43
    iget-object v9, v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    iget-object v10, v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    iget-object v11, v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    iget-object v12, v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

    .line 51
    iget-object v13, v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricLockedOutMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 53
    move-object/from16 v1, p3

    .line 55
    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 57
    iget-object v1, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 59
    new-instance v14, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$map$1;

    .line 61
    invoke-direct {v14, v1, p0}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;)V

    .line 63
    filled-new-array/range {v6 .. v14}, [Lkotlinx/coroutines/flow/Flow;

    .line 66
    move-result-object v1

    .line 69
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v4

    .line 91
    if-eqz v4, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 97
    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .line 98
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 100
    new-instance v5, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;

    .line 102
    invoke-direct {v5, v3}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 104
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 107
    invoke-direct {v6, v2, v4, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 109
    move-object v2, v6

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 114
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 116
    move-result-object v1

    .line 119
    iput-object v1, v0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;->bouncerMessage:Lkotlinx/coroutines/flow/Flow;

    .line 120
    return-void

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 123
    const-string v1, "Empty collection can\'t be reduced."

    .line 125
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 127
    throw v0
    .line 130
.end method
