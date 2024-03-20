.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$codecPre:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2998
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 3001
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_9

    .line 3002
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3003
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    const-string v3, "LHDC_V3"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3004
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetconfigCodec(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3005
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetconfigCodec(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 3007
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3008
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LHDC_V2"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 3009
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3010
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LHDC_V1"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 3011
    :cond_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLDACDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3012
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LDAC"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 3013
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAACDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3014
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "AAC"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_9
    :goto_0
    return-void
.end method
