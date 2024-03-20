.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;
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

    .line 3468
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3471
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 3472
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_switch_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 3473
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    const-string v2, "MiuiHeadsetFragment"

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 3474
    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3476
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3477
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "getActiveDevice() == null,disable checkbox"

    .line 3478
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_container"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3481
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/PreferenceGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p0, "getActiveDevice() == null,remove audio share container"

    .line 3482
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "mBluetoothA2dp.getActiveDevice() != null"

    .line 3485
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "mBluetoothA2dp == null"

    .line 3488
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
