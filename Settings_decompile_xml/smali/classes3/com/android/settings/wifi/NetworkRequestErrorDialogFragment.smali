.class public Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NetworkRequestErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;
    }
.end annotation


# instance fields
.field private mRejectCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# direct methods
.method public static synthetic $r8$lambda$CXv4EWm8bYHplhjPJURT853V_pQ(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVVfOT1Awbx6zQlQk_Eix0FYnhM(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ftSQvBjtIuGUrrCCypmWaJQV078(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->onRescanClick()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;
    .locals 1

    .line 46
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;-><init>()V

    return-object v0
.end method

.method private rejectNetworkRequestAndFinish()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->mRejectCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x55d

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 59
    sget-object p1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->TIME_OUT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DIALOG_ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 65
    :goto_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-ne v0, p1, :cond_1

    .line 67
    sget p1, Lcom/android/settings/R$string;->network_connection_timeout_dialog_message:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->network_connection_timeout_dialog_ok:I

    new-instance v2, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 68
    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 70
    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 73
    :cond_1
    sget p1, Lcom/android/settings/R$string;->network_connection_errorstate_dialog_message:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->okay:I

    new-instance v2, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 74
    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 77
    :goto_1
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method protected onRescanClick()V
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->onClickRescanButton()V

    :cond_0
    return-void
.end method

.method public setRejectCallback(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->mRejectCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method
