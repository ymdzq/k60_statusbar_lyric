.class Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "usb_mode"

    .line 2
    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 10
    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 15
    return-void
    .line 17
.end method

.method public static synthetic access$300(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public doPerform()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 11
    iget-boolean v2, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 13
    if-eqz v2, :cond_1

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 20
    if-ne v1, v0, :cond_2

    .line 22
    return-void

    .line 24
    :cond_2
    move v0, v1

    .line 25
    :goto_0
    const/4 v1, 0x3

    .line 26
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 27
    new-instance v1, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;

    .line 30
    const-string v2, "StorageSwitchThread"

    .line 32
    invoke-direct {v1, p0, v2, v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
    .line 40
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "connected"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 14
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 16
    return-void
    .line 19
.end method

.method public update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    const-string/jumbo v1, "storage"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 17
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string p0, "ActionCommand"

    .line 23
    const-string v0, "Failed to get StorageManager"

    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 31
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z

    .line 33
    move-result v0

    .line 36
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 37
    if-eqz v1, :cond_2

    .line 39
    if-eqz v0, :cond_1

    .line 41
    const/4 v0, 0x2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 48
    return-void
    .line 51
.end method
