.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$4;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askDisableAudioShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1101
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->-$$Nest$fgetmIsSwitch(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    .line 1103
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->-$$Nest$fputmIsSwitch(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Z)V

    goto :goto_0

    .line 1105
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    :goto_0
    return-void
.end method
