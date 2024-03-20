.class public Lcom/android/settings/ProvisionSetupChooseLockPattern;
.super Lmiuix/provision/ProvisionBaseActivity;
.source "ProvisionSetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ProvisionSetupChooseLockPattern$ProvisionSetupChooseLockPatternFragment;
    }
.end annotation


# instance fields
.field private mSetupChooseLockPatternFragment:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
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

    .line 38
    invoke-super {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/android/settings/R$string;->setup_choose_unlock_pattern_title:I

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setTitle(I)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/ProvisionSetupChooseLockPattern;->mSetupChooseLockPatternFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lcom/android/settings/ProvisionSetupChooseLockPattern$ProvisionSetupChooseLockPatternFragment;

    invoke-direct {p1}, Lcom/android/settings/ProvisionSetupChooseLockPattern$ProvisionSetupChooseLockPatternFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ProvisionSetupChooseLockPattern;->mSetupChooseLockPatternFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->provision_container:I

    iget-object v1, p0, Lcom/android/settings/ProvisionSetupChooseLockPattern;->mSetupChooseLockPatternFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 45
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
