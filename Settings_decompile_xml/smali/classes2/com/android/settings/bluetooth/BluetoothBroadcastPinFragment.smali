.class public Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothBroadcastPinFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mBapProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

.field private mContext:Landroid/content/Context;

.field private mCurrentPin:Ljava/lang/String;

.field private mCurrentPinConfiguration:I

.field private mCurrentPinView:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOkButton:Landroid/widget/Button;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRadioButtonIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioButtonStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSelectedPinConfiguration:I

.field private mUserSelectedPinConfigurationIndex:I


# direct methods
.method public static synthetic $r8$lambda$LgpzG3mXGDhONapRst2nnoGuT_A(Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 95
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mDialog:Landroid/app/Dialog;

    .line 96
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mOkButton:Landroid/widget/Button;

    const-string v0, "4308"

    .line 99
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPin:Ljava/lang/String;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfiguration:I

    .line 101
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfigurationIndex:I

    .line 102
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinConfiguration:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonStrings:Ljava/util/List;

    return-void
.end method

.method private createDialogView()Landroid/view/View;
    .locals 8

    const-string/jumbo v0, "onCreateDialogView - enter"

    const-string v1, "BluetoothBroadcastPinFragment"

    .line 243
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "layout_inflater"

    .line 245
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 246
    sget v2, Lcom/android/settings/R$xml;->bluetooth_broadcast_pin_config:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 248
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->getRadioButtonGroupId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    if-nez v2, :cond_0

    const-string p0, "Not able to find RadioGroup"

    .line 250
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 253
    :cond_0
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 254
    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 257
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    sget v4, Lcom/android/settings/R$id;->bluetooth_broadcast_pin_unencrypted:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    sget v4, Lcom/android/settings/R$id;->bluetooth_broadcast_pin_4:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    sget v4, Lcom/android/settings/R$id;->bluetooth_broadcast_pin_16:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$array;->bluetooth_broadcast_pin_config_titles:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    .line 262
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 263
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonStrings:Ljava/util/List;

    aget-object v7, v2, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mBapProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    if-eqz v2, :cond_2

    .line 266
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->getEncryptionKey()[B

    move-result-object v2

    .line 267
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->getLength([B)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->toIndex(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinConfiguration:I

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current pin config: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinConfiguration:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonStrings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_5

    .line 272
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    if-nez v2, :cond_3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to show dialog by no radio button:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 277
    :cond_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonStrings:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    .line 278
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 279
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinConfiguration:I

    if-ne v4, v6, :cond_4

    .line 280
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 284
    :cond_5
    sget v2, Lcom/android/settings/R$id;->bluetooth_broadcast_current_pin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinView:Landroid/widget/TextView;

    const-string/jumbo p0, "onCreateDialogView - exit"

    .line 286
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getDialogTitle()I
    .locals 0

    .line 112
    sget p0, Lcom/android/settings/R$string;->bluetooth_broadcast_pin_configure_dialog:I

    return p0
.end method

.method private getLength([B)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 217
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-ge p0, v1, :cond_2

    rsub-int/lit8 v0, p0, 0xf

    .line 222
    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLength: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothBroadcastPinFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return p0
.end method

.method private getRadioButtonGroupId()I
    .locals 0

    .line 192
    sget p0, Lcom/android/settings/R$id;->bluetooth_broadcast_pin_config_radio_group:I

    return p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->updatePinConfiguration()V

    return-void
.end method

.method private toIndex(I)I
    .locals 2

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->bluetooth_broadcast_pin_config_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 233
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 234
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "toIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothBroadcastPinFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updatePinConfiguration()V
    .locals 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePinConfiguration with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfiguration:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastPinFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfiguration:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfigurationIndex:I

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinConfiguration:I

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mBapProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->setEncryption(ZIZ)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mBapProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->setEncryption(ZIZ)Z

    :goto_0
    return-void

    .line 119
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserSelectedPinConfigurationIndex: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfigurationIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mCurrentPinConfiguration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinConfiguration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x56e

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "BluetoothBroadcastPinFragment"

    const-string/jumbo v1, "onActivityCreated"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BluetoothBroadcastPinFragment"

    const-string/jumbo v1, "onAttach"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 134
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 136
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 137
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBroadcastProfile()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BroadcastProfile;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mBapProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index changed to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothBroadcastPinFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$array;->bluetooth_broadcast_pin_config_values:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 211
    aget-object p2, p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfiguration:I

    .line 212
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfigurationIndex:I

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Selected Pin Configuration "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfiguration:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "BluetoothBroadcastPinFragment"

    const-string/jumbo v1, "onCreate"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string/jumbo v0, "onCreateDialog - enter"

    const-string v1, "BluetoothBroadcastPinFragment"

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo p1, "savedInstanceState != null"

    .line 166
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->getDialogTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 170
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->createDialogView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->okay:I

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;)V

    .line 171
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const-string/jumbo p1, "onCreateDialog - exit"

    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 292
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    const-string v0, "BluetoothBroadcastPinFragment"

    const-string/jumbo v1, "onDestroy"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 295
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mOkButton:Landroid/widget/Button;

    .line 296
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mCurrentPinView:Landroid/widget/TextView;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonIds:Ljava/util/List;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mRadioButtonStrings:Ljava/util/List;

    const/4 v0, -0x1

    .line 299
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mUserSelectedPinConfiguration:I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 304
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    const-string/jumbo v0, "onResume"

    const-string v1, "BluetoothBroadcastPinFragment"

    .line 305
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mOkButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 308
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinFragment;->mOkButton:Landroid/widget/Button;

    const/4 p0, 0x1

    .line 309
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "onResume: mAlertDialog is null"

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "BluetoothBroadcastPinFragment"

    const-string/jumbo p1, "onSaveInstanceState"

    .line 188
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
