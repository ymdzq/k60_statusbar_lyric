.class public Lcom/android/settings/bluetooth/AudioShareDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AudioShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;
    }
.end annotation


# instance fields
.field private final DELAY_AUDIO_SHARE_ENABLE_TIME_OUT:J

.field private final DELAY_CONNECT_TIME_OUT:J

.field private final DELAY_WAIT_ENABLE_AUDIO_SHARE:J

.field protected final MESSAGE_CONNECT_TIMEOUT:I

.field protected final MESSAGE_ENABLE_AUDIO_SHARE:I

.field protected final MESSAGE_START_AUDIO_SHARE:I

.field protected final MESSAGE_UPDATE_CONNECTING_DIALOG:I

.field protected final MESSAGE_UPDATE_CONNECT_FAIL_DIALOG:I

.field protected final MESSAGE_UPDATE_CONNECT_SUCCESS_DIALOG:I

.field protected final MESSAGE_UPDATE_PERMISSION_DIALOG:I

.field private mAskPermissionClicked:Z

.field private mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

.field private mAudioShareReceiver:Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;

.field private mAudioShareSuccess:Z

.field private mAudioSharing:Z

.field private mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private mClassicConnectClicked:Z

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerLock:Ljava/lang/Object;

.field private mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private mProcessingAudioShare:Z

