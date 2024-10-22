.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContentView:Landroid/view/View;

.field mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

.field mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

.field mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlertDialog(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressDialog(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetProgressDialog(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 126
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->execute_reset_network:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 171
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1

    .line 158
    new-instance p0, Landroid/app/ProgressDialog;

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 161
    sget v0, Lcom/android/settings/R$string;->main_clear_progress_text:I

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x54

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 208
    :goto_0
    new-instance v0, Lcom/android/settings/ResetNetworkRequest;

    invoke-direct {v0, p1}, Lcom/android/settings/ResetNetworkRequest;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 212
    new-instance p1, Lcom/android/settings/ResetNetworkConfirm$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/ResetNetworkConfirm$2;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;Lcom/android/settings/ResetNetworkRequest;)V

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 232
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 233
    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/android/settings/ResetSubscriptionContract;->close()V

    .line 237
    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_3
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 188
    new-instance p2, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;

    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, p3}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->build()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    invoke-virtual {p0}, Lcom/android/settings/ResetSubscriptionContract;->close()V

    const-string p0, "ResetNetworkConfirm"

    const-string p1, "Access deny."

    .line 191
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 194
    :cond_0
    sget p2, Lcom/android/settings/R$layout;->reset_network_confirm:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 195
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->setSubtitle()V

    .line 197
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkRequest;->writeIntoBundle(Landroid/os/Bundle;)Lcom/android/settings/ResetNetworkRequest;

    return-void
.end method

.method setSubtitle()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    invoke-virtual {v0}, Lcom/android/settings/ResetNetworkRequest;->getResetEsimPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->reset_network_confirm:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->reset_network_final_desc_esim:I

    .line 178
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
