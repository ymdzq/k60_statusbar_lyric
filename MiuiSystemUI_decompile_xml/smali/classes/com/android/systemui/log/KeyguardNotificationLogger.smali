.class public final Lcom/android/systemui/log/KeyguardNotificationLogger;
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
    iput-object p1, p0, Lcom/android/systemui/log/KeyguardNotificationLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final add(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/log/KeyguardNotificationLogger$add$2;->INSTANCE:Lcom/android/systemui/log/KeyguardNotificationLogger$add$2;

    .line 11
    const-string v2, "KeyguardNotification"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/log/KeyguardNotificationLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "db"

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 27
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    return-void
    .line 36
.end method

.method public final clear()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/log/KeyguardNotificationLogger$clear$2;->INSTANCE:Lcom/android/systemui/log/KeyguardNotificationLogger$clear$2;

    .line 11
    const-string v2, "KeyguardNotification"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/log/KeyguardNotificationLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "db"

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final query(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/log/KeyguardNotificationLogger$query$2;->INSTANCE:Lcom/android/systemui/log/KeyguardNotificationLogger$query$2;

    .line 11
    const-string v2, "KeyguardNotification"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/log/KeyguardNotificationLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "query"

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 30
    return-void
    .line 33
.end method

.method public final remove(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/log/KeyguardNotificationLogger$remove$2;->INSTANCE:Lcom/android/systemui/log/KeyguardNotificationLogger$remove$2;

    .line 11
    const-string v2, "KeyguardNotification"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/log/KeyguardNotificationLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "db"

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 27
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    return-void
    .line 36
.end method

.method public final update(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/log/KeyguardNotificationLogger$update$2;->INSTANCE:Lcom/android/systemui/log/KeyguardNotificationLogger$update$2;

    .line 11
    const-string v2, "KeyguardNotification"

    .line 13
    iget-object p0, p0, Lcom/android/systemui/log/KeyguardNotificationLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "db"

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 27
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    return-void
    .line 36
.end method
