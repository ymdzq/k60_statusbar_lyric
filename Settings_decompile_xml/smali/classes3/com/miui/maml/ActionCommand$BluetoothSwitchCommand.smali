.class Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothSwitchCommand"
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    const-string v0, "bluetooth_state"

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 617
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 664
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 666
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .line 623
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 627
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 629
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 632
    iput-boolean v3, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 635
    :cond_2
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v1, v0, :cond_4

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 638
    iput-boolean v3, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 640
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 641
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 645
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->update()V

    return-void
.end method

.method protected update()V
    .locals 2

    .line 650
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 655
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    const/4 v0, 0x1

    .line 656
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    goto :goto_0

    .line 658
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    :goto_0
    return-void
.end method
