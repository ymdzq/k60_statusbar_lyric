.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createDialogForLeAudio(Landroidx/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$leAudioPre:Landroidx/preference/CheckBoxPreference;

.field final synthetic val$pref:Landroidx/preference/CheckBoxPreference;

.field final synthetic val$volumePre:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;Landroidx/preference/CheckBoxPreference;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5927
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$leAudioPre:Landroidx/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$pref:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 5929
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$leAudioPre:Landroidx/preference/CheckBoxPreference;

    const-string v2, "ble_audio_open"

    const-string/jumbo v3, "user_click"

    const-string v4, "ble_audio_click"

    if-eqz v1, :cond_13

    .line 5931
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "miui_store_audio_share_device_address"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    .line 5932
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 5933
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 v7, 0x0

    invoke-static {v1, v7, v6}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mbroadcastMultiA2dpStateChange(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5935
    :cond_0
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5936
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v7, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v7}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    const-string v8, "+XIAOMI"

    const-string v9, "FF01020103020401FF"

    invoke-virtual {v1, v7, v8, v9}, Landroid/bluetooth/BluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5939
    :cond_1
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$leAudioPre:Landroidx/preference/CheckBoxPreference;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 5940
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 5941
    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5943
    :cond_2
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5944
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    goto :goto_0

    .line 5946
    :cond_3
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    const-string v8, "LEAUDIO"

    invoke-virtual {v1, v8, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :goto_0
    const-string/jumbo v1, "onLeAudioPrefClicked  set true"

    const-string v8, "MiuiHeadsetFragment"

    .line 5948
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5952
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v9

    const/16 v10, 0xa

    const/16 v11, 0xc

    const/4 v12, 0x2

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v9}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 5953
    iget-object v9, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v9}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findLeAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v13, ";"

    .line 5957
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 5958
    array-length v13, v9

    if-le v13, v7, :cond_4

    .line 5959
    aget-object v13, v9, v6

    .line 5960
    aget-object v9, v9, v7

    goto :goto_1

    :cond_4
    move-object v9, v5

    move-object v13, v9

    .line 5963
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onLeAudioPrePositiveClick,le1Str = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",le2Str = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 5965
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 5966
    invoke-virtual {v14, v13}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 5967
    invoke-virtual {v14, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 5969
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v13

    .line 5970
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v14

    .line 5971
    iget-object v15, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v15}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v15

    .line 5972
    invoke-virtual {v15, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v15

    if-nez v15, :cond_5

    const-string v15, "le1CachedDevice is null and new one "

    .line 5974
    invoke-static {v8, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    new-instance v15, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmProfileManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-direct {v15, v1, v6, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 5977
    :cond_5
    invoke-virtual {v15}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectableDevice()Z

    move-result v1

    .line 5978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "le1BondState = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",le2BondState = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",le1ConnectableState = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v13, v10, :cond_6

    if-eqz v1, :cond_6

    const-string v1, "create bond to LE1"

    .line 5982
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5983
    invoke-virtual {v5, v12}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move v6, v7

    goto :goto_2

    :cond_6
    if-ne v13, v11, :cond_7

    const-string v1, "connect to LE1"

    .line 5986
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5987
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->connect()I

    :cond_7
    const/4 v6, 0x0

    :goto_2
    if-ne v14, v10, :cond_8

    const/16 v1, 0xb

    if-eq v13, v1, :cond_8

    if-nez v6, :cond_8

    const-string v1, "create bond to LE2"

    .line 5992
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5993
    invoke-virtual {v9, v12}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto :goto_3

    :cond_8
    if-ne v14, v11, :cond_9

    const-string v1, "connect to LE2"

    .line 5995
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5996
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->connect()I

    .line 5998
    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    .line 5999
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mrefreshProfiles(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 6001
    :cond_a
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$pref:Landroidx/preference/CheckBoxPreference;

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mhandleCheckBoxPreferenceEnabled(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    .line 6002
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6003
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6004
    invoke-static {v2, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 6010
    :cond_b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "three_mac_for_ble_f"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 6012
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x36

    if-lt v6, v9, :cond_c

    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceMacAddress(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v6

    .line 6013
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6014
    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceMacAddress(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 6015
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startIndex is "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " value is "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v6, 0x12

    add-int/lit8 v13, v6, 0x23

    .line 6016
    invoke-virtual {v5, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v13, v6, 0x24

    add-int/lit8 v6, v6, 0x35

    .line 6017
    invoke-virtual {v5, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6018
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "leStr1 is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " leStr2 is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    const-string v9, "00:00:00:00:00:00"

    move-object v5, v9

    .line 6021
    :goto_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 6023
    iget-object v13, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v13}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mhandleMultiLeDevices(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    if-eqz v6, :cond_13

    .line 6025
    invoke-virtual {v6, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .line 6026
    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 6027
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v14, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v14}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceMacAddress(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    .line 6028
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 6029
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 6030
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 6031
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "power off is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , left is "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", right is "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_13

    .line 6033
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const-string v11, "connect leStr2"

    const-string v12, "create bond leStr2"

    move-object/from16 v16, v2

    const/16 v2, 0x31

    if-ne v1, v10, :cond_10

    const/16 v1, 0x30

    if-eq v14, v1, :cond_e

    if-ne v15, v2, :cond_d

    goto :goto_5

    :cond_d
    const-string v1, "create bond leStr1"

    .line 6047
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6048
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1, v9, v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msentIgnorePairDilogIntent(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 6049
    invoke-virtual {v13, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto :goto_6

    :cond_e
    :goto_5
    if-eqz v6, :cond_14

    .line 6036
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_f

    .line 6037
    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->connect()I

    goto :goto_6

    .line 6040
    :cond_f
    invoke-static {v8, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1, v9, v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msentIgnorePairDilogIntent(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 6042
    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto :goto_6

    :cond_10
    if-ne v14, v2, :cond_11

    const-string v1, "connect leStr1"

    .line 6053
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->connect()I

    :cond_11
    if-eqz v6, :cond_14

    .line 6057
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v10, 0xc

    if-ne v1, v10, :cond_12

    if-ne v7, v2, :cond_14

    .line 6059
    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->connect()I

    goto :goto_6

    .line 6063
    :cond_12
    invoke-static {v8, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6064
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1, v9, v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msentIgnorePairDilogIntent(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 6065
    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto :goto_6

    :cond_13
    move-object/from16 v16, v2

    .line 6077
    :cond_14
    :goto_6
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;->val$pref:Landroidx/preference/CheckBoxPreference;

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mhandleCheckBoxPreferenceEnabled(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    .line 6078
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6079
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    .line 6080
    invoke-static {v1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
