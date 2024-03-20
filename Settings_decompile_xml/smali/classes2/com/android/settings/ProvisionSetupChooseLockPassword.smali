.class public Lcom/android/settings/ProvisionSetupChooseLockPassword;
.super Lmiuix/provision/ProvisionBaseActivity;
.source "ProvisionSetupChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ProvisionSetupChooseLockPassword$ProvisionSetupChooseLockPasswordFragment;
    }
.end annotation


# instance fields
.field private mSetupChooseLockPasswordFragment:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPreview()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object p1, p0, Lcom/android/settings/ProvisionSetupChooseLockPassword;->mSetupChooseLockPasswordFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Lcom/android/settings/ProvisionSetupChooseLockPassword$ProvisionSetupChooseLockPasswordFragment;

    invoke-direct {p1}, Lcom/android/settings/ProvisionSetupChooseLockPassword$ProvisionSetupChooseLockPasswordFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ProvisionSetupChooseLockPassword;->mSetupChooseLockPasswordFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->provision_container:I

    iget-object v1, p0, Lcom/android/settings/ProvisionSetupChooseLockPassword;->mSetupChooseLockPasswordFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 35
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
