.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 2942
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2944
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mwriteBluetoothA2dpConfiguration(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2945
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mhandleCheckBoxPreferenceEnabled(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    .line 2946
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2947
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "latency_pre"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 2948
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2949
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_1

    .line 2951
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2952
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2953
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2956
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msetHDAudioEnableForLhdc4Changed(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2958
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    const-string v0, "STORE_DEVICE_CODEC"

    if-eqz p1, :cond_2

    .line 2959
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)Z

    .line 2960
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LHDC_V3"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2962
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2963
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LHDC_V2"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2965
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2966
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LHDC_V1"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2968
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLDACDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2969
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LDAC"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2970
    :cond_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAACDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2971
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)Z

    .line 2972
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "AAC"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_6
    :goto_0
    return-void
.end method
