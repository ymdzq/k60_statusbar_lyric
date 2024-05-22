.class public final Lcom/android/systemui/qs/logging/QSLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/log/ConstantStringsLogger;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final configChangedBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/logging/QSLogger;->configChangedBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    new-instance p2, Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 9
    const-string v0, "QSLog"

    .line 11
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;-><init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 16
    return-void
    .line 18
.end method

.method public static toStateString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    const-string/jumbo p0, "wrong state"

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "active"

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    const-string p0, "inactive"

    .line 17
    goto :goto_0

    .line 19
    :cond_2
    const-string/jumbo p0, "unavailable"

    .line 20
    :goto_0
    return-object p0
    .line 23
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v1, Lcom/android/systemui/qs/logging/QSLogger$d$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/logging/QSLogger$d$2;-><init>(Ljava/lang/String;)V

    const-string p2, "QSLog"

    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->e(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logAllTilesChangeListening$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logAllTilesChangeListening$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method

.method public final logException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/systemui/qs/logging/QSLogger$logException$2;

    .line 4
    invoke-direct {v1, p2}, Lcom/android/systemui/qs/logging/QSLogger$logException$2;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p2, "QSLog"

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 11
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 17
    return-void
    .line 20
.end method

.method public final logHandleClick(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logHandleClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logHandleClick$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logHandleLongClick(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logHandleLongClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logHandleLongClick$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logHandleSecondaryClick(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logHandleSecondaryClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logHandleSecondaryClick$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logInternetTileUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logInternetTileUpdate$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logInternetTileUpdate$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method

.method public final logOnConfigurationChanged(Ljava/lang/String;IIZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->configChangedBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 21
    invoke-interface {v0, p5}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 24
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 30
    return-void
    .line 33
.end method

.method public final logOnViewAttached(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logOnViewAttached$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logOnViewAttached$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logOnViewDetached(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logOnViewDetached$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logOnViewDetached$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logPanelExpanded(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logPanelExpanded$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logPanelExpanded$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

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

.method public final logSwitchTileLayout(ZZZLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logSwitchTileLayout$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logSwitchTileLayout$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 21
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final logTileAdded(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileAdded$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileAdded$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

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

.method public final logTileBackgroundColorUpdateIfInternetTile(Ljava/lang/String;ZII)V
    .locals 4

    .line 1
    const-string v0, "internet"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileBackgroundColorUpdateIfInternetTile$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileBackgroundColorUpdateIfInternetTile$2;

    .line 13
    const-string v2, "QSLog"

    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v0

    .line 23
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 27
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 30
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 36
    return-void
    .line 39
.end method

.method public final logTileChangeListening(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileChangeListening$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileChangeListening$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logTileClick(ILjava/lang/String;II)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileClick$2;

    .line 4
    const-string v2, "QSLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 25
    invoke-static {p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileDestroyed$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDestroyed$2;

    .line 4
    const-string v2, "QSLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

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
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logTileDistributed(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileDistributed$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDistributed$2;

    .line 4
    const-string v2, "QSLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logTileDistributionInProgress(II)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "QSLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logTileLongClick(ILjava/lang/String;II)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;

    .line 4
    const-string v2, "QSLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 25
    invoke-static {p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logTileSecondaryClick(ILjava/lang/String;II)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileSecondaryClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileSecondaryClick$2;

    .line 4
    const-string v2, "QSLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 25
    invoke-static {p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logTileUpdated(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileUpdated$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileUpdated$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "QSLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 18
    if-eqz p2, :cond_0

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p2, v3

    .line 27
    :goto_0
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 28
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 31
    if-eqz p2, :cond_1

    .line 33
    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 38
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 39
    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 42
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 44
    instance-of p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 47
    if-eqz p2, :cond_2

    .line 49
    const/4 p2, 0x1

    .line 51
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 52
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 55
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 57
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 59
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 62
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 64
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 67
    return-void
    .line 70
.end method

.method public final logVisibility(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logVisibility$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logVisibility$2;

    .line 4
    const-string v2, "QSLog"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "QS fragment"

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    if-eqz p1, :cond_2

    .line 20
    const/4 v1, 0x4

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    const/16 v1, 0x8

    .line 25
    if-eq p1, v1, :cond_0

    .line 27
    const-string/jumbo p1, "undefined"

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "GONE"

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const-string p1, "INVISIBLE"

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    const-string p1, "VISIBLE"

    .line 39
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 44
    return-void
    .line 47
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->v(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->w(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method
