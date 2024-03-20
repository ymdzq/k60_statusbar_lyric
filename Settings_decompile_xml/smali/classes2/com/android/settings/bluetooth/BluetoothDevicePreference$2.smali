.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;
.super Landroid/os/Handler;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Landroid/os/Looper;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 482
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->-$$Nest$fgetUPDATE(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 483
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateAttributes()V

    :cond_0
    return-void
.end method
