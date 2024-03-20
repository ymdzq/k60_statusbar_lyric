.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;
.super Landroid/os/Handler;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/os/Looper;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 193
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$mhandleNameChanged(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$mhandleClassChanged(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$mhandleDiscoveryStateChanged(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    goto :goto_0

    .line 203
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "device"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "intent"

    .line 205
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    .line 204
    invoke-static {p0, v1, v2, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$mhandleBondStateChanged(Lcom/android/settingslib/bluetooth/BluetoothEventManager;ILandroid/bluetooth/BluetoothDevice;Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 199
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 200
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    const-string/jumbo v1, "rssi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "isCoordinatedSetMember"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v1, p1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$mhandleDeviceFound(Lcom/android/settingslib/bluetooth/BluetoothEventManager;SLandroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 196
    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$mhandleAdapterStateChanged(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
