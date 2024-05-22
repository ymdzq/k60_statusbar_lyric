.class public final Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method

.method public static skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 4
    const-string v0, "com.miui.bugreport"

    .line 6
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method


# virtual methods
.method public final logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logMaybeHeadsUpDespiteOldWhen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logMaybeHeadsUpDespiteOldWhen$2;

    .line 11
    const-string v2, "InterruptionStateProvider"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, p6}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 29
    invoke-interface {v0, p2, p3}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 32
    invoke-interface {v0, p4, p5}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 38
    return-void
    .line 41
.end method

.method public final logNoAlertingSuppressedBy(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingSuppressedBy$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingSuppressedBy$2;

    .line 11
    const-string v2, "InterruptionStateProvider"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    const-string p1, "StatusBarNotificationPresenter"

    .line 29
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 37
    return-void
    .line 40
.end method

.method public final logNoFullscreenWarning(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoFullscreenWarning$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoFullscreenWarning$2;

    .line 4
    const-string v2, "InterruptionStateProvider"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

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

.method public final logNoPulsingNoAlert(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNoAlert$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNoAlert$2;

    .line 11
    const-string v2, "InterruptionStateProvider"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method
