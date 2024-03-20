.class Lcom/android/settings/bluetooth/BluetoothSettings$7;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;->updateOnSavedDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 813
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 816
    iget-object v0, v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->headSetFeatureIsEnable(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "BluetoothSettings"

    if-nez v0, :cond_0

    const-string v0, "headsetCloudData data  not fit!"

    .line 817
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 820
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 823
    iget-object v0, v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 824
    new-instance v0, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;

    iget-object v4, v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;->val$context:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;-><init>(Landroid/content/Context;)V

    .line 826
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->queryDeviceData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "getcontex() is null!"

    .line 828
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 830
    :goto_0
    iget-object v4, v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v4, v4, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v4, :cond_2

    .line 831
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    :cond_2
    move-object v10, v3

    if-eqz v0, :cond_11

    .line 834
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 835
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v3, "name"

    .line 838
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "mac"

    .line 839
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "devClass"

    .line 840
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const-string/jumbo v3, "service"

    .line 841
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accountKey"

    .line 842
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "extend"

    .line 843
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "syncId"

    .line 844
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "eTag"

    .line 845
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 846
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 848
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "deviceId"

    .line 850
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v4, "JSONException Wrong!"

    .line 853
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    const-string v0, ""

    .line 857
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 858
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    const-string v4, "CN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_3

    :cond_5
    move v4, v5

    .line 862
    :goto_3
    iget-object v7, v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v7, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$misDeviceIdSupportShow(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v6, v4

    goto :goto_4

    :cond_7
    move v6, v5

    :goto_4
    if-eqz v6, :cond_3

    .line 868
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v10, :cond_10

    const-string v0, ";"

    .line 869
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 870
    array-length v3, v0

    :goto_5
    if-ge v5, v3, :cond_f

    aget-object v4, v0, v5

    .line 871
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 872
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 873
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 874
    :cond_8
    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v4

    .line 875
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_9
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 879
    :cond_a
    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v4

    .line 880
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_b
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "HID"

    .line 884
    invoke-virtual {v10, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v4

    .line 885
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_c
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    .line 889
    invoke-virtual {v6, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 890
    :cond_d
    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v4

    .line 891
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 894
    :cond_f
    iget-object v3, v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNewOnSavedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_1

    .line 896
    :cond_10
    iget-object v12, v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNewOnSavedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_1

    :cond_11
    return-void
.end method
