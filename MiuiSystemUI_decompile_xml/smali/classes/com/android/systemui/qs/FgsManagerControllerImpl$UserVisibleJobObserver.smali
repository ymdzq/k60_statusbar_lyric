.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;
.super Landroid/app/job/IUserVisibleJobObserver$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/app/job/IUserVisibleJobObserver$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 7
    invoke-virtual {p1}, Landroid/app/job/UserVisibleJobSummary;->getCallingUid()I

    .line 9
    move-result v2

    .line 12
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/app/job/UserVisibleJobSummary;->getCallingPackageName()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;ILjava/lang/String;)V

    .line 21
    const/4 v2, 0x0

    .line 24
    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 27
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 29
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 37
    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 39
    invoke-direct {v3, v4}, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;-><init>(Lcom/android/systemui/util/time/SystemClock;)V

    .line 41
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    check-cast v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 47
    iget-object p2, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->jobSummaries:Ljava/util/Set;

    .line 49
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_2

    .line 54
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 55
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 57
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 62
    check-cast p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 63
    if-eqz p2, :cond_3

    .line 65
    iget-object v3, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->jobSummaries:Ljava/util/Set;

    .line 67
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->fgsTokens:Ljava/util/Set;

    .line 72
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 74
    move-result p1

    .line 77
    const/4 v3, 0x1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->jobSummaries:Ljava/util/Set;

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 83
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    move p1, v3

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move p1, v2

    .line 91
    :goto_0
    if-ne p1, v3, :cond_3

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    move v3, v2

    .line 95
    :goto_1
    if-eqz v3, :cond_4

    .line 96
    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 98
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateNumberOfVisibleRunningPackagesLocked()V

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateAppItemsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0

    .line 112
    throw p0
    .line 113
.end method
