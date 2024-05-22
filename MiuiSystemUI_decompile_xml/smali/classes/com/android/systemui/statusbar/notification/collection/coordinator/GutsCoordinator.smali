.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

.field public final mGutsListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

.field public final mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;

.field public final notifGutsViewManager:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

.field public final notifsExtendingLifetime:Landroid/util/ArraySet;

.field public final notifsWithOpenGuts:Landroid/util/ArraySet;

.field public onEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifGutsViewManager:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    .line 7
    new-instance p1, Landroid/util/ArraySet;

    .line 9
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    .line 14
    new-instance p1, Landroid/util/ArraySet;

    .line 16
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsExtendingLifetime:Landroid/util/ArraySet;

    .line 21
    sget-object p1, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 23
    const-string p2, "GutsCoordinator"

    .line 25
    invoke-virtual {p3, p2, p0, p1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 27
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;

    .line 35
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

    .line 42
    return-void
    .line 44
.end method

.method public static final access$closeGutsAndEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    .line 7
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsExtendingLifetime:Landroid/util/ArraySet;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->onEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;

    .line 26
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;->onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifGutsViewManager:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 12
    return-void
    .line 15
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 4
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "  notifsWithOpenGuts: "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p2

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 32
    const-string v1, "   * "

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsExtendingLifetime:Landroid/util/ArraySet;

    .line 47
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 49
    move-result v0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "  notifsExtendingLifetime: "

    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p2

    .line 73
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 86
    goto :goto_1

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->onEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "  onEndLifetimeExtensionCallback: "

    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    return-void
    .line 109
.end method
