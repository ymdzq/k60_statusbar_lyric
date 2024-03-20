.class public Lcom/android/settings/wifi/EditPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EditPreferenceFragment.java"


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mEditEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mEditEnabled:Z

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    .line 83
    iget-object p0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onEditStateChange(Z)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a    # @android:id/button2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mEditEnabled:Z

    return-void
.end method

.method public onSave()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EditPreferenceFragment;->onSave(Z)V

    return-void
.end method

.method protected onSave(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mEditEnabled:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onFragmentResult(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 111
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onSave(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/EditPreferenceFragment;->onSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 28
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v1, 0x10

    .line 40
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    sget v1, Lcom/android/settings/R$layout;->miuix_appcompat_edit_mode_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/EditPreferenceFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016    # @android:id/title

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/EditPreferenceFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020019    # @android:id/button1

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    sget v2, Lcom/android/settings/R$drawable;->action_mode_title_button_cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x1040000    # @android:string/cancel

    .line 50
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v3, Lcom/android/settings/wifi/EditPreferenceFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/EditPreferenceFragment$1;-><init>(Lcom/android/settings/wifi/EditPreferenceFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a    # @android:id/button2

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    sget v1, Lcom/android/settings/R$drawable;->action_mode_title_button_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x104000a    # @android:string/ok

    .line 60
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, Lcom/android/settings/wifi/EditPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/EditPreferenceFragment$2;-><init>(Lcom/android/settings/wifi/EditPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/EditPreferenceFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    :cond_3
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onStartEdit(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onFinishEdit(Landroidx/fragment/app/Fragment;)V

    .line 77
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
