.class Lcom/android/settings/bluetooth/BluetoothSettings$4;
.super Landroid/os/Handler;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 258
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 262
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 263
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateA2dpCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    :cond_0
    return-void

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateCodecIconForLc3(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 269
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    :cond_2
    return-void
.end method
