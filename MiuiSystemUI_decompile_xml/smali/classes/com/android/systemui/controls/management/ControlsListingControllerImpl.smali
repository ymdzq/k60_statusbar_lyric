.class public final Lcom/android/systemui/controls/management/ControlsListingControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final activityTaskManagerProxy:Lcom/android/systemui/util/ActivityTaskManagerProxy;

.field public availableServices:Ljava/util/List;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final callbacks:Ljava/util/Set;

.field public final context:Landroid/content/Context;

.field public currentUserId:I

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public serviceListing:Lcom/android/settingslib/applications/ServiceListing;

.field public final serviceListingBuilder:Lkotlin/jvm/functions/Function1;

.field public final serviceListingCallback:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

.field public final userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/ActivityTaskManagerProxy;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 8

    .line 23
    sget-object v3, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 24
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/ActivityTaskManagerProxy;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/ActivityTaskManagerProxy;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingBuilder:Lkotlin/jvm/functions/Function1;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 6
    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->activityTaskManagerProxy:Lcom/android/systemui/util/ActivityTaskManagerProxy;

    .line 7
    iput-object p7, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 8
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ServiceListing;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 9
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    .line 10
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    check-cast p4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    .line 14
    new-instance p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingCallback:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    const-string p2, "Initializing"

    const-string p3, "ControlsListingControllerImpl"

    .line 15
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object p2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 17
    invoke-virtual {p6, p3, p0, p2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 18
    iget-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 19
    iget-object p2, p2, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    .line 20
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    .line 22
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 2
    new-instance v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;I)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 10
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    return-void
    .line 15
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "ControlsListingController:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    iget-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "Callbacks: "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 33
    move-result-object p0

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    const-string v0, "Services: "

    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 54
    return-void
    .line 57
.end method

.method public final getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 20
    iget-object v2, v2, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 22
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    :goto_0
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 36
    move-result-object v1

    .line 39
    :cond_2
    return-object v1
    .line 40
.end method

.method public final getCurrentServices()Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 6
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 27
    new-instance v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 29
    iget-object v3, v1, Lcom/android/systemui/controls/ControlsServiceInfo;->context:Landroid/content/Context;

    .line 31
    iget-object v4, v1, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 33
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/controls/ControlsServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 35
    iget-object v1, v1, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 38
    iput-object v1, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
    .line 46
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 2
    new-instance v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;I)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 10
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    return-void
    .line 15
.end method

.method public final updateServices(Ljava/util/List;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->USE_APP_PANELS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    move-object v2, v1

    .line 6
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 7
    invoke-virtual {v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->activityTaskManagerProxy:Lcom/android/systemui/util/ActivityTaskManagerProxy;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    .line 20
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    sget-object v0, Lcom/android/systemui/flags/Flags;->APP_PANELS_ALL_APPS_ALLOWED:Lcom/android/systemui/flags/ReleasedFlag;

    .line 28
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 30
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 32
    move-result v0

    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 43
    if-eqz v2, :cond_6

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 50
    iget-boolean v3, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->resolved:Z

    .line 52
    if-eqz v3, :cond_0

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    const/4 v3, 0x1

    .line 57
    iput-boolean v3, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->resolved:Z

    .line 58
    iget-object v4, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v4

    .line 65
    const v5, 0x7f03004d    # @array/config_controlsPreferredPackages

    .line 66
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 72
    iget-object v5, v2, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 73
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v4

    .line 82
    if-nez v4, :cond_1

    .line 83
    if-nez v0, :cond_1

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    iget-object v4, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->_panelActivity:Landroid/content/ComponentName;

    .line 88
    if-eqz v4, :cond_5

    .line 90
    new-instance v5, Landroid/content/Intent;

    .line 92
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 94
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    move-result-object v5

    .line 100
    const-wide/32 v6, 0xc0000

    .line 101
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 104
    move-result-object v6

    .line 107
    iget v7, v2, Lcom/android/settingslib/applications/DefaultAppInfo;->userId:I

    .line 108
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 110
    move-result-object v7

    .line 113
    iget-object v8, v2, Lcom/android/settingslib/applications/DefaultAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 114
    invoke-virtual {v8, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    .line 116
    move-result-object v5

    .line 119
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    move-result v6

    .line 123
    xor-int/2addr v6, v3

    .line 124
    if-eqz v6, :cond_5

    .line 125
    const/4 v6, 0x0

    .line 127
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v5

    .line 131
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 132
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 134
    if-eqz v5, :cond_4

    .line 136
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 138
    const-string v9, "android.permission.BIND_CONTROLS"

    .line 140
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    move-result v7

    .line 145
    if-eqz v7, :cond_4

    .line 146
    iget-boolean v7, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 148
    if-eqz v7, :cond_4

    .line 150
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 152
    move-result-object v7

    .line 155
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 156
    move-result v7

    .line 159
    if-eqz v7, :cond_3

    .line 160
    if-eq v7, v3, :cond_2

    .line 162
    move v5, v6

    .line 164
    goto :goto_1

    .line 165
    :cond_2
    move v5, v3

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 168
    :goto_1
    if-eqz v5, :cond_4

    .line 170
    goto :goto_2

    .line 172
    :cond_4
    move v3, v6

    .line 173
    :goto_2
    if-eqz v3, :cond_5

    .line 174
    goto :goto_3

    .line 176
    :cond_5
    const/4 v4, 0x0

    .line 177
    :goto_3
    iput-object v4, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 178
    goto/16 :goto_0

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    .line 182
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    move-result v0

    .line 187
    if-nez v0, :cond_7

    .line 188
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    .line 190
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    .line 192
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    move-result-object p1

    .line 197
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    move-result v0

    .line 201
    if-eqz v0, :cond_7

    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 207
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 210
    move-result-object v1

    .line 213
    invoke-interface {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;->onServicesUpdated(Ljava/util/List;)V

    .line 214
    goto :goto_4

    .line 217
    :cond_7
    return-void
    .line 218
.end method
