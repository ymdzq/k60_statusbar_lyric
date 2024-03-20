.class public final Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logDefaultConnectionsChanged(Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logDefaultConnectionsChanged$2;

    .line 4
    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logDefaultConnectionsChanged$2;-><init>(Ljava/lang/Object;)V

    .line 6
    const/4 v2, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    const-string v3, "ConnectivityInputLogger"

    .line 12
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->wifi:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;

    .line 18
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;->isDefault:Z

    .line 20
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 22
    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->mobile:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;

    .line 25
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;->isDefault:Z

    .line 27
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 29
    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->carrierMerged:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;

    .line 32
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;->isDefault:Z

    .line 34
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 36
    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->ethernet:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;

    .line 39
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;->isDefault:Z

    .line 41
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool4(Z)V

    .line 43
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->isValidated:Z

    .line 46
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 51
    return-void
    .line 54
.end method

.method public final logOnDefaultCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnCapabilitiesChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnCapabilitiesChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ConnectivityInputLogger"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 19
    move-result p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 23
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    return-void
    .line 36
.end method

.method public final logOnDefaultLost(Landroid/net/Network;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnLost$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnLost$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ConnectivityInputLogger"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 15
    move-result p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 19
    const/4 p1, 0x1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 26
    return-void
    .line 29
.end method

.method public final logTuningChanged(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logTuningChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logTuningChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ConnectivityInputLogger"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logVcnSubscriptionId(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logVcnSubscriptionId$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logVcnSubscriptionId$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ConnectivityInputLogger"

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
