.class public abstract Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static logPackageNotFound(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logPackageNotFound$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logPackageNotFound$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 7
    move-result-object p1

    .line 10
    invoke-interface {p1, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 14
    return-void
    .line 17
.end method

.method public static logStateChange(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 7
    move-result-object p1

    .line 10
    invoke-interface {p1, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1, p4}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 20
    return-void
    .line 23
.end method

.method public static logStateChangeError(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChangeError$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChangeError$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 7
    move-result-object p1

    .line 10
    invoke-interface {p1, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 14
    return-void
    .line 17
.end method
