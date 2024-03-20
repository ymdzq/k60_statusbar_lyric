.class public Lcom/android/settings/BaseEditFragment;
.super Lcom/android/settings/BaseFragment;
.source "BaseEditFragment.java"


# instance fields
.field private mEditEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/settings/BaseEditFragment;->mEditEnabled:Z

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public isChanged()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isEditEabled()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/android/settings/BaseEditFragment;->mEditEnabled:Z

    return p0
.end method

.method public onBackPressed()Z
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/BaseEditFragment;->isChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    sget v2, Lcom/android/settings/R$string;->cancel_alert:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 131
    new-instance v2, Lcom/android/settings/BaseEditFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/BaseEditFragment$3;-><init>(Lcom/android/settings/BaseEditFragment;)V

    const p0, 0x104000a    # @android:string/ok

    invoke-virtual {v0, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    const/4 p0, 0x1

    return p0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiSettings;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->onFinishEdit()V

    :cond_1
    return v1
.end method

.method public onCancel()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 72
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 73
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onEditStateChange(Z)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a    # @android:id/button2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/BaseEditFragment;->mEditEnabled:Z

    return-void
.end method

.method public onSave()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseEditFragment;->onSave(Z)V

    return-void
.end method

.method protected onSave(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/BaseEditFragment;->mEditEnabled:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onFragmentResult(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method

.method public onSave(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseEditFragment;->onSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 22
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onStart()V

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x10

    .line 31
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 35
    sget v1, Lcom/android/settings/R$layout;->miuix_appcompat_edit_mode_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 36
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016    # @android:id/title

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseEditFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020019    # @android:id/button1

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    sget v2, Lcom/android/settings/R$drawable;->action_mode_title_button_cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x1040000    # @android:string/cancel

    .line 41
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v3, Lcom/android/settings/BaseEditFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/BaseEditFragment$1;-><init>(Lcom/android/settings/BaseEditFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a    # @android:id/button2

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    sget v1, Lcom/android/settings/R$drawable;->action_mode_title_button_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x104000a    # @android:string/ok

    .line 51
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v1, Lcom/android/settings/BaseEditFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/BaseEditFragment$2;-><init>(Lcom/android/settings/BaseEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/BaseEditFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_2
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onStartEdit(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onFinishEdit(Landroidx/fragment/app/Fragment;)V

    .line 67
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    return-void
.end method
