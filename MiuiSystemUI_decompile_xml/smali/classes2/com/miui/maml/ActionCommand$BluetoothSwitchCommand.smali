.class Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "bluetooth_state"

    .line 2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 9
    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 14
    return-void
    .line 16
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method


# virtual methods
.method public doPerform()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 9
    iget-boolean v1, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 11
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 21
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 23
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 29
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 31
    iput-boolean v3, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 37
    if-nez v1, :cond_4

    .line 39
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    .line 41
    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 43
    if-eq v1, v0, :cond_4

    .line 45
    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 49
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 51
    iput-boolean v3, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 59
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 62
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->update()V

    .line 64
    return-void
    .line 67
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 11
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    .line 15
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 20
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 27
    if-eqz v0, :cond_2

    .line 29
    const/4 v1, 0x2

    .line 31
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 32
    :goto_0
    return-void
    .line 35
.end method
