.class public Lcom/android/settings/bluetooth/AuracastShareDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AuracastShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;,
        Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;
    }
.end annotation


# instance fields
.field protected final DELAY_AURACAST_SHARE_ENABLE_TIME_OUT:I

.field isTimeoutAndUnpair:Z

.field private mAskPermissionClicked:Z

.field private mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

.field private mAudioShareReceiver:Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;

.field private mAudioShareSuccess:Z

.field private mAudioSharing:Z

.field private mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private mClassicConnectClicked:Z

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerLock:Ljava/lang/Object;

.field private mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private mRequestPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClassicConnectClicked(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mClassicConnectClicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAskPermissionClicked(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAskPermissionClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAudioShareSuccess(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAudioSharing(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioSharing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClassicConnectClicked(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mClassicConnectClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maskPermission(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->askPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->modifyView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isTimeoutAndUnpair:Z

    const/16 v1, 0x3a98

    .line 63
    iput v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->DELAY_AURACAST_SHARE_ENABLE_TIME_OUT:I

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mHandlerLock:Ljava/lang/Object;

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAskPermissionClicked:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mClassicConnectClicked:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioSharing:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareSuccess:Z

    .line 83
    new-instance v0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;-><init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private askPermission()V
    .locals 6

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 290
    sget v1, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    new-instance v3, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

    .line 302
    new-instance v2, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$2;-><init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

    .line 311
    new-instance v4, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$3;-><init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mRequestPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bluetooth/Utils;->showRequestPermissionDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mRequestPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private createAudioShareDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 6

    const-string v0, "AuracastShareDialogFragment"

    const-string v1, "createAudioShareDialog!"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->createAudioShareView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mView:Landroid/view/View;

    .line 331
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 332
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 333
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 334
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 336
    iget-object v2, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->replace_device_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 337
    iget-object v3, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 338
    iget-object v4, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->audio_share_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 340
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    new-instance v1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;-><init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

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
    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->modifyView(Landroid/view/View;ILjava/lang/String;)V

    return-object v0
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

    const-string v1, "AuracastShareDialogFragment"

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
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->setButtonAudioShare(Landroid/view/View;I)V

    return-void
.end method

.method private sendBroadcastUnpair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.ACTION_UNPAIR_AURACAST_SHARE_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 426
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "CURRENT_TIME"

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    .line 428
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x265

    return p0
.end method

.method isAudioShareControllerSet()Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

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

    .line 255
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const-string p1, "AuracastShareDialogFragment"

    const-string/jumbo v0, "onCreateDialog!"

    .line 205
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isAudioShareControllerSet()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isAudioShareDialogActivitySet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    new-instance p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;-><init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;

    .line 215
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.bc.profile.action.CONNECTION_STATE_CHANGED"

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.action.CONNECTION_STATE_CHANGED"

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 221
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->createAudioShareDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingController() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 4

    .line 227
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    const-string/jumbo v0, "the audio share fragment destory!"

    const-string v1, "AuracastShareDialogFragment"

    .line 228
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_auracast_share"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareReceiver:Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAskPermissionClicked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 236
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioSharing:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioSharing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    .line 237
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->isBonded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onCancel()V

    goto :goto_0

    .line 239
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioSharing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->isBonded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isTimeoutAndUnpair:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareSuccess:Z

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->sendBroadcastUnpair(Landroid/bluetooth/BluetoothDevice;)V

    .line 244
    :cond_4
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected sendMessageDelay(IJ)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 280
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 281
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "AuracastShareDialogFragment"

    const-string p1, " Main Handler is null"

    .line 283
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
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

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isAudioShareControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    return-void

    .line 259
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setButtonAudioShare(Landroid/view/View;I)V
    .locals 3

    const-string v0, "AuracastShareDialogFragment"

    const-string v1, "enter setButtonAudioShare!"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 436
    :cond_0
    sget v0, Lcom/android/settings/R$id;->replace_device_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 437
    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 438
    sget v2, Lcom/android/settings/R$id;->audio_share_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v2, 0x8

    .line 440
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 441
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x2

    if-eq v0, p2, :cond_1

    const/4 v0, 0x3

    if-ne v0, p2, :cond_3

    :cond_1
    const/4 p2, 0x0

    .line 445
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 449
    invoke-virtual {v0, v1, v1, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 450
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    :cond_2
    new-instance p2, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$5;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$5;-><init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    sget p0, Lcom/android/settings/R$string;->bluetooth_device_button_audio_share_success:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(I)V

    :cond_3
    return-void
.end method

.method setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isAudioShareDialogActivitySet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-void

    .line 267
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The pairing dialog activity can only be set once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
