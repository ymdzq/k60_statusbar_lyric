.class Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlocked(B)V
    .locals 10

    const-string v0, "MiuiSecurityBluetoothMatchDeviceFragment"

    .line 137
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDeviceType(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDeviceMajorClass(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDeviceMinorClass(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$msaveDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1, v2}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fputmSettingStep(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$mswitchToSucceedLayout(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne p1, v1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1, v6}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fputmSettingStep(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1, v3}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$msendSetUnlockState(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1, v5}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fputmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;[B)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->bluetooth_unlock_reject:I

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1, v6}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fputmSettingStep(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1, v2}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$msendSetUnlockState(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1, v5}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fputmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;[B)V

    .line 160
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->bluetooth_unlock_unsupport:I

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 161
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unhandle  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
