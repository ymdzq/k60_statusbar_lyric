.class Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;
.super Landroid/os/Handler;
.source "BluetoothBroadcastEnableController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT state, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastEnableController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fgetmManager(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBroadcastProfile()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BroadcastProfile;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fputmBapBroadcastProfile(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;Lcom/android/settingslib/bluetooth/BroadcastProfile;)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fputreset_pending(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;Z)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$monStateChanged(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;Z)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fputmBapBroadcastProfile(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;Lcom/android/settingslib/bluetooth/BroadcastProfile;)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
