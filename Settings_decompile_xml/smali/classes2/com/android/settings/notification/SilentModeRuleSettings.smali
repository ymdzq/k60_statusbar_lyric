.class public Lcom/android/settings/notification/SilentModeRuleSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SilentModeRuleSettings.java"


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAddFragment:Lcom/android/settings/notification/SilentModeAddRuleSettings;

.field private mEditFragment:Lcom/android/settings/notification/SilentModeEditRuleSettings;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAddFragment(Lcom/android/settings/notification/SilentModeRuleSettings;)Lcom/android/settings/notification/SilentModeAddRuleSettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mAddFragment:Lcom/android/settings/notification/SilentModeAddRuleSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditFragment(Lcom/android/settings/notification/SilentModeRuleSettings;)Lcom/android/settings/notification/SilentModeEditRuleSettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mEditFragment:Lcom/android/settings/notification/SilentModeEditRuleSettings;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private customActionBar(Lmiuix/appcompat/app/ActionBar;I)V
    .locals 3

    .line 75
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-direct {p0, p2}, Lcom/android/settings/notification/SilentModeRuleSettings;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mTitle:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1020016    # @android:id/title

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x1020019    # @android:id/button1

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/android/settings/R$drawable;->action_mode_title_button_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v2, Lcom/android/settings/notification/SilentModeRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/SilentModeRuleSettings$1;-><init>(Lcom/android/settings/notification/SilentModeRuleSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102001a    # @android:id/button2

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/android/settings/R$drawable;->action_mode_title_button_confirm:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v0, Lcom/android/settings/notification/SilentModeRuleSettings$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/SilentModeRuleSettings$2;-><init>(Lcom/android/settings/notification/SilentModeRuleSettings;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->edit_rule:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->add_rule:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 30
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/android/settings/R$layout;->dndm_activity_with_fragment:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v3, 0x1

    .line 34
    invoke-virtual {v1, v2, v2, v3}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZZ)V

    .line 35
    iget-object v1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 36
    iget-object v1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/notification/SilentModeRuleSettings;->customActionBar(Lmiuix/appcompat/app/ActionBar;I)V

    const/4 v1, 0x2

    if-nez p1, :cond_1

    if-ne v0, v1, :cond_0

    .line 41
    new-instance p1, Lcom/android/settings/notification/SilentModeAddRuleSettings;

    invoke-direct {p1}, Lcom/android/settings/notification/SilentModeAddRuleSettings;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mAddFragment:Lcom/android/settings/notification/SilentModeAddRuleSettings;

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->fragment_container:I

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mAddFragment:Lcom/android/settings/notification/SilentModeAddRuleSettings;

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lcom/android/settings/notification/SilentModeEditRuleSettings;

    invoke-direct {p1}, Lcom/android/settings/notification/SilentModeEditRuleSettings;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mEditFragment:Lcom/android/settings/notification/SilentModeEditRuleSettings;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->fragment_container:I

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mEditFragment:Lcom/android/settings/notification/SilentModeEditRuleSettings;

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "addFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/SilentModeAddRuleSettings;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mAddFragment:Lcom/android/settings/notification/SilentModeAddRuleSettings;

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "editFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/SilentModeEditRuleSettings;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mEditFragment:Lcom/android/settings/notification/SilentModeEditRuleSettings;

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mAddFragment:Lcom/android/settings/notification/SilentModeAddRuleSettings;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "addFragment"

    iget-object v2, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mAddFragment:Lcom/android/settings/notification/SilentModeAddRuleSettings;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "editFragment"

    iget-object v2, p0, Lcom/android/settings/notification/SilentModeRuleSettings;->mEditFragment:Lcom/android/settings/notification/SilentModeEditRuleSettings;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 63
    :goto_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
