.class public Lcom/android/settings/accounts/MiuiChooseAccountActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "MiuiChooseAccountActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initAccountUI()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0x1020002    # @android:id/content

    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/MiuiChooseAccountFragment;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/android/settings/accounts/MiuiChooseAccountFragment;

    invoke-direct {v1}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private isSetupWizard()Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "account_setup_wizard"

    .line 43
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->isSetupWizard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget v0, Lcom/android/settings/R$style;->ShowTitleTheme:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->initAccountUI()V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method
