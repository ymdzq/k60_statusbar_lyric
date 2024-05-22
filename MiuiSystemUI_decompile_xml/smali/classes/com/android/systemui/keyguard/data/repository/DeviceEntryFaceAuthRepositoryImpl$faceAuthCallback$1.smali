.class public final Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 2
    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAuthenticationAcquired(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/AcquiredAuthenticationStatus;

    .line 6
    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/shared/model/AcquiredAuthenticationStatus;-><init>(I)V

    .line 8
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/ErrorAuthenticationStatus;

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/keyguard/shared/model/ErrorAuthenticationStatus;-><init>(ILjava/lang/String;)V

    .line 8
    const/16 v1, 0x9

    .line 11
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    move v4, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v3

    .line 19
    :goto_0
    if-eqz v4, :cond_1

    .line 20
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 22
    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 28
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 31
    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    invoke-virtual {v4, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 35
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 38
    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 40
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 44
    const/4 v4, 0x5

    .line 47
    if-ne p1, v4, :cond_2

    .line 48
    move v5, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v5, v3

    .line 52
    :goto_1
    const/4 v6, 0x3

    .line 53
    const/4 v7, 0x0

    .line 54
    if-eqz v5, :cond_4

    .line 55
    iget-object v5, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 57
    iget-object v8, v5, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->cancelNotReceivedHandlerJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 59
    if-eqz v8, :cond_3

    .line 61
    invoke-virtual {v8, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 63
    :cond_3
    new-instance v8, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$handleFaceCancellationError$1;

    .line 66
    invoke-direct {v8, v5, v7}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$handleFaceCancellationError$1;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 68
    iget-object v5, v5, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 71
    invoke-static {v5, v7, v7, v8, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 73
    :cond_4
    if-eq p1, v2, :cond_6

    .line 76
    const/4 v5, 0x2

    .line 78
    if-ne p1, v5, :cond_5

    .line 79
    goto :goto_2

    .line 81
    :cond_5
    move v5, v3

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    :goto_2
    move v5, v2

    .line 84
    :goto_3
    if-eqz v5, :cond_8

    .line 85
    iget-object v5, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 87
    iget-object v5, v5, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 89
    invoke-virtual {v5, v0}, Lcom/android/systemui/log/FaceAuthenticationLogger;->hardwareError(Lcom/android/systemui/keyguard/shared/model/ErrorAuthenticationStatus;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 94
    iget v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->retryCount:I

    .line 96
    const/16 v8, 0x14

    .line 98
    if-ge v5, v8, :cond_8

    .line 100
    add-int/2addr v5, v2

    .line 102
    iput v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->retryCount:I

    .line 103
    iget-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->halErrorRetryJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 105
    if-eqz v5, :cond_7

    .line 107
    invoke-virtual {v5, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 109
    :cond_7
    new-instance v5, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$handleFaceHardwareError$1;

    .line 112
    invoke-direct {v5, v0, v7}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$handleFaceHardwareError$1;-><init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 114
    iget-object v8, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 117
    invoke-static {v8, v7, v7, v5, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 119
    move-result-object v5

    .line 122
    iput-object v5, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->halErrorRetryJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 123
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 125
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 127
    if-ne p1, v1, :cond_9

    .line 129
    move v1, v2

    .line 131
    goto :goto_4

    .line 132
    :cond_9
    move v1, v3

    .line 133
    :goto_4
    if-ne p1, v4, :cond_a

    .line 134
    goto :goto_5

    .line 136
    :cond_a
    move v2, v3

    .line 137
    :goto_5
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/systemui/log/FaceAuthenticationLogger;->authenticationError(ILjava/lang/CharSequence;ZZ)V

    .line 138
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 141
    invoke-static {p0}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->access$onFaceAuthRequestCompleted(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V

    .line 143
    return-void
    .line 146
.end method

.method public final onAuthenticationFailed()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/FailedAuthenticationStatus;->INSTANCE:Lcom/android/systemui/keyguard/shared/model/FailedAuthenticationStatus;

    .line 6
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 22
    iget-object v1, v0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 24
    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    .line 26
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 28
    const-string v4, "Face authentication failed"

    .line 30
    const/4 v5, 0x0

    .line 32
    const/16 v6, 0x8

    .line 33
    const/4 v7, 0x0

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 39
    invoke-static {p0}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->access$onFaceAuthRequestCompleted(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V

    .line 41
    return-void
    .line 44
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAcquiredInfoIgnoreList:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/HelpAuthenticationStatus;

    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 26
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/shared/model/HelpAuthenticationStatus;-><init>(ILjava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 30
    return-void
    .line 33
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    new-instance v1, Lcom/android/systemui/keyguard/shared/model/SuccessAuthenticationStatus;

    .line 6
    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/shared/model/SuccessAuthenticationStatus;-><init>(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    .line 8
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 23
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/FaceAuthenticationLogger;->faceAuthSuccess(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 30
    invoke-static {p0}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->access$onFaceAuthRequestCompleted(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V

    .line 32
    return-void
    .line 35
.end method
