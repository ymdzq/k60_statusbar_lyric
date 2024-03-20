.class public Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock;
.super Lmiuix/provision/ProvisionBaseActivity;
.source "ProvisionSetUpMiuiSecurityChooseUnlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;,
        Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$InternalActivity;
    }
.end annotation


# instance fields
.field private mSetupMiuiChooseLockFragment:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;-><init>()V

    return-void
.end method

.method private updateLayout(Z)V
    .locals 4

    .line 65
    sget v0, Lcom/android/settings/R$id;->provision_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 68
    sget v2, Lcom/android/settings/R$dimen;->provision_content_margin_top:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$dimen;->provision_container_margin_top:I

    .line 69
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_1

    .line 70
    sget v2, Lcom/android/settings/R$dimen;->provision_anim_margin_start_land:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/android/settings/R$dimen;->provision_anim_margin_start:I

    .line 71
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz p1, :cond_2

    .line 72
    sget p1, Lcom/android/settings/R$dimen;->provision_anim_margin_start_land:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/android/settings/R$dimen;->provision_anim_margin_start:I

    .line 73
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_3
    sget p1, Lcom/android/settings/R$id;->provision_lyt_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->provision_title_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->provision_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$dimen;->provision_container_margin_top:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 79
    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public hasPreview()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock;->updateLayout(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/android/settings/R$string;->password_entrance_title:I

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->setTitle(I)V

    .line 37
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_keyguard_password_then_add_fingerprint"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getBooolExtra(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget p1, Lcom/android/settings/R$string;->choose_unlock_fingerprint_msg:I

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setSubTitle(I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_keyguard_password_then_add_face_recoginition"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getBooolExtra(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    sget p1, Lcom/android/settings/R$string;->choose_unlock_face_msg:I

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setSubTitle(I)V

    goto :goto_0

    .line 45
    :cond_1
    sget p1, Lcom/android/settings/R$string;->turn_on_keyguard_password_alert:I

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setSubTitle(I)V

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock;->mSetupMiuiChooseLockFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-nez p1, :cond_2

    .line 48
    new-instance p1, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;

    invoke-direct {p1}, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock;->mSetupMiuiChooseLockFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 50
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->provision_container:I

    iget-object v1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock;->mSetupMiuiChooseLockFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 52
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