.field private mRequestPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioSharing(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioSharing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClassicConnectClicked(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mClassicConnectClicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAskPermissionClicked(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAskPermissionClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAudioShareSuccess(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAudioSharing(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioSharing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClassicConnectClicked(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mClassicConnectClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcessingAudioShare(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mProcessingAudioShare:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maskPermission(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->askPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleA2dpConnectionStateChanged(Lcom/android/settings/bluetooth/AudioShareDialogFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->handleA2dpConnectionStateChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misA2dpConnected(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isA2dpConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAudioShareEnable(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misProcessingEnableAudioShare(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isProcessingEnableAudioShare()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->modifyView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastUnpair(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendBroadcastUnpair(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->MESSAGE_UPDATE_CONNECTING_DIALOG:I

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->MESSAGE_CONNECT_TIMEOUT:I

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->MESSAGE_UPDATE_PERMISSION_DIALOG:I

    const/4 v0, 0x4

    .line 45
    iput v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->MESSAGE_UPDATE_CONNECT_SUCCESS_DIALOG:I

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->MESSAGE_UPDATE_CONNECT_FAIL_DIALOG:I

    const/4 v0, 0x6

    .line 48
    iput v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->MESSAGE_START_AUDIO_SHARE:I

    const/4 v0, 0x7

    .line 50
    iput v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->MESSAGE_ENABLE_AUDIO_SHARE:I

    const-wide/16 v0, 0x3e8

    .line 52
    iput-wide v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->DELAY_WAIT_ENABLE_AUDIO_SHARE:J

    const-wide/16 v0, 0x2ee0

    .line 53
    iput-wide v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->DELAY_AUDIO_SHARE_ENABLE_TIME_OUT:J

    const-wide/16 v0, 0x7530

    .line 54
    iput-wide v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->DELAY_CONNECT_TIME_OUT:J

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandlerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAskPermissionClicked:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mClassicConnectClicked:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioSharing:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareSuccess:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mProcessingAudioShare:Z

    .line 91
    new-instance v0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private askPermission()V
    .locals 6

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 292
    sget v1, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    new-instance v3, Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;-><init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    .line 304
    new-instance v2, Lcom/android/settings/bluetooth/AudioShareDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment$3;-><init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    .line 314
    new-instance v4, Lcom/android/settings/bluetooth/AudioShareDialogFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment$4;-><init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    .line 328
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mRequestPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bluetooth/Utils;->showRequestPermissionDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mRequestPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private createAudioShareDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 6

    const-string v0, "BtAudioShareDialogFragment"

    const-string v1, "createAudioShareDialog!"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->createAudioShareView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mView:Landroid/view/View;

    .line 335
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 336
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 337
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 338
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 340
    iget-object v2, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->replace_device_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 341
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 342
    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->audio_share_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 344
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    new-instance v1, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;-><init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    .line 373
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    sget p0, Lcom/android/settings/R$string;->bluetooth_device_button_replace_current_device:I

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setText(I)V

    .line 378
    sget p0, Lcom/android/settings/R$string;->bluetooth_device_button_cancel:I

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setText(I)V

    .line 379
    sget p0, Lcom/android/settings/R$string;->bluetooth_device_button_enable_audio_share:I

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setText(I)V

    return-object v0
.end method

.method private createAudioShareView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->audio_share_dialog_final:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 387
    sget v1, Lcom/android/settings/R$id;->audio_share_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 388
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->modifyView(Landroid/view/View;ILjava/lang/String;)V

    return-object v0
.end method

.method private handleA2dpConnectionStateChanged(I)V
    .locals 4

    const-string v0, "BtAudioShareDialogFragment"

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "A2dp connected!"

    .line 482
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 483
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mProcessingAudioShare:Z

    const/4 p1, 0x7

    const-wide/16 v2, 0x3e8

    .line 484
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    .line 485
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->removeMessages(I)V

    const-wide/16 v2, 0x2ee0

    .line 486
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    goto :goto_0

    :cond_1
    const-string p1, "A2dp disconnected!"

    .line 489
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    const-wide/16 v0, 0x0

    .line 490
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    :goto_0
    return-void
.end method

.method private isA2dpConnected()Z
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isAudioShareEnable()Z
    .locals 0

    .line 460
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareSuccess:Z

    return p0
.end method

.method private isProcessingEnableAudioShare()Z
    .locals 0

    .line 463
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mProcessingAudioShare:Z

    return p0
.end method

.method private modifyView(Landroid/view/View;ILjava/lang/String;)V
    .locals 4

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "modifyView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtAudioShareDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 398
    sget v0, Lcom/android/settings/R$id;->textTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_0
    sget p3, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 402
    sget v0, Lcom/android/settings/R$string;->bluetooth_device_audio_share_message:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    sget v1, Lcom/android/settings/R$id;->connecting_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 406
    sget v2, Lcom/android/settings/R$string;->bluetooth_device_audio_share_connecting:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v2, 0x8

    .line 407
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->setButtonAudioShare(Landroid/view/View;I)V

    return-void
.end method

.method private removeMessages(I)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendBroadcastUnpair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.UNPAIR_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 474
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "CURRENT_TIME"

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    .line 476
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setButtonAudioShare(Landroid/view/View;I)V
    .locals 3

    const-string v0, "BtAudioShareDialogFragment"

    const-string v1, "enter setButtonAudioShare!"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 430
    :cond_0
    sget v0, Lcom/android/settings/R$id;->replace_device_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 431
    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 432
    sget v2, Lcom/android/settings/R$id;->audio_share_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v2, 0x8

    .line 434
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 435
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x2

    if-eq v0, p2, :cond_1

    const/4 v0, 0x3

    if-ne v0, p2, :cond_3

    :cond_1
    const/4 p2, 0x0

    .line 439
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 443
    invoke-virtual {v0, v1, v1, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 444
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    :cond_2
    new-instance p2, Lcom/android/settings/bluetooth/AudioShareDialogFragment$6;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment$6;-><init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    sget p0, Lcom/android/settings/R$string;->bluetooth_device_button_audio_share_success:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected enableAudioShare()V
    .locals 3

    const-string v0, "BtAudioShareDialogFragment"

    const-string v1, "enable audio share!"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MultiA2dp.ACTION.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.bluetooth"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "MultiA2dp.EXTRA.STATE"

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IS_START_BY_DIALOG"

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x265

    return p0
.end method

.method isAudioShareControllerSet()Z
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isAudioShareDialogActivitySet()Z
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string p1, "BtAudioShareDialogFragment"

    const-string/jumbo v0, "onCreateDialog!"

    .line 186
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareControllerSet()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareDialogActivitySet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    new-instance p1, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;-><init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 201
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->createAudioShareDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1

    .line 192
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingController() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 3

    .line 207
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    const-string v0, "BtAudioShareDialogFragment"

    const-string/jumbo v1, "the audio share fragment destory!"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    iput-object v2, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandler:Landroid/os/Handler;

    .line 215
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAskPermissionClicked:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioSharing:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioSharing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    .line 220
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->isBonded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onCancel()V

    goto :goto_0

    .line 222
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioSharing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->isBonded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareEnable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendBroadcastUnpair(Landroid/bluetooth/BluetoothDevice;)V

    .line 226
    :cond_5
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "BtAudioShareDialogFragment"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 215
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected sendMessageDelay(IJ)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 263
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 264
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "BtAudioShareDialogFragment"

    const-string p1, " Main Handler is null"

    .line 266
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setAudioShareController(Lcom/android/settings/bluetooth/BluetoothAudioShareController;)V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    return-void

    .line 242
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareDialogActivitySet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-void

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The pairing dialog activity can only be set once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
