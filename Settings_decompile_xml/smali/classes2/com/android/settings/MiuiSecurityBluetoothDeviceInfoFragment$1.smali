.class Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlocked(B)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmBluetoothDeviceConfirmed(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmBluetoothDeviceConfirmed(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmBluetoothDeviceConfirmed(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmBluetoothDeviceConfirmed(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmIsConnected(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne p1, v0, :cond_3

    .line 90
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmDeviceStatus(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bluetooth_unlock_state_ok:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 92
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmDeviceStatus(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bluetooth_unlock_state_too_far:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 94
    :cond_4
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmDeviceStatus(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bluetooth_unlock_state_key_error:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 97
    :cond_5
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmDeviceStatus(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bluetooth_unlock_state_disconnected:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method
