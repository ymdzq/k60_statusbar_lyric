.class public final Lcom/android/systemui/log/NotificationShadeDepthLogger;
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
    iput-object p1, p0, Lcom/android/systemui/log/NotificationShadeDepthLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logShouldApplyBlur(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/NotificationShadeDepthLogger$logShouldApplyBlur$2;->INSTANCE:Lcom/android/systemui/log/NotificationShadeDepthLogger$logShouldApplyBlur$2;

    .line 4
    const-string v2, "NotificationShadeDepthLogger"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/NotificationShadeDepthLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 21
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final logUpdateBlur(Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 4

    .line 1
    rem-int/lit8 v0, p2, 0xa

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/log/NotificationShadeDepthLogger$logUpdateBlur$2;->INSTANCE:Lcom/android/systemui/log/NotificationShadeDepthLogger$logUpdateBlur$2;

    .line 9
    const/4 v2, 0x0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/log/NotificationShadeDepthLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    const-string v3, "NotificationShadeDepthLogger"

    .line 14
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, p6}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 23
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 26
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 29
    invoke-interface {v0, p5}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 32
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 38
    return-void
    .line 41
.end method

.method public final logUpdateShadeBlur(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/log/NotificationShadeDepthLogger$logUpdateShadeBlur$2;->INSTANCE:Lcom/android/systemui/log/NotificationShadeDepthLogger$logUpdateShadeBlur$2;

    .line 4
    const-string v2, "NotificationShadeDepthLogger"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/log/NotificationShadeDepthLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method
