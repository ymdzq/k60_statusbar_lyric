.class public Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothPairingDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$BluetoothPairingDialogListener;
    }
.end annotation


# instance fields
.field private mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mNegativeClicked:Z

.field private mNormalExit:Z

.field private mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private mPairingView:Landroid/widget/EditText;

.field private mPositiveClicked:Z

.field private mSpf:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$FxY6XK5FdEZiK5MRzwKZXrQPY0M(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->lambda$createPinEntryView$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TGu6WPj8nEgOhh3jYUeRsS8rMrk(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->lambda$createUserEntryDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpf(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mSpf:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNegativeClicked(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mNegativeClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNormalExit(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mNormalExit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPositiveClicked(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPositiveClicked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPositiveClicked:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mNegativeClicked:Z

    .line 382
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mNormalExit:Z

    return-void
.end method

.method private createConfirmationDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->bluetooth_pairing_request:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 359
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 358
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BlackfileForBluetoothDevice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mSpf:Landroid/content/SharedPreferences;

    .line 367
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 368
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mTriggerFromAvaliableDevices:Z

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 370
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->bluetooth_pairing_accept:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 371
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->bluetooth_pairing_decline:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialogWithBlackfile()V

    .line 375
    :goto_0
    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mTriggerFromAvaliableDevices:Z

    .line 377
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private createConfirmationDialogWithBlackfile()V
    .locals 4

    .line 392
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 394
    sget v1, Lcom/android/settings/R$id;->add_to_blackfile_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 395
    sget v2, Lcom/android/settings/R$id;->pairing_decline_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 396
    sget v3, Lcom/android/settings/R$id;->pairing_accept_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 398
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    .line 464
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    sget p0, Lcom/android/settings/R$string;->bluetooth_pairing_add_to_blackfile:I

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setText(I)V

    .line 468
    sget p0, Lcom/android/settings/R$string;->bluetooth_pairing_decline:I

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setText(I)V

    .line 469
    sget p0, Lcom/android/settings/R$string;->bluetooth_pairing_accept:I

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private createConsentDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 477
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private createDisplayPasskeyOrPinDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->bluetooth_pairing_request:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 486
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 485
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 487
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 488
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 489
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 492
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->notifyDialogDisplayed()V

    return-object v0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 10

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->bluetooth_pin_entry:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 292
    sget v1, Lcom/android/settings/R$id;->pin_values_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 293
    sget v2, Lcom/android/settings/R$id;->message_below_pin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 294
    sget v3, Lcom/android/settings/R$id;->alphanumeric_pin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 295
    sget v4, Lcom/android/settings/R$id;->phonebook_sharing_message_entry_pin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 301
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110239    # @android:bool/config_wifiDisplaySupportsProtectedBuffers

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    sget v5, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_0
    sget v5, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook_not_support_voice:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    sget v5, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "BTPairingDialogFragment"

    const-string v6, "Can\'t know if it supports VoiceCapable"

    .line 309
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    sget v5, Lcom/android/settings/R$id;->text:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 315
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isContactSharingVisible()Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    .line 314
    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 316
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    .line 317
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 318
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v4, 0x2

    .line 322
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 323
    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 333
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageId()I

    move-result v4

    .line 334
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageHintId()I

    move-result v6

    .line 335
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceMaxPasskeyLength()I

    move-result v9

    .line 336
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->pairingCodeIsAlphanumeric()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 p0, -0x1

    if-eq v4, p0, :cond_3

    .line 339
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 341
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eq v6, p0, :cond_4

    .line 344
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 346
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :goto_4
    new-instance p0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {p0, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    filled-new-array {p0}, [Landroid/text/InputFilter;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-object v0
.end method

.method private createUserEntryDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->bluetooth_pairing_request:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 267
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 266
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 268
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 269
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 270
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 271
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->bluetooth_pin_confirm:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 503
    sget v1, Lcom/android/settings/R$id;->pairing_caption:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 504
    sget v2, Lcom/android/settings/R$id;->pairing_subhead:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 505
    sget v3, Lcom/android/settings/R$id;->pairing_code_message:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 506
    sget v4, Lcom/android/settings/R$id;->phonebook_sharing_message_confirm_pin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 512
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110239    # @android:bool/config_wifiDisplaySupportsProtectedBuffers

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    sget v5, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    :cond_0
    sget v5, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook_not_support_voice:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    sget v5, Lcom/android/settings/R$string;->bluetooth_pairing_shares_phonebook:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "BTPairingDialogFragment"

    const-string v6, "Can\'t know if it supports VoiceCapable"

    .line 520
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isContactSharingVisible()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 523
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 525
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    .line 526
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 527
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 529
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isDisplayPairingKeyVariant()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_3
    sget v1, Lcom/android/settings/R$id;->pairing_group_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 537
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isLateBonding()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 538
    sget v2, Lcom/android/settings/R$string;->bluetooth_pairing_group_late_bonding:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 542
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isCoordinatedSetMemberDevice()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isLateBonding()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move p0, v7

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p0, 0x1

    :goto_4
    if-eqz p0, :cond_7

    move v6, v7

    .line 544
    :cond_7
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method

.method private synthetic lambda$createPinEntryView$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 327
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createUserEntryDialog$0(Landroid/content/DialogInterface;)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getPairingViewText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 280
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private setupDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "BTPairingDialogFragment"

    const-string v0, "Incorrect pairing type received, not showing any dialog"

    .line 244
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createDisplayPasskeyOrPinDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConsentDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    goto :goto_0

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createUserEntryDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isPasskeyValid(Landroid/text/Editable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateUserInput(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x265

    return p0
.end method

.method getPairingViewText()Ljava/lang/CharSequence;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method isPairingControllerSet()Z
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPairingDialogActivitySet()Z
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mNormalExit:Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 155
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPositiveClicked:Z

    .line 156
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 159
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mNegativeClicked:Z

    .line 160
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    .line 163
    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 166
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BTPairingDialogFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setupDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingController() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPositiveClicked:Z

    if-nez v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 385
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 386
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mNormalExit:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz p0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-void

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-void

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The pairing dialog activity can only be set once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
