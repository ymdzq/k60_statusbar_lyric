.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 7
    invoke-direct {v1, p0, p3, p2}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;ILjava/lang/String;)V

    .line 9
    const/4 p2, 0x0

    .line 12
    if-eqz p4, :cond_1

    .line 13
    iget-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 15
    check-cast p3, Ljava/util/LinkedHashMap;

    .line 17
    invoke-virtual {p3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p4

    .line 22
    if-nez p4, :cond_0

    .line 23
    new-instance p4, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 25
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 27
    invoke-direct {p4, v2}, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;-><init>(Lcom/android/systemui/util/time/SystemClock;)V

    .line 29
    invoke-interface {p3, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    check-cast p4, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 35
    iget-object p3, p4, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->fgsTokens:Ljava/util/Set;

    .line 37
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_2

    .line 42
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 43
    check-cast p3, Ljava/util/LinkedHashMap;

    .line 45
    invoke-virtual {p3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p3

    .line 50
    check-cast p3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 51
    if-eqz p3, :cond_3

    .line 53
    iget-object p4, p3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->fgsTokens:Ljava/util/Set;

    .line 55
    invoke-interface {p4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->fgsTokens:Ljava/util/Set;

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 62
    move-result p1

    .line 65
    const/4 p4, 0x1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->jobSummaries:Ljava/util/Set;

    .line 69
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 71
    move-result p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    move p1, p4

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move p1, p2

    .line 79
    :goto_0
    if-ne p1, p4, :cond_3

    .line 80
    goto :goto_1

    .line 82
    :cond_3
    move p4, p2

    .line 83
    :goto_1
    if-eqz p4, :cond_4

    .line 84
    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 86
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateNumberOfVisibleRunningPackagesLocked()V

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateAppItemsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    monitor-exit v0

    .line 100
    throw p0
    .line 101
.end method
