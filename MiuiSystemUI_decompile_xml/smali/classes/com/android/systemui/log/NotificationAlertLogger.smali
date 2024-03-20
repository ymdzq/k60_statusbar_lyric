.class public final Lcom/android/systemui/log/NotificationAlertLogger;
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
    iput-object p1, p0, Lcom/android/systemui/log/NotificationAlertLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logBadge(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "com.miui.bugreport"

    .line 2
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    sget-object p3, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v0, Lcom/android/systemui/log/NotificationAlertLogger$logBadge$2;->INSTANCE:Lcom/android/systemui/log/NotificationAlertLogger$logBadge$2;

    .line 13
    const-string v1, "NotificationAlertLogger"

    .line 15
    iget-object p0, p0, Lcom/android/systemui/log/NotificationAlertLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v1, p3, v0, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object p3

    .line 23
    invoke-interface {p3, p4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {p3, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 27
    invoke-interface {p3, p6}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 30
    invoke-interface {p3, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 33
    invoke-interface {p3, p5}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 39
    return-void
    .line 42
.end method

.method public final logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 4
    const-string v1, "com.miui.bugreport"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 15
    sget-object v1, Lcom/android/systemui/log/NotificationAlertLogger$logHeadsUp$2;->INSTANCE:Lcom/android/systemui/log/NotificationAlertLogger$logHeadsUp$2;

    .line 17
    const-string v2, "InterruptionStateProvider"

    .line 19
    iget-object p0, p0, Lcom/android/systemui/log/NotificationAlertLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 21
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 24
    move-result-object v0

    .line 27
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 28
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 30
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 36
    return-void
    .line 39
.end method

.method public final logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 4
    const-string v1, "com.miui.bugreport"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 15
    sget-object v1, Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;->INSTANCE:Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;

    .line 17
    const-string v2, "NotificationAlertLogger"

    .line 19
    iget-object p0, p0, Lcom/android/systemui/log/NotificationAlertLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 21
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 24
    move-result-object v0

    .line 27
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 28
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 30
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 36
    return-void
    .line 39
.end method
