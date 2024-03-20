.class Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment$1;
.super Ljava/lang/Object;
.source "ProvisionSetUpMiuiSecurityChooseUnlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment$1;->this$0:Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->provision_back_btn:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->provision_global_back_btn:I

    if-ne p1, v0, :cond_1

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment$1;->this$0:Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 141
    iget-object p0, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment$1;->this$0:Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method
