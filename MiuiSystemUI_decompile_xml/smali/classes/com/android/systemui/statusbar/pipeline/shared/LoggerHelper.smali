.class public abstract Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static logOnCapabilitiesChanged(Lcom/android/systemui/log/LogBuffer;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnCapabilitiesChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnCapabilitiesChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    const-string v3, "WifiInputLog"

    .line 7
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 14
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 17
    move-result p1

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 21
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 31
    return-void
    .line 34
.end method

.method public static logOnLost(Lcom/android/systemui/log/LogBuffer;Landroid/net/Network;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnLost$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/LoggerHelper$logOnLost$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    const-string v3, "WifiInputLog"

    .line 7
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 13
    move-result p1

    .line 16
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 17
    const/4 p1, 0x0

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method
