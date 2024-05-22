.class public final Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;
.super Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailContent$Callback;


# instance fields
.field public mItems:Lcom/android/systemui/qs/QSDetailContent;

.field public pendingEnable:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

.field public final updateItemsRunnable:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p2, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;

    .line 7
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;)V

    .line 9
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->updateItemsRunnable:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;

    .line 12
    return-void
    .line 14
.end method

.method public static setDeviceActive(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 3
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    const/16 v1, 0x15

    .line 17
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 19
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    const/16 v1, 0x16

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    move v1, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move v1, v0

    .line 36
    :goto_1
    if-nez v1, :cond_f

    .line 37
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 39
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 41
    const-string v4, "CachedBluetoothDevice"

    .line 43
    if-eqz v1, :cond_4

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    .line 47
    move-result v5

    .line 50
    if-eqz v5, :cond_4

    .line 51
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 53
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    if-nez v1, :cond_2

    .line 57
    move v1, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    if-nez v5, :cond_3

    .line 61
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    .line 63
    move-result v1

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v1, v5, v3}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 68
    move-result v1

    .line 71
    :goto_2
    if-eqz v1, :cond_4

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    const-string v5, "OnPreferenceClickListener: A2DP active device="

    .line 76
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 87
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 91
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 93
    if-eqz v1, :cond_7

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    .line 97
    move-result v5

    .line 100
    if-eqz v5, :cond_7

    .line 101
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 103
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    if-nez v1, :cond_5

    .line 107
    move v1, v3

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    if-nez v5, :cond_6

    .line 111
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    .line 113
    move-result v1

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-virtual {v1, v5, v0}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 118
    move-result v1

    .line 121
    :goto_3
    if-eqz v1, :cond_7

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    const-string v5, "OnPreferenceClickListener: Headset active device="

    .line 126
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 137
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 141
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 143
    if-eqz v1, :cond_c

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    .line 147
    move-result v5

    .line 150
    if-eqz v5, :cond_c

    .line 151
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 153
    iget-object v6, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 155
    if-nez v6, :cond_8

    .line 157
    move v0, v3

    .line 159
    goto :goto_5

    .line 160
    :cond_8
    const-class v7, Landroid/media/AudioManager;

    .line 161
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 168
    check-cast v1, Landroid/media/AudioManager;

    .line 169
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    .line 171
    move-result v1

    .line 174
    if-eq v1, v0, :cond_a

    .line 175
    if-eq v1, v2, :cond_a

    .line 177
    const/4 v7, 0x3

    .line 179
    if-ne v1, v7, :cond_9

    .line 180
    goto :goto_4

    .line 182
    :cond_9
    move v0, v3

    .line 183
    :cond_a
    :goto_4
    if-nez v5, :cond_b

    .line 184
    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    .line 186
    move-result v0

    .line 189
    goto :goto_5

    .line 190
    :cond_b
    invoke-virtual {v6, v5, v0}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 191
    move-result v0

    .line 194
    :goto_5
    if-eqz v0, :cond_c

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "OnPreferenceClickListener: Hearing Aid active device="

    .line 199
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 210
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 214
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 216
    if-eqz v0, :cond_f

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    .line 220
    move-result v1

    .line 223
    if-eqz v1, :cond_f

    .line 224
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 226
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 228
    if-nez v0, :cond_d

    .line 230
    goto :goto_6

    .line 232
    :cond_d
    if-nez v1, :cond_e

    .line 233
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    .line 235
    move-result v3

    .line 238
    goto :goto_6

    .line 239
    :cond_e
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 240
    move-result v3

    .line 243
    :goto_6
    if-eqz v3, :cond_f

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "OnPreferenceClickListener: LeAudio active device="

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p0

    .line 259
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_f
    return-void
    .line 263
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/QSDetailContent;->Companion:Lcom/android/systemui/qs/QSDetailContent$Companion;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailContent$Companion;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailContent;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 11
    const-string p2, "Bluetooth"

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSDetailContent;->setSuffix(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailContent;->setCallback(Lcom/android/systemui/qs/QSDetailContent$Callback;)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    return-object p0
    .line 33
.end method

.method public final getContainerHeight()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p0

    .line 24
    const v0, 0x7f070eca    # @dimen/qs_bluetooth_detail_height '430.0dp'

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, -0x1

    .line 33
    :goto_0
    return p0
    .line 34
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x96

    .line 2
    return p0
    .line 4
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    sget-object v0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    .line 6
    invoke-static {p0, v0}, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->getSettingsSplitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    const v0, 0x7f130962    # @string/quick_settings_bluetooth_label 'Bluetooth'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final getToggleEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 4
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 7
    iget v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 9
    const/16 v1, 0xa

    .line 11
    if-eq v0, v1, :cond_1

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 15
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 17
    const/16 v0, 0xc

    .line 19
    if-ne p0, v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0
    .line 27
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;

    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method

.method public final getToggleVisible()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    .line 13
    move-result p0

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 17
    return p0
    .line 19
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailContent$Item;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/systemui/qs/QSDetailContent$Item;->getTag()Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 16
    :cond_1
    if-nez v0, :cond_2

    .line 18
    return-void

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->setDeviceActive(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 31
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 33
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 35
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 37
    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    .line 41
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 44
    if-nez p0, :cond_5

    .line 46
    goto :goto_2

    .line 48
    :cond_5
    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailContent;->setItemClicked(Z)V

    .line 50
    :goto_2
    return-void
    .line 53
.end method

.method public final onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailContent$SelectableItem;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->tag:Ljava/lang/Object;

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    move-object p1, v0

    .line 8
    :goto_0
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    move-object v0, p1

    .line 13
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 14
    :cond_1
    if-nez v0, :cond_2

    .line 16
    return-void

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 19
    move-result-object p1

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 27
    move-result p1

    .line 30
    if-ne p1, v1, :cond_3

    .line 31
    move p1, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    move p1, v2

    .line 35
    :goto_1
    if-eqz p1, :cond_4

    .line 36
    goto :goto_3

    .line 38
    :cond_4
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 39
    move-result-object p1

    .line 42
    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 45
    move-result p1

    .line 48
    if-ne p1, v1, :cond_5

    .line 49
    move p1, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    move p1, v2

    .line 53
    :goto_2
    if-eqz p1, :cond_6

    .line 54
    goto :goto_3

    .line 56
    :cond_6
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 57
    move-result-object p1

    .line 60
    check-cast p1, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 66
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v3

    .line 70
    if-eqz v3, :cond_9

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 77
    instance-of v4, v3, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 79
    if-eqz v4, :cond_8

    .line 81
    goto :goto_3

    .line 83
    :cond_8
    instance-of v3, v3, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 84
    if-eqz v3, :cond_7

    .line 86
    :goto_3
    move p1, v1

    .line 88
    goto :goto_4

    .line 89
    :cond_9
    move p1, v2

    .line 90
    :goto_4
    if-eqz p1, :cond_c

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 93
    move-result p1

    .line 96
    if-nez p1, :cond_b

    .line 97
    const/4 p1, 0x2

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 100
    move-result p1

    .line 103
    if-nez p1, :cond_b

    .line 104
    const/16 p1, 0x15

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 108
    move-result p1

    .line 111
    if-nez p1, :cond_b

    .line 112
    const/16 p1, 0x16

    .line 114
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 116
    move-result p1

    .line 119
    if-eqz p1, :cond_a

    .line 120
    goto :goto_5

    .line 122
    :cond_a
    move v1, v2

    .line 123
    :cond_b
    :goto_5
    if-nez v1, :cond_c

    .line 124
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->setDeviceActive(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 126
    goto :goto_6

    .line 129
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 132
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 136
    if-eqz p0, :cond_d

    .line 138
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 140
    :cond_d
    :goto_6
    return-void
    .line 143
.end method

.method public final setBluetoothEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 6
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 8
    const v2, 0x7f081074    # @drawable/ic_miui_qs_bluetooth_detail_empty 'res/drawable/ic_miui_qs_bluetooth_detail_empty.xml'

    .line 10
    if-nez v1, :cond_0

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->pendingEnable:Z

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 20
    if-eqz p0, :cond_1

    .line 22
    const v1, 0x7f13093e    # @string/qs_control_big_tile_state_opening 'Turning on…'

    .line 24
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/QSDetailContent;->setEmptyState(II)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    if-nez p1, :cond_1

    .line 31
    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->pendingEnable:Z

    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 36
    if-eqz p0, :cond_1

    .line 38
    const v1, 0x7f13021a    # @string/bt_is_off 'Bluetooth is off'

    .line 40
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/QSDetailContent;->setEmptyState(II)V

    .line 43
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 46
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setBluetoothEnabled(Z)V

    .line 50
    return-void
    .line 53
.end method

.method public final setToggleState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    const/16 v1, 0x9a

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->setBluetoothEnabled(Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final updateItems()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 6
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->btHandler:Landroid/os/Handler;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->updateItemsRunnable:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;

    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->pendingEnable:Z

    .line 23
    const/4 v1, 0x0

    .line 25
    const v2, 0x7f081074    # @drawable/ic_miui_qs_bluetooth_detail_empty 'res/drawable/ic_miui_qs_bluetooth_detail_empty.xml'

    .line 26
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    const v3, 0x7f13093e    # @string/qs_control_big_tile_state_opening 'Turning on…'

    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/QSDetailContent;->setEmptyState(II)V

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 41
    if-eqz p0, :cond_4

    .line 43
    new-array v0, v1, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailContent;->setItems([Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 51
    if-eqz v0, :cond_3

    .line 53
    const v3, 0x7f13021a    # @string/bt_is_off 'Bluetooth is off'

    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/QSDetailContent;->setEmptyState(II)V

    .line 58
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 61
    if-eqz p0, :cond_4

    .line 63
    new-array v0, v1, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailContent;->setItems([Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 67
    :cond_4
    :goto_0
    return-void
.end method
