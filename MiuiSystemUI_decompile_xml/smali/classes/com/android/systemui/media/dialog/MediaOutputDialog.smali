.class public final Lcom/android/systemui/media/dialog/MediaOutputDialog;
.super Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 2
    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialog;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 5
    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 9
    iget-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 11
    invoke-direct {p1, p3}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 16
    if-nez p2, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 20
    move-result-object p0

    .line 23
    const/16 p1, 0x7f6

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method


# virtual methods
.method public final getAppSourceIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getNotificationSmallIcon()Landroidx/core/graphics/drawable/IconCompat;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getBroadcastIconVisibility()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputDialog;->isBroadcastSupported()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 10
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 12
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 14
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 20
    if-nez p0, :cond_1

    .line 22
    :goto_0
    move p0, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    .line 26
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result p0

    .line 33
    xor-int/lit8 p0, p0, 0x1

    .line 34
    :goto_1
    if-eqz p0, :cond_2

    .line 36
    goto :goto_2

    .line 38
    :cond_2
    const/16 v0, 0x8

    .line 39
    :goto_2
    return v0
    .line 41
.end method

.method public final getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getHeaderIconRes()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final getHeaderIconSize()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0707a6    # @dimen/media_output_dialog_header_album_icon_size '72.0dp'

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final getHeaderSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 4
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 10
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    .line 21
    move-result-object v0

    .line 24
    :goto_0
    return-object v0
    .line 25
.end method

.method public final getHeaderText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getStopButtonText()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputDialog;->isBroadcastSupported()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isPlaying()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 18
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 20
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 22
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 28
    if-nez v0, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result v0

    .line 40
    xor-int/lit8 v1, v0, 0x1

    .line 41
    :goto_0
    if-nez v1, :cond_2

    .line 43
    const v0, 0x7f1306e6    # @string/media_output_broadcast 'Broadcast'

    .line 45
    goto :goto_1

    .line 48
    :cond_2
    const v0, 0x7f1306f4    # @string/media_output_dialog_button_stop_casting 'Stop casting'

    .line 49
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
.end method

.method public final getStopButtonVisibility()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 13
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z

    .line 17
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputDialog;->isBroadcastSupported()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isPlaying()Z

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    const/4 p0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move p0, v1

    .line 39
    :goto_1
    if-nez v0, :cond_3

    .line 40
    if-eqz p0, :cond_2

    .line 42
    goto :goto_2

    .line 44
    :cond_2
    const/16 v1, 0x8

    .line 45
    :cond_3
    :goto_2
    return v1
    .line 47
.end method

.method public final isBroadcastSupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 2
    const-string/jumbo v1, "settings_need_connected_ble_device_for_broadcast"

    .line 4
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 17
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isBLEDevice()Z

    .line 29
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v1

    .line 36
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 43
    if-eqz p0, :cond_2

    .line 45
    move p0, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move p0, v2

    .line 49
    :goto_1
    if-eqz p0, :cond_3

    .line 50
    if-eqz v0, :cond_3

    .line 52
    goto :goto_2

    .line 54
    :cond_3
    move v1, v2

    .line 55
    :goto_2
    return v1
    .line 56
.end method

.method public final onBroadcastIconClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->startLeBroadcastDialog()V

    .line 2
    return-void
    .line 5
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    sget-object p1, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;->MEDIA_OUTPUT_DIALOG_SHOW:Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    .line 7
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onStopButtonClick()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputDialog;->isBroadcastSupported()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isPlaying()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 19
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 21
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 23
    const/4 v2, 0x1

    .line 25
    if-nez v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 29
    if-nez v0, :cond_1

    .line 31
    :goto_0
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    .line 35
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v0

    .line 42
    xor-int/2addr v0, v2

    .line 43
    :goto_1
    if-nez v0, :cond_5

    .line 44
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 46
    const-string v3, "MediaOutputDialog"

    .line 48
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    const-string v4, "PrefIsLeBroadcastFirstLaunch"

    .line 56
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    const-string v5, "PREF_IS_LE_BROADCAST_FIRST_LAUNCH: true"

    .line 64
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 69
    sget-object v5, Lcom/android/systemui/media/dialog/MediaOutputController$BroadcastNotifyDialog;->ACTION_FIRST_LAUNCH:Lcom/android/systemui/media/dialog/MediaOutputController$BroadcastNotifyDialog;

    .line 71
    new-instance v6, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;

    .line 73
    invoke-direct {v6, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V

    .line 75
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/media/dialog/MediaOutputController;->launchLeBroadcastNotifyDialog(Lcom/android/systemui/media/dialog/MediaOutputController$BroadcastNotifyDialog;Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;)V

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    move-result-object v0

    .line 84
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    move v0, v2

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move v0, v1

    .line 93
    :goto_2
    if-eqz v0, :cond_3

    .line 94
    return-void

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 97
    const v3, 0x7f1306ee    # @string/media_output_broadcast_starting 'Starting…'

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 110
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 112
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 114
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 116
    if-nez v3, :cond_4

    .line 118
    const-string v0, "MediaOutputController"

    .line 120
    const-string v2, "The broadcast profile is null"

    .line 122
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto :goto_3

    .line 127
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getAppSourceName()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 131
    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;)V

    .line 132
    move v1, v2

    .line 135
    :goto_3
    if-nez v1, :cond_8

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStartFailed()V

    .line 138
    goto :goto_4

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 147
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->stopBluetoothLeBroadcast()Z

    .line 149
    move-result v0

    .line 152
    if-nez v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 155
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;

    .line 157
    const/4 v2, 0x3

    .line 159
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    goto :goto_4

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 167
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    .line 169
    sget-boolean v3, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    .line 171
    if-eqz v3, :cond_7

    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    const-string v3, "MediaOutputMetricLogger"

    .line 178
    const-string v4, "logInteraction - Stop casting"

    .line 180
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 188
    const/4 v3, 0x2

    .line 189
    invoke-static {v2, v3, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(Ljava/lang/String;II)V

    .line 190
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 193
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->releaseSession()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialog;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 198
    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    .line 203
    :cond_8
    :goto_4
    return-void
    .line 206
.end method
