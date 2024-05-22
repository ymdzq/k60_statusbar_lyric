.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/systemui/plugins/miui/controls/MiPlayCastingCallback;


# instance fields
.field public volatile isLocalMediaManagerScaning:Z

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$1;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mIsMiPlayCasting:Z

.field public final mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final mMediaCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$4;

.field public final mMediaDeviceCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;

.field public final mMediaRouter:Landroid/media/MediaRouter;

.field public final mOnClickHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;

.field public mPhoneRouteName:Ljava/lang/String;

.field public mSupportMiPlayAudio:Z

.field public final mViews:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public sHasTransferComponent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mPhoneRouteName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;)V

    .line 21
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mConfigurationListener:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$1;

    .line 24
    new-instance v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;

    .line 26
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;)V

    .line 28
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mOnClickHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;

    .line 31
    new-instance v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;

    .line 33
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;)V

    .line 35
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaDeviceCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;

    .line 38
    new-instance v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$4;

    .line 40
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$4;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;)V

    .line 42
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$4;

    .line 45
    const-class v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 47
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 53
    new-instance v3, Lcom/android/settingslib/media/InfoMediaManager;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 60
    invoke-direct {v3, p1, v4, v2}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 61
    new-instance v4, Lcom/android/settingslib/media/LocalMediaManager;

    .line 64
    const/4 v5, 0x0

    .line 66
    invoke-direct {v4, p1, v2, v3, v5}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    .line 67
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 70
    const-string v2, "media_router"

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 77
    check-cast p1, Landroid/media/MediaRouter;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 80
    const-class p1, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 82
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 87
    check-cast p1, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 88
    iget-object p1, p1, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 90
    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->supportMiPlayAudio()Z

    .line 94
    move-result v0

    .line 97
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mSupportMiPlayAudio:Z

    .line 98
    if-eqz v0, :cond_1

    .line 100
    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->sHasTransferComponent:Z

    .line 103
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->sHasTransferComponent:Z

    .line 105
    if-eqz p0, :cond_2

    .line 107
    const-class p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 109
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 114
    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 115
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 119
    :cond_2
    return-void
    .line 122
.end method


# virtual methods
.method public final onActiveDeviceChanged(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mPhoneRouteName:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_2

    .line 14
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 25
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 27
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 31
    :cond_1
    monitor-exit p0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1

    .line 37
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->updateAllChips()V

    .line 38
    return-void
    .line 41
.end method

.method public final onCastInfoChanged(Ljava/util/Map;)V
    .locals 3

    .line 1
    const-string v0, "device_icon"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 8
    const-string v1, "device_des"

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "device_icon is "

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ", device_des is"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    const-string v1, "MiuiMediaTransferManager"

    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->updateAllChips()V

    .line 47
    return-void
    .line 50
.end method

.method public final onCastingChanged(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mIsMiPlayCasting:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->updateAllChips()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateAllChips()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/ImageView;

    .line 18
    if-nez v1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$$ExternalSyntheticLambda0;

    .line 23
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;Landroid/widget/ImageView;)V

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    return-void
    .line 32
.end method
