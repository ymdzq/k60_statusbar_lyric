.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/controls/controller/ControlsController;


# instance fields
.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

.field public final bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

.field public final context:Landroid/content/Context;

.field public currentUser:Landroid/os/UserHandle;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

.field public final restoreFinishedReceiver:Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;

.field public final seedingCallbacks:Ljava/util/List;

.field public seedingInProgress:Z

.field public final selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

.field public final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

.field public userChanging:Z

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public userStructure:Lcom/android/systemui/controls/controller/UserStructure;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/panels/SelectedComponentRepository;Lcom/android/systemui/controls/controller/ControlsBindingController;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;Ljava/util/Optional;Lcom/android/systemui/dump/DumpManager;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p6

    .line 5
    move-object v4, p7

    .line 6
    move-object/from16 v5, p8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    .line 12
    iput-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 14
    move-object v6, p3

    .line 16
    iput-object v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 17
    move-object v6, p4

    .line 19
    iput-object v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 20
    move-object v6, p5

    .line 22
    iput-object v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 23
    iput-object v3, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 25
    iput-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 27
    iput-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 29
    move-object/from16 v6, p9

    .line 31
    iput-object v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 33
    const/4 v6, 0x1

    .line 35
    iput-boolean v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    .line 43
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 45
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 47
    move-result-object v5

    .line 50
    iput-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 51
    new-instance v6, Lcom/android/systemui/controls/controller/UserStructure;

    .line 53
    invoke-direct {v6, p1, v5, p7}, Lcom/android/systemui/controls/controller/UserStructure;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/systemui/settings/UserFileManager;)V

    .line 55
    iput-object v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    .line 58
    new-instance v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;

    .line 60
    invoke-direct {v4, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    .line 62
    move-object/from16 v5, p10

    .line 65
    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 71
    iput-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 73
    new-instance v4, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 75
    iget-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    .line 77
    iget-object v5, v5, Lcom/android/systemui/controls/controller/UserStructure;->auxiliaryFile:Ljava/io/File;

    .line 79
    new-instance v6, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 81
    const/4 v7, 0x0

    .line 83
    invoke-direct {v6, v5, p2, v7}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Landroid/app/backup/BackupManager;)V

    .line 84
    invoke-direct {v4, v6}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;-><init>(Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;)V

    .line 87
    iput-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 90
    new-instance v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;

    .line 92
    invoke-direct {v2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    .line 94
    iput-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->restoreFinishedReceiver:Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;

    .line 97
    new-instance v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;

    .line 99
    invoke-direct {v4, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    .line 101
    new-instance v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;

    .line 104
    invoke-direct {v4, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    .line 106
    const-class v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 109
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 114
    sget-object v6, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 115
    move-object/from16 v7, p11

    .line 117
    invoke-virtual {v7, v5, p0, v6}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites()V

    .line 122
    const/4 v5, 0x0

    .line 125
    iput-boolean v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    .line 128
    const-string v5, "com.android.systemui.backup.RESTORE_FINISHED"

    .line 130
    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v5, "com.android.systemui.permission.SELF"

    .line 135
    const/4 v6, 0x0

    .line 137
    const/4 v7, 0x4

    .line 138
    move-object p0, p1

    .line 139
    move-object p1, v2

    .line 140
    move-object p2, v0

    .line 141
    move-object p3, v5

    .line 142
    move-object p4, v6

    .line 143
    move p5, v7

    .line 144
    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 145
    move-object v0, v3

    .line 148
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 149
    invoke-virtual {v0, v4}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 151
    return-void
    .line 154
.end method

.method public static synthetic getAuxiliaryPersistenceWrapper$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getRestoreFinishedReceiver$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSettingObserver$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final confirmAvailability()Z
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const-string p0, "ControlsControllerImpl"

    .line 6
    const-string v0, "Controls not available while user is changing"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public final createRemovedStatus(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.MAIN"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "android.intent.category.LAUNCHER"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    .line 21
    move-result v1

    .line 24
    const/high16 v2, 0x4000000

    .line 25
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    .line 27
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 29
    move-result-object p0

    .line 32
    new-instance v0, Landroid/service/controls/Control$StatelessBuilder;

    .line 33
    iget-object v1, p2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 35
    invoke-direct {v0, v1, p0}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 37
    iget-object p0, p2, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {v0, p0}, Landroid/service/controls/Control$StatelessBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    .line 42
    move-result-object p0

    .line 45
    iget-object v0, p2, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p0, v0}, Landroid/service/controls/Control$StatelessBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p0, p3}, Landroid/service/controls/Control$StatelessBuilder;->setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    .line 52
    move-result-object p0

    .line 55
    iget p2, p2, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    .line 56
    invoke-virtual {p0, p2}, Landroid/service/controls/Control$StatelessBuilder;->setDeviceType(I)Landroid/service/controls/Control$StatelessBuilder;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    .line 62
    move-result-object p0

    .line 65
    new-instance p2, Lcom/android/systemui/controls/ControlStatus;

    .line 66
    const/4 p3, 0x1

    .line 68
    invoke-direct {p2, p0, p1, p3, p4}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V

    .line 69
    return-object p2
    .line 72
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "ControlsController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 7
    const-string v0, "  Changing users: "

    .line 9
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 11
    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 14
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 16
    move-result p2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "  Current user: "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    const-string p2, "  Favorites:"

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 42
    move-result-object p2

    .line 45
    check-cast p2, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p2

    .line 51
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "    "

    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    iget-object v0, v0, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object v0

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 96
    check-cast v1, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "      "

    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return-void
    .line 126
.end method

.method public final getCurrentUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 2
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getFavorites()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;

    .line 12
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 19
    check-cast v2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 21
    const-wide/16 v3, 0x1f4

    .line 23
    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 25
    :cond_0
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 28
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    .line 30
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, v0, v0, v2}, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 33
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 36
    :cond_1
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    .line 39
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;)V

    .line 41
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 44
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 46
    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 48
    new-instance p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 50
    const-wide/32 v1, 0x186a0

    .line 52
    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;J)V

    .line 55
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$1;

    .line 67
    const/4 v0, 0x0

    .line 69
    invoke-direct {p1, p0, p2, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;I)V

    .line 70
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 75
    check-cast v2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 77
    const-wide/16 v3, 0x14

    .line 79
    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 81
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 85
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;

    .line 87
    invoke-direct {p1, p0, p2, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;I)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    .line 92
    new-instance p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;

    .line 95
    invoke-direct {p0, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)V

    .line 97
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 100
    return-void
    .line 103
