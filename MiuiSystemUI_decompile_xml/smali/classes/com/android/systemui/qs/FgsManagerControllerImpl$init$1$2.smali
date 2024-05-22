.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->_showFooterDot:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    const-string/jumbo v1, "task_manager_show_footer_dot"

    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result v2

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 30
    const-string/jumbo v1, "show_stop_button_for_user_allowlisted_apps"

    .line 32
    iget-boolean v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showStopBtnForUserAllowlistedApps:Z

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    move-result v1

    .line 40
    iput-boolean v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showStopBtnForUserAllowlistedApps:Z

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 43
    iget-boolean v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    .line 45
    const-string/jumbo v2, "task_manager_show_user_visible_jobs"

    .line 47
    invoke-virtual {p1, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    move-result v2

    .line 53
    iput-boolean v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 56
    iget-boolean v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    .line 58
    if-eq v2, v1, :cond_3

    .line 60
    if-eqz v2, :cond_0

    .line 62
    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->jobScheduler:Landroid/app/job/JobScheduler;

    .line 64
    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    .line 66
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V

    .line 68
    goto :goto_1

    .line 71
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->jobScheduler:Landroid/app/job/JobScheduler;

    .line 72
    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    .line 74
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V

    .line 76
    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 79
    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 82
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 84
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 86
    move-result-object v2

    .line 89
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v2

    .line 93
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 103
    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 106
    move-result-object v4

    .line 109
    check-cast v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 112
    move-result-object v3

    .line 115
    check-cast v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 116
    iget-object v5, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->fgsTokens:Ljava/util/Set;

    .line 118
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 120
    move-result v5

    .line 123
    xor-int/lit8 v5, v5, 0x1

    .line 124
    if-eqz v5, :cond_1

    .line 126
    iget-object v3, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->jobSummaries:Ljava/util/Set;

    .line 128
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 134
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateNumberOfVisibleRunningPackagesLocked()V

    .line 140
    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateAppItemsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v1

    .line 147
    goto :goto_1

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    monitor-exit v1

    .line 150
    throw p0

    .line 151
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 152
    const-string/jumbo v0, "show_stop_button_for_user_allowlisted_apps"

    .line 154
    iget-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->informJobSchedulerOfPendingAppStop:Z

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    move-result p1

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->informJobSchedulerOfPendingAppStop:Z

    .line 163
    return-void
    .line 165
.end method
