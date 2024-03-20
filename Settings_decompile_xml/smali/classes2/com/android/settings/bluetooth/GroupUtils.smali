.class public Lcom/android/settings/bluetooth/GroupUtils;
.super Ljava/lang/Object;
.source "GroupUtils.java"


# static fields
.field private static final D:Z

.field private static final V:Z


# instance fields
.field private mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field private mCacheDeviceNamanger:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mCtx:Landroid/content/Context;

.field private mDeviceGroup:Landroid/bluetooth/DeviceGroup;

.field private mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

.field private mIsGroupEnabled:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget-boolean v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->DBG_GROUP:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    const-string v0, "GroupUtilss"

    const/4 v1, 0x2

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/GroupUtils;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mIsGroupEnabled:Z

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 143
    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCtx:Landroid/content/Context;

    .line 144
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCacheDeviceNamanger:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 145
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupEnabled()V

    .line 146
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "GroupUtilss"

    const-string p1, "Bluetooth is not supported on this device"

    .line 148
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 152
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method

.method private getExistingGroup(Ljava/util/ArrayList;Landroidx/preference/Preference;)Lcom/android/settings/widget/GroupPreferenceCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;",
            "Landroidx/preference/Preference;",
            ")",
            "Lcom/android/settings/widget/GroupPreferenceCategory;"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Landroidx/preference/Preference;)I

    move-result p0

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/GroupPreferenceCategory;

    .line 227
    invoke-virtual {p2}, Lcom/android/settings/widget/GroupPreferenceCategory;->getGroupId()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private getGroupId(Landroidx/preference/Preference;)I
    .locals 3

    .line 158
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group id not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private getHedaer(ILcom/android/settings/widget/GearPreference$OnGearClickListener;)Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;
    .locals 1

    .line 238
    new-instance v0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;-><init>(Landroid/content/Context;I)V

    .line 240
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    return-object v0
.end method