.end method

.method public final resetFavorites()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 2
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->readFavorites()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 16
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 36
    iget-object v3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 54
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    sput-object v1, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 60
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 62
    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 68
    move-result v2

    .line 71
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    check-cast v0, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v0

    .line 80
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 90
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 91
    iget-object v2, v2, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 93
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 103
    move-result-object v0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 107
    check-cast p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->addAuthorizedPanels(Ljava/util/Set;)V

    .line 111
    return-void
    .line 114
.end method

.method public final seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 2
    if-nez v0, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_3

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;

    .line 24
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 26
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 31
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 33
    const-wide/16 v1, 0x1f4

    .line 35
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    check-cast p1, Landroid/content/ComponentName;

    .line 55
    new-instance v0, Lcom/android/systemui/controls/controller/SeedResponse;

    .line 57
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    .line 63
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    return-void

    .line 70
    :cond_3
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 72
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V

    .line 74
    :cond_4
    :goto_2
    return-void
    .line 77
.end method

.method public final setPreferredSelection(Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;->name:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 8
    check-cast p0, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p0

    .line 19
    iget-object p1, p1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;->componentName:Landroid/content/ComponentName;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    const-string v1, "controls_component"

    .line 30
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object p0

    .line 35
    const-string p1, "controls_structure"

    .line 36
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object p0

    .line 41
    const-string p1, "controls_is_panel"

    .line 42
    const/4 v0, 0x1

    .line 44
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    move-result-object p0

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    return-void
    .line 52
.end method

.method public final startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    xor-int/lit8 p1, p3, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p2

    .line 21
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object p3

    .line 31
    check-cast p3, Ljava/util/function/Consumer;

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v0

    .line 37
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 42
    return-void

    .line 45
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Landroid/content/ComponentName;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    const-string v3, "Beginning request to seed favorites for: "

    .line 54
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 65
    const-string v3, "ControlsControllerImpl"

    .line 66
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 71
    move-result-object v7

    .line 74
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    .line 75
    move-object v3, p1

    .line 77
    move-object v4, p0

    .line 78
    move-object v5, p2

    .line 79
    move-object v6, v0

    .line 80
    move v8, p3

    .line 81
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;Landroid/content/ComponentName;Ljava/util/List;Z)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 85
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 87
    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 89
    new-instance p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 91
    const-wide/16 v3, 0x24

    .line 93
    invoke-direct {p2, p0, p1, v3, v4}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;J)V

    .line 95
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 100
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$1;

    .line 107
    invoke-direct {p1, p0, p2, v2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;I)V

    .line 109
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 114
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 116
    const-wide/16 v3, 0x14

    .line 118
    invoke-virtual {v0, p1, v3, v4, p3}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 120
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 124
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;

    .line 126
    invoke-direct {p1, p0, p2, v2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;I)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    .line 131
    return-void
    .line 134
.end method
