.class public final Lcom/android/systemui/log/FaceAuthenticationLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final attemptingRetryAfterHardwareError(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$attemptingRetryAfterHardwareError$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$attemptingRetryAfterHardwareError$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final authenticating(Lcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$authenticating$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$authenticating$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method

.method public final authenticationError(ILjava/lang/CharSequence;ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$authenticationError$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$authenticationError$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 25
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 31
    return-void
    .line 34
.end method

.method public final cancelSignalNotReceived(ZZZLcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$cancelSignalNotReceived$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$cancelSignalNotReceived$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 21
    if-eqz p4, :cond_0

    .line 24
    invoke-virtual {p4}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 29
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 37
    return-void
    .line 40
.end method

.method public final detectionNotSupported(Landroid/hardware/face/FaceManager;Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$detectionNotSupported$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$detectionNotSupported$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    move p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, v2

    .line 21
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 22
    if-eqz p2, :cond_2

    .line 25
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    move v1, v2

    .line 34
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 35
    if-eqz p2, :cond_3

    .line 38
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 44
    if-eqz p1, :cond_3

    .line 46
    iget-boolean v2, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    .line 48
    :cond_3
    invoke-interface {v0, v2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 53
    return-void
    .line 56
.end method

.method public final faceAuthSuccess(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$faceAuthSuccess$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$faceAuthSuccess$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    .line 15
    move-result v1

    .line 18
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 19
    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->isStrongBiometric()Z

    .line 22
    move-result p1

    .line 25
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    return-void
    .line 32
.end method

.method public final hardwareError(Lcom/android/systemui/keyguard/shared/model/ErrorAuthenticationStatus;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$hardwareError$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$hardwareError$2;

    .line 4
    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/android/systemui/keyguard/shared/model/ErrorAuthenticationStatus;->msg:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 21
    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/ErrorAuthenticationStatus;->msgId:I

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    return-void
    .line 32
.end method

.method public final ignoredFaceAuthTrigger(Lcom/android/keyguard/FaceAuthUiEvent;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$ignoredFaceAuthTrigger$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$ignoredFaceAuthTrigger$2;

    .line 4
    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final launchingQueuedFaceAuthRequest(Lcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$launchingQueuedFaceAuthRequest$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$launchingQueuedFaceAuthRequest$2;

    .line 4
    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 26
    return-void
    .line 29
.end method

.method public final queuingRequestWhileCancelling(Lcom/android/keyguard/FaceAuthUiEvent;Lcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$queuingRequestWhileCancelling$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$queuingRequestWhileCancelling$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 31
    return-void
    .line 34
.end method

.method public final skippingDetection(ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$skippingDetection$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$skippingDetection$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method
