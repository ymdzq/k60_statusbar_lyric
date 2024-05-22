.class public final Lcom/android/systemui/bluetooth/BroadcastDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentBroadcastApp:Ljava/lang/String;

.field protected mDialogView:Landroid/view/View;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

.field public final mOutputPackageName:Ljava/lang/String;

.field public mShouldLaunchLeBroadcastDialog:Z

.field public mSwitchBroadcast:Landroid/widget/Button;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BroadcastDialog"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/bluetooth/BroadcastDialog;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 14
    new-instance p1, Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/bluetooth/BroadcastDialog$1;-><init>(Lcom/android/systemui/bluetooth/BroadcastDialog;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 21
    sget-boolean p1, Lcom/android/systemui/bluetooth/BroadcastDialog;->DEBUG:Z

    .line 23
    if-eqz p1, :cond_0

    .line 25
    const-string p1, "BroadcastDialog"

    .line 27
    const-string v0, "Init BroadcastDialog"

    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 42
    iput-object p4, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mCurrentBroadcastApp:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mOutputPackageName:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    iput-object p7, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 56
    return-void
    .line 58
.end method


# virtual methods
.method public handleLeBroadcastStopped()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 5
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 7
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 9
    if-nez v1, :cond_0

    .line 11
    const-string v1, "BroadcastDialog"

    .line 13
    const-string v2, "The broadcast profile is null"

    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    move v1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 22
    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mOutputPackageName:Ljava/lang/String;

    .line 24
    const v4, 0x7f13021f    # @string/bt_le_audio_broadcast_dialog_unknown_name 'Unknown'

    .line 26
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 32
    invoke-static {v2, v3, v4}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x1

    .line 40
    :goto_0
    if-nez v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 43
    const v2, 0x7f1306ed    # @string/media_output_broadcast_start_failed 'Can’t broadcast'

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialog;->refreshSwitchBroadcastButton()V

    .line 56
    :cond_1
    return-void
    .line 59
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-boolean p1, Lcom/android/systemui/bluetooth/BroadcastDialog;->DEBUG:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const-string p1, "BroadcastDialog"

    .line 9
    const-string v0, "onCreate"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 16
    sget-object v0, Lcom/android/systemui/bluetooth/BroadcastDialog$BroadcastDialogEvent;->BROADCAST_DIALOG_SHOW:Lcom/android/systemui/bluetooth/BroadcastDialog$BroadcastDialogEvent;

    .line 18
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    move-result-object p1

    .line 28
    const v0, 0x7f0d0054    # @layout/broadcast_dialog 'res/layout/broadcast_dialog.xml'

    .line 29
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mDialogView:Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 39
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mDialogView:Landroid/view/View;

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mDialogView:Landroid/view/View;

    .line 48
    const v0, 0x7f0a02ce    # @id/dialog_title

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mDialogView:Landroid/view/View;

    .line 59
    const v2, 0x7f0a02cd    # @id/dialog_subtitle

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 70
    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mCurrentBroadcastApp:Ljava/lang/String;

    .line 72
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 77
    const v4, 0x7f13021e    # @string/bt_le_audio_broadcast_dialog_title 'Stop broadcasting %1$s?'

    .line 78
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 88
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mOutputPackageName:Ljava/lang/String;

    .line 90
    const v3, 0x7f13021f    # @string/bt_le_audio_broadcast_dialog_unknown_name 'Unknown'

    .line 92
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 98
    invoke-static {p1, v2, v3}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 102
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 103
    const v3, 0x7f13021c    # @string/bt_le_audio_broadcast_dialog_sub_title 'If you broadcast %1$s or change the output, your current broadcast will stop'

    .line 105
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 108
    move-result-object v4

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mDialogView:Landroid/view/View;

    .line 119
    const v2, 0x7f0a0939    # @id/switch_broadcast

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 124
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/Button;

    .line 128
    iput-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mDialogView:Landroid/view/View;

    .line 132
    const v2, 0x7f0a01db    # @id/change_output

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/Button;

    .line 141
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mDialogView:Landroid/view/View;

    .line 143
    const v3, 0x7f0a01bd    # @id/cancel

    .line 145
    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 148
    move-result-object v2

    .line 151
    check-cast v2, Landroid/widget/Button;

    .line 152
    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 154
    iget-object v4, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 156
    const v5, 0x7f13021d    # @string/bt_le_audio_broadcast_dialog_switch_app 'Broadcast %1$s'

    .line 158
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 161
    move-result-object p1

    .line 164
    invoke-virtual {v4, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 168
    invoke-virtual {v3, p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 169
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 172
    new-instance v1, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;

    .line 174
    const/4 v3, 0x0

    .line 176
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/bluetooth/BroadcastDialog;I)V

    .line 177
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance p1, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;

    .line 183
    const/4 v1, 0x1

    .line 185
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/bluetooth/BroadcastDialog;I)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    new-instance p1, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;

    .line 192
    const/4 v0, 0x2

    .line 194
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/bluetooth/BroadcastDialog;I)V

    .line 195
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
    .line 201
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final refreshSwitchBroadcastButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mOutputPackageName:Ljava/lang/String;

    .line 4
    const v2, 0x7f13021f    # @string/bt_le_audio_broadcast_dialog_unknown_name 'Unknown'

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 19
    const v3, 0x7f13021d    # @string/bt_le_audio_broadcast_dialog_switch_app 'Broadcast %1$s'

    .line 21
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 33
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 36
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 39
    return-void
    .line 42
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 8
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const-string p0, "BroadcastDialog"

    .line 14
    const-string v0, "The broadcast profile is null"

    .line 16
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 22
    if-nez p0, :cond_1

    .line 24
    const-string p0, "LocalBluetoothLeBroadcast"

    .line 26
    const-string v0, "The BluetoothLeBroadcast is null."

    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    .line 34
    :goto_0
    return-void
    .line 37
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string p0, "BroadcastDialog"

    .line 12
    const-string v0, "The broadcast profile is null"

    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 20
    if-nez p0, :cond_1

    .line 22
    const-string p0, "LocalBluetoothLeBroadcast"

    .line 24
    const-string v0, "The BluetoothLeBroadcast is null."

    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothLeBroadcast;->unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    .line 32
    :goto_0
    return-void
    .line 35
.end method
