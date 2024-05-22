.class public final Lcom/android/keyguard/logging/KeyguardLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/android/keyguard/logging/KeyguardLogger$log$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardLogger$log$2;

    .line 3
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object p1

    .line 4
    invoke-interface {p1, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final logKeyguardSwitchIndication(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;-><init>(Lcom/android/keyguard/logging/KeyguardLogger;)V

    .line 6
    const/4 v2, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    const-string v3, "KeyguardIndication"

    .line 12
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method

.method public final logRefreshBatteryInfo(ZZI)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardLogger$logRefreshBatteryInfo$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardLogger$logRefreshBatteryInfo$2;

    .line 4
    const-string v2, "KeyguardIndication"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

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
    const/4 p1, 0x0

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 22
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logUpdateBatteryIndication(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardLogger$logUpdateBatteryIndication$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardLogger$logUpdateBatteryIndication$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardIndication"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logUpdateDeviceEntryIndication(ZZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardLogger$logUpdateDeviceEntryIndication$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardLogger$logUpdateDeviceEntryIndication$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardIndication"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method
