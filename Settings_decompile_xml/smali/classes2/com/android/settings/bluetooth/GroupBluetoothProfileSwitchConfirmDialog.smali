.class public Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "GroupBluetoothProfileSwitchConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog$BluetoothProfileConfirmListener;
    }
.end annotation


# instance fields
.field private mGroupId:I

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

.field private mProfileController:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;


# direct methods
.method public static synthetic $r8$lambda$BhM1fxp4JHgAVtbzyqOxwdyJfSo(Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pc5hTn4Wd-HT6Kn3FjU4gEQ2JmE(Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mGroupId:I

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->onPositiveButtonClicked()V

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->onNegativeButtonClicked()V

    .line 87
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;
    .locals 2

    .line 61
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "group_id"

    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    new-instance p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;-><init>()V

    .line 65
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private onNegativeButtonClicked()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mProfileController:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->onDialogNegativeClick()V

    return-void
.end method

.method private onPositiveButtonClicked()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mProfileController:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->onDialogPositiveClick()V

    return-void
.end method


# virtual methods
.method getGroupTitle()Ljava/lang/String;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mGroupId:I

    .line 76
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupTitle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method isPairingControllerSet()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mProfileController:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 81
    new-instance p1, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;)V

    .line 85
    new-instance v0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {v2, v1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 92
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->group_confirm_dialog_apply_button:I

    .line 93
    invoke-virtual {v2, v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000    # @android:string/cancel

    .line 94
    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 95
    sget v0, Lcom/android/settings/R$string;->group_apply_changes_dialog_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 96
    sget v0, Lcom/android/settings/R$string;->group_confirm_dialog_body:I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->getGroupTitle()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public setPairingController(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->isPairingControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothProfileSwitchConfirmDialog;->mProfileController:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
