.class public final Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/start/ControlsStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/start/ControlsStartable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controls/start/ControlsStartable;->getControlsController()Lcom/android/systemui/controls/controller/ControlsController;

    .line 4
    move-result-object p2

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 8
    move-result-object p1

    .line 11
    check-cast p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 12
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 15
    iget-object v0, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iput-boolean v1, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "Changing to user: "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    const-string v2, "ControlsControllerImpl"

    .line 43
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 48
    new-instance v0, Lcom/android/systemui/controls/controller/UserStructure;

    .line 50
    iget-object v2, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    .line 52
    iget-object v3, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 54
    invoke-direct {v0, v2, p1, v3}, Lcom/android/systemui/controls/controller/UserStructure;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/systemui/settings/UserFileManager;)V

    .line 56
    iput-object v0, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    .line 59
    iget-object v0, v0, Lcom/android/systemui/controls/controller/UserStructure;->file:Ljava/io/File;

    .line 61
    new-instance v2, Landroid/app/backup/BackupManager;

    .line 63
    iget-object v3, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    .line 65
    iget-object v3, v3, Lcom/android/systemui/controls/controller/UserStructure;->userContext:Landroid/content/Context;

    .line 67
    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v3, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 72
    iput-object v0, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 74
    iput-object v2, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->backupManager:Landroid/app/backup/BackupManager;

    .line 76
    iget-object v0, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    .line 78
    iget-object v0, v0, Lcom/android/systemui/controls/controller/UserStructure;->auxiliaryFile:Ljava/io/File;

    .line 80
    iget-object v2, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 82
    iget-object v3, v2, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 84
    iput-object v0, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 86
    const/4 v0, 0x0

    .line 88
    iput-object v0, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->backupManager:Landroid/app/backup/BackupManager;

    .line 89
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->initialize()V

    .line 91
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites()V

    .line 94
    iget-object v0, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 97
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 99
    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 101
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    .line 110
    iput-object p1, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 113
    :goto_0
    iget-object v0, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 115
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 117
    iget-object v2, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 121
    iget-object v2, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 124
    invoke-virtual {v2, v1}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    .line 126
    new-instance v2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;

    .line 129
    invoke-direct {v2, v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/lang/Object;I)V

    .line 131
    iget-object p1, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 134
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    iput-boolean v1, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 139
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/controls/start/ControlsStartable;->access$startForUser(Lcom/android/systemui/controls/start/ControlsStartable;)V

    .line 141
    return-void
    .line 144
.end method
