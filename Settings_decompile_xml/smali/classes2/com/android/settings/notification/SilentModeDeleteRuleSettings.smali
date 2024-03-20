.class public Lcom/android/settings/notification/SilentModeDeleteRuleSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SilentModeDeleteRuleSettings.java"


# instance fields
.field private mDeleteRuleSettings:Lcom/android/settings/notification/SilentModeDeleteSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeleteRuleSettings(Lcom/android/settings/notification/SilentModeDeleteRuleSettings;)Lcom/android/settings/notification/SilentModeDeleteSettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteRuleSettings;->mDeleteRuleSettings:Lcom/android/settings/notification/SilentModeDeleteSettings;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 16
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Lcom/android/settings/R$layout;->dndm_activity_with_fragment:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 18
    new-instance v0, Lcom/android/settings/notification/SilentModeDeleteSettings;

    invoke-direct {v0}, Lcom/android/settings/notification/SilentModeDeleteSettings;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteRuleSettings;->mDeleteRuleSettings:Lcom/android/settings/notification/SilentModeDeleteSettings;

    .line 19
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016    # @android:id/title

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->delete_rule:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020019    # @android:id/button1

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    sget v2, Lcom/android/settings/R$drawable;->action_mode_title_button_cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    new-instance v3, Lcom/android/settings/notification/SilentModeDeleteRuleSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/SilentModeDeleteRuleSettings$1;-><init>(Lcom/android/settings/notification/SilentModeDeleteRuleSettings;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a    # @android:id/button2

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    sget v1, Lcom/android/settings/R$drawable;->action_mode_title_button_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v1, Lcom/android/settings/notification/SilentModeDeleteRuleSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SilentModeDeleteRuleSettings$2;-><init>(Lcom/android/settings/notification/SilentModeDeleteRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->fragment_container:I

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteRuleSettings;->mDeleteRuleSettings:Lcom/android/settings/notification/SilentModeDeleteSettings;

    .line 49
    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method
