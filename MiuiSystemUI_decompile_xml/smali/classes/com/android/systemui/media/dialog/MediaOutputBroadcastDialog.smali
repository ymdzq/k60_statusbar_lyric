.class public final Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;
.super Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final BROADCAST_CODE_MAX_LENGTH:I = 0x10

.field static final BROADCAST_CODE_MIN_LENGTH:I = 0x4

.field static final BROADCAST_NAME_MAX_LENGTH:I = 0xfe


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field public final mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

.field public mBroadcastCode:Landroid/widget/TextView;

.field public final mBroadcastCodeTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

.field public mBroadcastErrorMessage:Landroid/widget/TextView;

.field public mBroadcastName:Landroid/widget/TextView;

.field public final mBroadcastNameTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

.field public mBroadcastQrCodeView:Landroid/widget/ImageView;

.field public mCurrentBroadcastCode:Ljava/lang/String;

.field public mCurrentBroadcastName:Ljava/lang/String;

.field public mIsLeBroadcastAssistantCallbackRegistered:Z

.field public mIsPasswordHide:Ljava/lang/Boolean;

.field public mIsStopbyUpdateBroadcastCode:Z

.field public mRetryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsPasswordHide:Ljava/lang/Boolean;

    .line 7
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    .line 12
    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    .line 14
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    .line 16
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCodeTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    .line 19
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    .line 21
    const/4 p2, 0x1

    .line 23
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastNameTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    .line 27
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    .line 34
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 36
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 38
    invoke-direct {p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 43
    return-void
    .line 45
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

.method public final getBroadcastMetadataInfo(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "MediaOutputController"

    .line 2
    const-string v1, ""

    .line 4
    if-eqz p1, :cond_2

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    return-object v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 14
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 16
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 18
    if-nez p0, :cond_1

    .line 20
    const-string p0, "getBroadcastCode: LE Audio Broadcast is null"

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    .line 30
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 34
    :goto_0
    return-object v1

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 44
    if-nez p0, :cond_3

    .line 46
    const-string p0, "getBroadcastName: LE Audio Broadcast is null"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_1

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    .line 54
    :goto_1
    return-object v1
    .line 56
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

.method public getRetryCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getStopButtonVisibility()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final handleLeBroadcastMetadataChanged()V
    .locals 2

    .line 1
    const-string v0, "MediaOutputBroadcastDialog"

    .line 2
    const-string v1, "handleLeBroadcastMetadataChanged:"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    .line 9
    return-void
    .line 12
.end method

.method public final handleLeBroadcastStartFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->setBroadcastCode(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleUpdateFailedUi()V

    .line 15
    return-void
    .line 18
.end method

.method public final handleLeBroadcastStarted()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 3
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    .line 12
    return-void
    .line 15
.end method

.method public final handleLeBroadcastStopFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->setBroadcastCode(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleUpdateFailedUi()V

    .line 15
    return-void
    .line 18
.end method

.method public final handleLeBroadcastStopped()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    .line 7
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 9
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 11
    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 13
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 15
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string v1, "MediaOutputController"

    .line 21
    const-string v2, "The broadcast profile is null"

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->getAppSourceName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    .line 36
    :goto_0
    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleLeBroadcastStartFailed()V

    .line 39
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    .line 43
    :cond_2
    return-void
    .line 46
.end method

.method public final handleLeBroadcastUpdateFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastName:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 6
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 8
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 10
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    const-string v0, "MediaOutputController"

    .line 15
    const-string/jumbo v1, "setBroadcastName: LE Audio Broadcast is null"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setProgramInfo(Ljava/lang/String;Z)V

    .line 24
    :goto_0
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 27
    add-int/2addr v0, v2

    .line 29
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleUpdateFailedUi()V

    .line 32
    return-void
    .line 35
.end method

.method public final handleLeBroadcastUpdated()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 3
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    .line 12
    return-void
    .line 15
.end method

.method public final handleUpdateFailedUi()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "MediaOutputBroadcastDialog"

    .line 6
    const-string v0, "handleUpdateFailedUi: mAlertDialog is null"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    iget v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 14
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    const v1, 0x7f1306ef    # @string/media_output_broadcast_update_error 'Can’t save. Try again.'

    .line 21
    move v2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput v4, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    .line 26
    const v1, 0x7f1306eb    # @string/media_output_broadcast_last_update_error 'Can’t save.'

    .line 28
    move v2, v4

    .line 31
    :goto_0
    const/4 v5, -0x1

    .line 32
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 33
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    if-eqz v2, :cond_2

    .line 39
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    :cond_3
    return-void
    .line 56
.end method

.method public final isBroadcastSupported()Z
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
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isBLEDevice()Z

    .line 17
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 25
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 27
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 29
    const/4 v2, 0x1

    .line 31
    if-eqz p0, :cond_1

    .line 32
    move p0, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p0, v1

    .line 36
    :goto_1
    if-eqz p0, :cond_2

    .line 37
    if-eqz v0, :cond_2

    .line 39
    move v1, v2

    .line 41
    :cond_2
    return v1
    .line 42
.end method

.method public final launchBroadcastUpdatedDialog(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0d0180    # @layout/media_output_broadcast_update_dialog 'res/layout/media_output_broadcast_update_dialog.xml'

    .line 8
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    const v1, 0x7f0a0164    # @id/broadcast_edit_text

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/EditText;

    .line 23
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    if-eqz p2, :cond_0

    .line 28
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCodeTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastNameTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    .line 33
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    const p1, 0x7f0a0165    # @id/broadcast_error_message

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 47
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 49
    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    if-eqz p2, :cond_1

    .line 56
    const v3, 0x7f1306e7    # @string/media_output_broadcast_code 'Password'

    .line 58
    goto :goto_1

    .line 61
    :cond_1
    const v3, 0x7f1306ec    # @string/media_output_broadcast_name 'Broadcast Name'

    .line 62
    :goto_1
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 69
    move-result-object p1

    .line 72
    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 73
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    move-result-object p1

    .line 78
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda1;

    .line 79
    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;ZLandroid/widget/EditText;)V

    .line 81
    const p2, 0x7f1306e9    # @string/media_output_broadcast_dialog_save 'Save'

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 91
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 95
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 97
    move-result-object p1

    .line 100
    const/16 p2, 0x7d9

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 106
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 111
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 116
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 118
    return-void
    .line 121
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 5
    const v0, 0x7f0a016d    # @id/broadcast_qrcode

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/ViewStub;

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 16
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 19
    const v0, 0x7f0a0754    # @id/qrcode_view

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/ImageView;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastQrCodeView:Landroid/widget/ImageView;

    .line 30
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 32
    const v0, 0x7f0a0167    # @id/broadcast_info

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/ImageView;

    .line 41
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    .line 43
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 52
    const v0, 0x7f0a016b    # @id/broadcast_name_summary

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/TextView;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastName:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 65
    const v0, 0x7f0a0169    # @id/broadcast_name_edit

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/ImageView;

    .line 74
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    .line 76
    const/4 v1, 0x1

    .line 78
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 85
    const v0, 0x7f0a0162    # @id/broadcast_code_summary

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 90
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/TextView;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCode:Landroid/widget/TextView;

    .line 96
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 98
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 105
    const v0, 0x7f0a0160    # @id/broadcast_code_eye

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 110
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/ImageView;

    .line 114
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    .line 116
    const/4 v1, 0x2

    .line 118
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 125
    const v0, 0x7f0a015f    # @id/broadcast_code_edit

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 130
    move-result-object p1

    .line 133
    check-cast p1, Landroid/widget/ImageView;

    .line 134
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    .line 136
    const/4 v1, 0x3

    .line 138
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    .line 145
    return-void
    .line 148
.end method

.method public final onStopButtonClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->stopBluetoothLeBroadcast()Z

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    .line 7
    return-void
    .line 10
.end method

.method public final refreshUi()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 4
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 6
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 8
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    const-string v0, "MediaOutputController"

    .line 14
    const-string v3, "getBroadcastMetadata: LE Audio Broadcast is null"

    .line 16
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    goto/16 :goto_5

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getLatestBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 23
    move-result-object v0

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    const-string v0, "LocalBluetoothLeBroadcast"

    .line 30
    const-string v4, "The BluetoothLeBroadcastMetadata is null."

    .line 32
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    move-object v4, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v4, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

    .line 39
    invoke-direct {v4, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 41
    :goto_0
    if-eqz v4, :cond_d

    .line 44
    iget-object v0, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->metadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 46
    if-eqz v0, :cond_d

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v5, Lkotlin/Pair;

    .line 55
    const-string v6, "R"

    .line 57
    const-string v7, "65536"

    .line 59
    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v5, Lkotlin/Pair;

    .line 67
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    .line 69
    move-result v6

    .line 72
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 76
    const-string v7, "T"

    .line 77
    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v5, Lkotlin/Pair;

    .line 85
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    .line 87
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 91
    move-result-object v6

    .line 94
    const-string v7, ":"

    .line 95
    const-string v8, "-"

    .line 97
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 102
    const-string v7, "D"

    .line 103
    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Lkotlin/Pair;

    .line 111
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    .line 113
    move-result v6

    .line 116
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    move-result-object v6

    .line 120
    const-string v7, "AS"

    .line 121
    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Lkotlin/Pair;

    .line 129
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    .line 131
    move-result v6

    .line 134
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    move-result-object v6

    .line 138
    const-string v7, "B"

    .line 139
    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    .line 147
    move-result-object v5

    .line 150
    const/4 v6, 0x2

    .line 151
    if-eqz v5, :cond_3

    .line 152
    new-instance v5, Lkotlin/Pair;

    .line 154
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    .line 156
    move-result-object v7

    .line 159
    if-eqz v7, :cond_2

    .line 160
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 162
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 164
    move-result-object v7

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    move-object v7, v3

    .line 169
    :goto_1
    invoke-static {v7, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 170
    move-result-object v7

    .line 173
    const-string v8, "BN"

    .line 174
    invoke-direct {v5, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 182
    move-result-object v5

    .line 185
    if-eqz v5, :cond_5

    .line 186
    new-instance v5, Lkotlin/Pair;

    .line 188
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 190
    move-result-object v7

    .line 193
    if-eqz v7, :cond_4

    .line 194
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    .line 196
    move-result-object v3

    .line 199
    :cond_4
    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 200
    move-result-object v3

    .line 203
    const-string v7, "PM"

    .line 204
    invoke-direct {v5, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_5
    new-instance v3, Lkotlin/Pair;

    .line 212
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    .line 214
    move-result v5

    .line 217
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 218
    move-result-object v5

    .line 221
    const-string v7, "SI"

    .line 222
    invoke-direct {v3, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    .line 230
    move-result-object v3

    .line 233
    if-eqz v3, :cond_6

    .line 234
    new-instance v3, Lkotlin/Pair;

    .line 236
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    .line 238
    move-result-object v5

    .line 241
    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 242
    move-result-object v5

    .line 245
    const-string v7, "C"

    .line 246
    invoke-direct {v3, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    .line 254
    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 258
    move-result-object v0

    .line 261
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    move-result v3

    .line 265
    if-eqz v3, :cond_c

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    move-result-object v3

    .line 271
    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 272
    new-instance v5, Lkotlin/Pair;

    .line 274
    new-instance v7, Ljava/util/ArrayList;

    .line 276
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v8, Lkotlin/Pair;

    .line 281
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    .line 283
    move-result-object v9

    .line 286
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    move-result-object v9

    .line 290
    move v10, v2

    .line 291
    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    move-result v11

    .line 295
    if-eqz v11, :cond_8

    .line 296
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    move-result-object v11

    .line 301
    check-cast v11, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 302
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    .line 304
    move-result v12

    .line 307
    if-eqz v12, :cond_7

    .line 308
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    .line 310
    move-result v12

    .line 313
    if-lez v12, :cond_7

    .line 314
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    .line 316
    move-result v11

    .line 319
    sub-int/2addr v11, v1

    .line 320
    shl-int v11, v1, v11

    .line 321
    or-int/2addr v10, v11

    .line 323
    goto :goto_3

    .line 324
    :cond_8
    if-nez v10, :cond_9

    .line 325
    const/4 v10, -0x1

    .line 327
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    .line 328
    move-result-object v9

    .line 331
    const-string v10, "BS"

    .line 332
    invoke-direct {v8, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v8, Lkotlin/Pair;

    .line 340
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    .line 342
    move-result-object v9

    .line 345
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 346
    move-result-object v9

    .line 349
    move v10, v2

    .line 350
    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    move-result v11

    .line 354
    if-eqz v11, :cond_b

    .line 355
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    move-result-object v11

    .line 360
    check-cast v11, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 361
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    .line 363
    move-result v12

    .line 366
    if-lez v12, :cond_a

    .line 367
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    .line 369
    move-result v11

    .line 372
    sub-int/2addr v11, v1

    .line 373
    shl-int v11, v1, v11

    .line 374
    or-int/2addr v10, v11

    .line 376
    goto :goto_4

    .line 377
    :cond_b
    invoke-static {v10}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    .line 378
    move-result-object v9

    .line 381
    const-string v10, "BM"

    .line 382
    invoke-direct {v8, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v8, Lkotlin/Pair;

    .line 390
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 392
    move-result-object v3

    .line 395
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    .line 396
    move-result-object v3

    .line 399
    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 400
    move-result-object v3

    .line 403
    const-string v9, "AC"

    .line 404
    invoke-direct {v8, v9, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v3, ","

    .line 412
    invoke-static {v3, v7}, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->toQrCodeString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 414
    move-result-object v3

    .line 417
    const-string v7, "SG"

    .line 418
    invoke-direct {v5, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    goto/16 :goto_2

    .line 426
    :cond_c
    new-instance v0, Lkotlin/Pair;

    .line 428
    const-string v3, "VN"

    .line 430
    const-string v5, "U"

    .line 432
    invoke-direct {v0, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v0, ";"

    .line 440
    invoke-static {v0, v4}, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->toQrCodeString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 442
    move-result-object v0

    .line 445
    const-string v3, "BT:"

    .line 446
    const-string v4, ";;"

    .line 448
    invoke-static {v3, v0, v4}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    move-result-object v0

    .line 453
    const-string v3, "Generated QR string : "

    .line 454
    const-string v4, "BtLeBroadcastMetadataExt"

    .line 456
    invoke-static {v3, v0, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-nez v0, :cond_e

    .line 461
    :cond_d
    :goto_5
    const-string v0, ""

    .line 463
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 465
    move-result v3

    .line 468
    if-eqz v3, :cond_f

    .line 469
    goto :goto_6

    .line 471
    :cond_f
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 472
    move-result-object v3

    .line 475
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 476
    move-result-object v3

    .line 479
    const v4, 0x7f0707af    # @dimen/media_output_qrcode_size '216.0dp'

    .line 480
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 483
    move-result v3

    .line 486
    invoke-static {v3, v0}, Lcom/android/settingslib/qrcode/QrCodeGenerator;->encodeQrCode(ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 487
    move-result-object v0

    .line 490
    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastQrCodeView:Landroid/widget/ImageView;

    .line 491
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    goto :goto_6

    .line 496
    :catch_0
    move-exception v0

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    .line 498
    const-string v4, "Error generatirng QR code bitmap "

    .line 500
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    move-result-object v0

    .line 511
    const-string v3, "MediaOutputBroadcastDialog"

    .line 512
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->getBroadcastMetadataInfo(I)Ljava/lang/String;

    .line 517
    move-result-object v0

    .line 520
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastName:Ljava/lang/String;

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->getBroadcastMetadataInfo(I)Ljava/lang/String;

    .line 523
    move-result-object v0

    .line 526
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastName:Landroid/widget/TextView;

    .line 529
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastName:Ljava/lang/String;

    .line 531
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCode:Landroid/widget/TextView;

    .line 536
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    .line 538
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh(Z)V

    .line 543
    return-void
    .line 546
.end method

.method public final start()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->start()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    .line 5
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mExecutor:Ljava/util/concurrent/Executor;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 18
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 20
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 22
    if-nez v0, :cond_0

    .line 24
    const-string v0, "MediaOutputController"

    .line 26
    const-string v2, "The broadcast assistant profile is null"

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    const-string v4, "MediaOutputController"

    .line 34
    const-string v5, "Register LE broadcast assistant callback"

    .line 36
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v4, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 41
    if-nez v4, :cond_1

    .line 43
    const-string v0, "LocalBluetoothLeBroadcastAssistant"

    .line 45
    const-string v2, "The BluetoothLeBroadcast is null."

    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    iget-object v4, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mBassLock:Ljava/lang/Object;

    .line 53
    monitor-enter v4

    .line 55
    :try_start_0
    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 56
    if-eqz v5, :cond_2

    .line 58
    const-string v0, "LocalBluetoothLeBroadcastAssistant"

    .line 60
    const-string v2, "Callback is already registered."

    .line 62
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v4

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iput-object v3, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 69
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    .line 73
    monitor-exit v4

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0

    .line 80
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 81
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 83
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 85
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 87
    if-nez v0, :cond_4

    .line 89
    const-string v0, "MediaOutputController"

    .line 91
    const-string v2, "getBroadcastMetadata: LE Audio Broadcast is null"

    .line 93
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getLatestBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 100
    move-result-object v0

    .line 103
    :goto_1
    if-nez v0, :cond_5

    .line 104
    const-string p0, "MediaOutputBroadcastDialog"

    .line 106
    const-string v0, "Error: There is no broadcastMetadata."

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    goto/16 :goto_6

    .line 113
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 115
    invoke-virtual {v2}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 117
    move-result-object v2

    .line 120
    if-eqz v2, :cond_d

    .line 121
    instance-of v3, v2, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 123
    if-eqz v3, :cond_d

    .line 125
    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->isBLEDevice()Z

    .line 127
    move-result v3

    .line 130
    if-nez v3, :cond_6

    .line 131
    goto/16 :goto_5

    .line 133
    :cond_6
    check-cast v2, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 135
    iget-object v2, v2, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 137
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 139
    const-string v3, "MediaOutputBroadcastDialog"

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 143
    const-string v5, "The broadcastMetadata broadcastId: "

    .line 145
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    .line 150
    move-result v5

    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v5, ", the device: "

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 162
    move-result-object v5

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v4

    .line 172
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 176
    iget-object v3, v3, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 178
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 180
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 182
    const-string v4, "MediaOutputController"

    .line 184
    const/4 v5, 0x0

    .line 186
    if-nez v3, :cond_7

    .line 187
    const-string v3, "The broadcast assistant profile is null"

    .line 189
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move v3, v5

    .line 194
    goto :goto_3

    .line 195
    :cond_7
    const-string v6, "LocalBluetoothLeBroadcastAssistant"

    .line 196
    const-string v7, "getAllSources()"

    .line 198
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 203
    if-nez v3, :cond_8

    .line 205
    const-string v3, "The BluetoothLeBroadcastAssistant is null"

    .line 207
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    .line 212
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 214
    goto :goto_2

    .line 217
    :cond_8
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    .line 218
    move-result-object v3

    .line 221
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 222
    const-string v7, "isThereAnyBroadcastSourceIntoSinkDevice: List size: "

    .line 224
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 229
    move-result v7

    .line 232
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v6

    .line 239
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 243
    move-result v3

    .line 246
    xor-int/2addr v3, v1

    .line 247
    :goto_3
    if-eqz v3, :cond_9

    .line 248
    const-string p0, "MediaOutputBroadcastDialog"

    .line 250
    const-string v0, "The sink device has the broadcast source now."

    .line 252
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    goto :goto_6

    .line 257
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 258
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 260
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 262
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 264
    if-nez p0, :cond_a

    .line 266
    const-string p0, "MediaOutputController"

    .line 268
    const-string v0, "The broadcast assistant profile is null"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move v1, v5

    .line 275
    goto :goto_4

    .line 276
    :cond_a
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 277
    if-nez v3, :cond_b

    .line 279
    const-string p0, "LocalBluetoothLeBroadcastAssistant"

    .line 281
    const-string v0, "The BluetoothLeBroadcastAssistant is null"

    .line 283
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    goto :goto_4

    .line 288
    :cond_b
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mBassLock:Ljava/lang/Object;

    .line 289
    monitor-enter v3

    .line 291
    :try_start_1
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 292
    if-nez v4, :cond_c

    .line 294
    const-string p0, "LocalBluetoothLeBroadcastAssistant"

    .line 296
    const-string v0, "addSource: Callback is not registered yet"

    .line 298
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v3

    .line 303
    goto :goto_4

    .line 304
    :cond_c
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 305
    invoke-virtual {p0, v2, v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    .line 307
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    :goto_4
    if-nez v1, :cond_e

    .line 311
    const-string p0, "MediaOutputBroadcastDialog"

    .line 313
    const-string v0, "Error: Source add failed"

    .line 315
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    goto :goto_6

    .line 320
    :catchall_1
    move-exception p0

    .line 321
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    throw p0

    .line 323
    :cond_d
    :goto_5
    const-string p0, "MediaOutputBroadcastDialog"

    .line 324
    const-string v0, "Error: There is no active BT LE device."

    .line 326
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_e
    :goto_6
    return-void
    .line 331
.end method

.method public final stop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->stop()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    .line 5
    if-eqz v0, :cond_4

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 16
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 18
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 20
    if-nez v0, :cond_0

    .line 22
    const-string p0, "MediaOutputController"

    .line 24
    const-string v0, "The broadcast assistant profile is null"

    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "MediaOutputController"

    .line 32
    const-string v2, "Unregister LE broadcast assistant callback"

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 39
    if-nez v1, :cond_1

    .line 41
    const-string p0, "LocalBluetoothLeBroadcastAssistant"

    .line 43
    const-string v0, "The BluetoothLeBroadcast is null."

    .line 45
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mBassLock:Ljava/lang/Object;

    .line 51
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 54
    if-nez v2, :cond_2

    .line 56
    const-string p0, "LocalBluetoothLeBroadcastAssistant"

    .line 58
    const-string v0, "Callback is not registered yet."

    .line 60
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    monitor-exit v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    if-eq v2, p0, :cond_3

    .line 67
    const-string p0, "LocalBluetoothLeBroadcastAssistant"

    .line 69
    const-string v2, "Invalid callback, use registered callback"

    .line 71
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_3
    iget-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 76
    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 78
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    .line 80
    const/4 p0, 0x0

    .line 83
    iput-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 84
    monitor-exit v1

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0

    .line 90
    :cond_4
    :goto_0
    return-void
    .line 91
.end method

.method public updateBroadcastInfo(ZLjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    .line 18
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputController;->setBroadcastCode(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 25
    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->stopBluetoothLeBroadcast()Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleLeBroadcastStopFailed()V

    .line 33
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 37
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 39
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 41
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 43
    const-string v2, "MediaOutputController"

    .line 45
    if-nez p1, :cond_2

    .line 47
    const-string/jumbo p1, "setBroadcastName: LE Audio Broadcast is null"

    .line 49
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setProgramInfo(Ljava/lang/String;Z)V

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 59
    iget-object p2, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 61
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 63
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 65
    if-nez p2, :cond_3

    .line 67
    const-string p1, "The broadcast profile is null"

    .line 69
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->getAppSourceName()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 78
    iget-object v1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 79
    const-string v2, "LocalBluetoothLeBroadcast"

    .line 81
    if-nez v1, :cond_4

    .line 83
    const-string p1, "The BluetoothLeBroadcast is null when updating the broadcast."

    .line 85
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_1

    .line 90
    :cond_4
    iget-object v1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    .line 91
    const-string/jumbo v3, "updateBroadcast: language = null ,programInfo = "

    .line 93
    invoke-static {v3, v1, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object p1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    .line 99
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBuilder:Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    .line 101
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 107
    move-result-object p1

    .line 110
    iget-object v1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 111
    iget p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    .line 113
    invoke-virtual {v1, p2, p1}, Landroid/bluetooth/BluetoothLeBroadcast;->updateBroadcast(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;)V

    .line 115
    :goto_1
    move v1, v0

    .line 118
    :goto_2
    if-nez v1, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleLeBroadcastUpdateFailed()V

    .line 121
    :cond_5
    return-void
    .line 124
.end method