.method private getParentGroup(Ljava/util/ArrayList;Landroidx/preference/Preference;)Lcom/android/settings/widget/GroupPreferenceCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;",
            "Landroidx/preference/Preference;",
            ")",
            "Lcom/android/settings/widget/GroupPreferenceCategory;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p0, p2, :cond_1

    .line 213
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/GroupPreferenceCategory;

    .line 214
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method private isAllFilled(ILjava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 193
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 194
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/GroupPreferenceCategory;

    if-nez v2, :cond_0

    const-string p1, "isAllFilled"

    .line 196
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return v0

    .line 199
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/widget/GroupPreferenceCategory;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    return v0
.end method

.method private isAllGroupsFilled(Ljava/util/ArrayList;Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;",
            "Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 354
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->isAllFilled(ILjava/util/ArrayList;)Z

    move-result v0

    .line 355
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/GroupPreferenceCategory;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    const-string p1, "isAllGroupsFilled received invalid group"

    .line 358
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return-void

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remaining"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "isAllGroupsFilled not last group"

    .line 362
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    .line 366
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    const-string v1, "GroupUtilss"

    if-eqz v0, :cond_2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllGroupsFilled size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p0, :cond_4

    .line 371
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

    if-eqz v4, :cond_3

    .line 373
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

    .line 374
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->getGroupId()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->getGroupId()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 376
    invoke-virtual {v4}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->incrementChildCound()I

    move-result p0

    .line 377
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz v0, :cond_5

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllGroupsFilled updated chCount "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 385
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->incrementChildCound()I

    move-result p0

    .line 386
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 387
    sget-boolean p1, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p1, :cond_6

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isAllGroupsFilled added chCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private isGroupDeviceBonded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2

    .line 585
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGroupDeviceBondedOnly(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2

    .line 572
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGroupEnabled()V
    .locals 5

    const-string v0, "GroupUtilss"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "persist.vendor.service.bt.adv_audio_mask"

    .line 608
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 609
    sget-boolean v3, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz v3, :cond_0

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGroupEnabled advAudioFeatureMask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 613
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/GroupUtils;->mIsGroupEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 616
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mIsGroupEnabled:Z

    .line 617
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGroupEnabled "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private isGroupIdMatch(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z
    .locals 0

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNewGroup(ILjava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 170
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const-string v4, "GroupUtilss"

    if-ge v1, v2, :cond_3

    .line 171
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/GroupPreferenceCategory;

    if-nez v2, :cond_0

    const-string p1, "isNewGroup  tempGroup null"

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return v0

    .line 176
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/widget/GroupPreferenceCategory;->getGroupId()I

    move-result v3

    .line 177
    sget-boolean v5, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz v5, :cond_1

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNewGroup val "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 185
    :goto_1
    sget-boolean p0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p0, :cond_4

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isNewGroup id  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  val "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method private isValid()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCtx:Landroid/content/Context;

    .line 600
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getDeviceGroupClientProfile()Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 603
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    const-string p0, "GroupUtilss"

    .line 594
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removePreference(Lcom/android/settings/widget/GroupPreferenceCategory;Landroidx/preference/Preference;)V
    .locals 6

    .line 319
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "removePreference Header invalid"

    .line 321
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return-void

    .line 324
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Landroidx/preference/Preference;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const-string/jumbo p1, "removePreference Header groupId is invalid"

    .line 326
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_5

    .line 331
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

    .line 332
    sget-boolean v2, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    const-string v3, "GroupUtilss"

    if-eqz v2, :cond_2

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePreference Header headerPreference "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " header id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->getGroupId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " groupId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->getGroupId()I

    move-result v4

    if-ne v4, p2, :cond_4

    .line 338
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->decrementChildCount()I

    move-result v4

    if-eqz v2, :cond_3

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePreference Header group id  chCount "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-gtz v4, :cond_4

    .line 343
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateGroupStatus(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    .line 130
    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceType(I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCacheDeviceNamanger:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceType(I)V

    .line 134
    sget-boolean p0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p0, :cond_1

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateGroupStatus updated "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupUtilss"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGroupStatus failed  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " groupId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addDevice(Ljava/util/ArrayList;ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;I",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")Z"
        }
    .end annotation

    .line 629
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/bluetooth/GroupUtils;->isUpdate(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 630
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 631
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 637
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 640
    :cond_2
    sget-boolean p0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p0, :cond_3

    .line 641
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addDevice cachedDevice "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " name "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is added "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupUtilss"

    .line 641
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p2
.end method

.method public addPreference(Ljava/util/ArrayList;Landroidx/preference/Preference;Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;",
            "Landroidx/preference/Preference;",
            "Lcom/android/settings/widget/GearPreference$OnGearClickListener;",
            ")V"
        }
    .end annotation

    .line 256
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Landroidx/preference/Preference;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addPreference groupId is not valid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->isNewGroup(ILjava/util/ArrayList;)Z

    move-result v1

    .line 262
    sget-boolean v2, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    const-string v3, "GroupUtilss"

    if-eqz v2, :cond_1

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPreference  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isNewGroup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_3

    .line 268
    invoke-direct {p0, v0, p3}, Lcom/android/settings/bluetooth/GroupUtils;->getHedaer(ILcom/android/settings/widget/GearPreference$OnGearClickListener;)Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

    move-result-object p3

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/GroupUtils;->getParentGroup(Ljava/util/ArrayList;Landroidx/preference/Preference;)Lcom/android/settings/widget/GroupPreferenceCategory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParentGroup not found for groupId "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1, p3}, Lcom/android/settings/bluetooth/GroupUtils;->isAllGroupsFilled(Ljava/util/ArrayList;Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;)V

    return-void

    .line 275
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/GroupPreferenceCategory;->setGroupId(I)V

    .line 276
    invoke-virtual {v1, p3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 277
    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 p0, 0x1

    .line 278
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/GroupUtils;->getExistingGroup(Ljava/util/ArrayList;Landroidx/preference/Preference;)Lcom/android/settings/widget/GroupPreferenceCategory;

    move-result-object v1

    if-nez v1, :cond_4

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getExistingGroup not found for groupId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    return-void

    .line 285
    :cond_4
    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    if-eqz v2, :cond_5

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addPreference  key "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method connectGroup(I)Z
    .locals 1

    .line 462
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->connectGroup(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method disconnectGroup(I)Z
    .locals 1

    .line 469
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->disconnectGroup(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method forgetGroup(I)Z
    .locals 1

    .line 476
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->forgetGroup(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAnyBCConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->getGroup(I)Landroid/bluetooth/DeviceGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mDeviceGroup:Landroid/bluetooth/DeviceGroup;

    const-string v0, "GroupUtilss"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "getAnyBCConnectedDevice: dGrp is null"

    .line 415
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/GroupUtils;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-nez v2, :cond_1

    const-string p0, "getAnyBCConnectedDevice: BCProfile is null"

    .line 419
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 422
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/DeviceGroup;->getDeviceGroupMembers()Ljava/util/List;

    move-result-object p1

    .line 423
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 424
    iget-object v2, p0, Lcom/android/settings/bluetooth/GroupUtils;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move-object v1, v0

    :cond_3
    return-object v1
.end method

.method getCahcedDevice(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCacheDeviceNamanger:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 396
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v2, :cond_0

    .line 399
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupDeviceBonded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 401
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_1
    sget-boolean p0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p0, :cond_2

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCahcedDevice "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " list "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupUtilss"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 2

    .line 119
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getQGroupId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, " qgroupId is -1"

    .line 121
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    .line 123
    :cond_0
    sget-boolean p0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p0, :cond_1

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "qgroupId "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupUtilss"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method getGroupSize(I)I
    .locals 1

    .line 521
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->getGroup(I)Landroid/bluetooth/DeviceGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupUtils;->mDeviceGroup:Landroid/bluetooth/DeviceGroup;

    if-eqz p1, :cond_0

    .line 524
    invoke-virtual {p1}, Landroid/bluetooth/DeviceGroup;->getDeviceGroupSize()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 527
    :goto_0
    sget-boolean p1, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p1, :cond_1

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceGroupSize size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GroupUtilss"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method getGroupTitle(I)Ljava/lang/String;
    .locals 1

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isGroupDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mIsGroupEnabled:Z

    if-nez v0, :cond_1

    .line 93
    sget-boolean p1, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p1, :cond_0

    const-string p1, " GroupProfile not enabled"

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGroupDevice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isTypeUnKnown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/GroupUtils;->updateGroupStatus(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 104
    :cond_2
    sget-boolean p0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p0, :cond_3

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isGroupDevice "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGroupDevice()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " name "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getmType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GroupUtilss"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGroupDevice()Z

    move-result p0

    return p0
.end method

.method isGroupDiscoveryInProgress(I)Z
    .locals 1

    .line 483
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 486
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->isGroupDiscoveryInProgress(I)Z

    move-result p0

    return p0
.end method

.method isHideGroupOptions(I)Z
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCacheDeviceNamanger:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 555
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 556
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 557
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    .line 558
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupDeviceBonded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupIdMatch(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 565
    :goto_0
    sget-boolean p1, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p1, :cond_2

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isHideGroupOptions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GroupUtilss"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method public isHidePCGGroups()Z
    .locals 3

    .line 536
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getMostRecentlyConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 539
    iget-object v2, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCacheDeviceNamanger:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupDeviceBondedOnly(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 546
    :goto_0
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz v0, :cond_2

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHidePCGGroups "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupUtilss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method isUpdate(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    .line 622
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method launchAddSourceGroup(I)V
    .locals 3

    const-string v0, "com.android.settings.bluetooth.BluetoothSADetail"

    .line 434
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "GroupUtilss"

    const-string/jumbo v2, "no SADetail exists"

    .line 436
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->getAnyBCConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 441
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v2, "device_address"

    .line 447
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "group_op"

    const/4 v2, 0x1

    .line 448
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 451
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mCtx:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 453
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bluetooth_search_broadcasters:I

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x19

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_1
    return-void
.end method

.method removeDevice(Ljava/util/ArrayList;ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;I",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")Z"
        }
    .end annotation

    .line 652
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/bluetooth/GroupUtils;->isUpdate(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    .line 653
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 654
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move p0, p2

    :goto_0
    if-eqz p0, :cond_3

    .line 661
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_1

    :cond_2
    move p0, p2

    .line 664
    :cond_3
    :goto_1
    sget-boolean p1, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz p1, :cond_4

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeDevice cachedDevice "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " isremoved "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GroupUtilss"

    .line 665
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p0
.end method

.method public removePreference(Ljava/util/ArrayList;Landroidx/preference/Preference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;",
            "Landroidx/preference/Preference;",
            ")V"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/GroupUtils;->getExistingGroup(Ljava/util/ArrayList;Landroidx/preference/Preference;)Lcom/android/settings/widget/GroupPreferenceCategory;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string/jumbo v0, "removePreference group null "

    .line 302
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/GroupUtils;->loge(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/GroupUtils;->removePreference(Lcom/android/settings/widget/GroupPreferenceCategory;Landroidx/preference/Preference;)V

    return-void

    .line 306
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 307
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 p0, -0x1

    .line 308
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/GroupPreferenceCategory;->setGroupId(I)V

    .line 309
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 p0, 0x0

    .line 310
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method startGroupDiscovery(I)Z
    .locals 4

    .line 490
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->isGroupDiscoveryInProgress(I)Z

    move-result v0

    .line 494
    sget-boolean v2, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz v2, :cond_1

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGroupDiscovery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "isDiscovering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroupUtilss"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    .line 498
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->startGroupDiscovery(I)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method stopGroupDiscovery(I)Z
    .locals 4

    .line 505
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupUtils;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->isGroupDiscoveryInProgress(I)Z

    move-result v0

    .line 509
    sget-boolean v2, Lcom/android/settings/bluetooth/GroupUtils;->D:Z

    if-eqz v2, :cond_1

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGroupDiscovery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "isDiscovering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroupUtilss"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 513
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupUtils;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->stopGroupDiscovery(I)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
