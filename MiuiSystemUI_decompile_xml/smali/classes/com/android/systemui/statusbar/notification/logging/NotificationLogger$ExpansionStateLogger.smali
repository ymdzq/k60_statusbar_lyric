.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mExpansionStates:Ljava/util/Map;

.field public final mLoggedExpansionState:Ljava/util/Map;

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mExpansionStates:Ljava/util/Map;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 19
    const-string/jumbo p1, "statusbar"

    .line 21
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 24
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 32
    return-void
    .line 34
.end method


# virtual methods
.method public final getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mExpansionStates:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    .line 14
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>()V

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    return-object v0
    .line 22
.end method

.method public final maybeNotifyOnNotificationExpansionChanged(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    return-void

    .line 24
    :cond_1
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    return-void

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    .line 34
    check-cast v0, Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/Boolean;

    .line 42
    if-nez v2, :cond_3

    .line 44
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 52
    return-void

    .line 54
    :cond_3
    if-eqz v2, :cond_4

    .line 55
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 57
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    return-void

    .line 65
    :cond_4
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    .line 71
    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    .line 73
    new-instance p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;

    .line 76
    invoke-direct {p2, p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 81
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
    .line 86
.end method

.method public onEntryRemoved(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mExpansionStates:Ljava/util/Map;

    .line 2
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    .line 9
    check-cast p0, Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
    .line 16
.end method

.method public onEntryUpdated(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
    .line 9
.end method

.method public onExpansionChanged(Ljava/lang/String;ZZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p2

    .line 9
    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p2

    .line 15
    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 16
    iput-object p4, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->maybeNotifyOnNotificationExpansionChanged(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    .line 20
    return-void
    .line 23
.end method

.method public onVisibilityChanged(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    .line 6
    move-result-object p2

    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    aget-object v3, p1, v2

    .line 15
    iget-object v4, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    .line 19
    move-result-object v4

    .line 22
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    .line 25
    iget-object v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 27
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 29
    iget-object v3, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->maybeNotifyOnNotificationExpansionChanged(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    array-length p1, p2

    .line 39
    :goto_1
    if-ge v1, p1, :cond_1

    .line 40
    aget-object v0, p2, v1

    .line 42
    iget-object v0, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    .line 46
    move-result-object v0

    .line 49
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_1

    .line 56
    :cond_1
    return-void
    .line 57
.end method
