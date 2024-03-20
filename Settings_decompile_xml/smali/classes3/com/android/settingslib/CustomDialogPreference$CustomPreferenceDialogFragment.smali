.class public Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/CustomDialogPreference;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
    .locals 3

    .line 94
    new-instance v0, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;-><init>()V

    .line 95
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 96
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 120
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 133
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 126
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/CustomDialogPreference;->-$$Nest$mgetOnShowListener(Lcom/android/settingslib/CustomDialogPreference;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDialogClosed(Z)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settingslib/CustomDialogPreference;->-$$Nest$msetFragment(Lcom/android/settingslib/CustomDialogPreference;Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/CustomDialogPreference;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
