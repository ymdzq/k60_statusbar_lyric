.class public final Lcom/android/systemui/privacy/logging/PrivacyLogger;
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
    iput-object p1, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logChipVisible(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;

    .line 4
    const-string v2, "PrivacyLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logCurrentProfilesChanged(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "PrivacyLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method

.method public final logPrivacyDialogDismissed()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;

    .line 4
    const-string v2, "PrivacyLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logPrivacyItemsToHold(Ljava/util/List;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsToHold$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsToHold$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "PrivacyLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const-string v2, ", "

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    sget-object v5, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    .line 19
    const/16 v6, 0x1e

    .line 21
    move-object v1, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

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

.method public final logPrivacyItemsUpdateScheduled(J)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsUpdateScheduled$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsUpdateScheduled$2;

    .line 4
    const-string v2, "PrivacyLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v1

    .line 18
    add-long/2addr v1, p1

    .line 19
    sget-object p1, Lcom/android/systemui/privacy/logging/PrivacyLoggerKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

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

.method public final logRetrievedPrivacyItemsList(Ljava/util/List;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logRetrievedPrivacyItemsList$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logRetrievedPrivacyItemsList$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "PrivacyLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const-string v2, ", "

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    sget-object v5, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    .line 19
    const/16 v6, 0x1e

    .line 21
    move-object v1, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

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

.method public final logShowDialogContents(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "PrivacyLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method

.method public final logStartSettingsActivityFromDialog(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;

    .line 4
    const-string v2, "PrivacyLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
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

.method public final logStatusBarIconsVisible(ZZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;

    .line 4
    const-string v2, "PrivacyLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

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

.method public final logUnfilteredPermGroupUsage(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "PrivacyLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method

.method public final logUpdatedItemFromAppOps(Ljava/lang/String;ZII)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;

    .line 4
    const-string v2, "PrivacyLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final logUpdatedItemFromMediaProjection(ZILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromMediaProjection$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromMediaProjection$2;

    .line 4
    const-string v2, "PrivacyLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method
