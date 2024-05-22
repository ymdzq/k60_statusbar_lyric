.class public final Lcom/android/keyguard/logging/CarrierTextManagerLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logCallbackSentFromUpdate(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2;

    .line 4
    const-string v2, "CarrierTextManagerLog"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 21
    iget-boolean v1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    .line 24
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 26
    iget-boolean p1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    .line 29
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 34
    return-void
    .line 37
.end method

.method public final logUpdate(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdate$2;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdate$2;-><init>(Lcom/android/keyguard/logging/CarrierTextManagerLogger;)V

    .line 6
    const/4 v2, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    const-string v3, "CarrierTextManagerLog"

    .line 12
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
.end method

.method public final logUpdateCarrierTextForReason(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;

    .line 4
    invoke-direct {v1, p1, p0}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;-><init>(ILcom/android/keyguard/logging/CarrierTextManagerLogger;)V

    .line 6
    const/4 v2, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    const-string v3, "CarrierTextManagerLog"

    .line 12
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
.end method

.method public final logUpdateFromStickyBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateFromStickyBroadcast$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateFromStickyBroadcast$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "CarrierTextManagerLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logUpdateLoopStart(IILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateLoopStart$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateLoopStart$2;

    .line 4
    const-string v2, "CarrierTextManagerLog"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method

.method public final logUpdateWfcCheck()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateWfcCheck$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateWfcCheck$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "CarrierTextManagerLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method
