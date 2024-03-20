.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$attach$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Landroid/os/Parcelable;

    .line 28
    instance-of v2, p1, Landroid/app/smartspace/SmartspaceTarget;

    .line 30
    if-eqz v2, :cond_0

    .line 32
    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSourceNotificationKey()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    move-object v2, v1

    .line 46
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 47
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;

    .line 55
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;-><init>(Ljava/lang/String;)V

    .line 57
    :cond_1
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;

    .line 60
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->updateFilterStatus(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)Z

    .line 65
    move-result p1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_1
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 71
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 73
    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v2

    .line 80
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v3

    .line 84
    if-eqz v3, :cond_5

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 93
    move-result v4

    .line 96
    if-nez v4, :cond_3

    .line 97
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 102
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;

    .line 103
    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->cancelTimeoutRunnable:Ljava/lang/Runnable;

    .line 107
    if-eqz p1, :cond_4

    .line 109
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 111
    :cond_4
    const/4 p1, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    if-eqz p1, :cond_6

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    .line 118
    const-string v1, "onNewSmartspaceTargets"

    .line 120
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 122
    :cond_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    .line 125
    return-void
    .line 127
.end method
