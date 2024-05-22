.class public final Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logChildDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logChildDismissed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logChildDismissed$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logDismissAll(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logDismissAll$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logDismissAll$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "NotifCollection"

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

.method public final logDismissOnAlreadyCanceledEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logDismissOnAlreadyCanceledEntry$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logDismissOnAlreadyCanceledEntry$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "NotifCollection"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logEntryBeingExtendedNotInCollection(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logEntryBeingExtendedNotInCollection$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logEntryBeingExtendedNotInCollection$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

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
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->getName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    return-void
    .line 35
.end method

.method public final logFutureDismissalAlreadyCancelledByServer(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalAlreadyCancelledByServer$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalAlreadyCancelledByServer$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "NotifCollection"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 20
    return-void
    .line 23
.end method

.method public final logFutureDismissalDismissing(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalDismissing$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalDismissing$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    return-void
    .line 26
.end method

.method public final logFutureDismissalDoubleCancelledByServer(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalDoubleCancelledByServer$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalDoubleCancelledByServer$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 20
    return-void
    .line 23
.end method

.method public final logFutureDismissalDoubleRun(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalDoubleRun$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalDoubleRun$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "NotifCollection"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 20
    return-void
    .line 23
.end method

.method public final logFutureDismissalGotSystemServerCancel(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalGotSystemServerCancel$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalGotSystemServerCancel$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    return-void
    .line 26
.end method

.method public final logFutureDismissalMismatchedEntry(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalMismatchedEntry$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalMismatchedEntry$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 20
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 30
    return-void
    .line 33
.end method

.method public final logFutureDismissalRegistered(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalRegistered$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalRegistered$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 20
    return-void
    .line 23
.end method

.method public final logFutureDismissalReused(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalReused$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFutureDismissalReused$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 20
    return-void
    .line 23
.end method

.method public final logLifetimeExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logLifetimeExtended$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logLifetimeExtended$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

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
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->getName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    return-void
    .line 32
.end method

.method public final logLifetimeExtensionEnded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logLifetimeExtensionEnded$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logLifetimeExtensionEnded$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "NotifCollection"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->getName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    return-void
    .line 35
.end method

.method public final logNoNotificationToRemoveWithKey(Landroid/service/notification/StatusBarNotification;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNoNotificationToRemoveWithKey$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNoNotificationToRemoveWithKey$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    return-void
    .line 36
.end method

.method public final logNonExistentNotifDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNonExistentNotifDismissed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNonExistentNotifDismissed$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logNotifClearAllDismissalIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifClearAllDismissalIntercepted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifClearAllDismissalIntercepted$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logNotifDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifDismissed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifDismissed$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logNotifDismissedIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifDismissedIntercepted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifDismissedIntercepted$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logNotifGroupPosted(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifGroupPosted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifGroupPosted$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "NotifCollection"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final logNotifInternalUpdate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifInternalUpdate$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifInternalUpdate$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

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
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logNotifInternalUpdateFailed(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifInternalUpdateFailed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifInternalUpdateFailed$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 24
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 34
    return-void
    .line 37
.end method

.method public final logNotifPosted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifPosted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifPosted$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logNotifReleased(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifReleased$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifReleased$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "NotifCollection"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logNotifRemoved(Landroid/service/notification/StatusBarNotification;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifRemoved$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifRemoved$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    return-void
    .line 36
.end method

.method public final logNotifUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifUpdated$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logNotifUpdated$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logRemoteExceptionOnClearAllNotifications(Landroid/os/RemoteException;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRemoteExceptionOnClearAllNotifications$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRemoteExceptionOnClearAllNotifications$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

.method public final logRemoteExceptionOnNotificationClear(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/os/RemoteException;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRemoteExceptionOnNotificationClear$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRemoteExceptionOnNotificationClear$2;

    .line 4
    const-string v2, "NotifCollection"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

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
    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    return-void
    .line 32
.end method
