.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 4215
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 4218
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 4219
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4220
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$maskDisconnect(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    :cond_1
    return-void
.end method
