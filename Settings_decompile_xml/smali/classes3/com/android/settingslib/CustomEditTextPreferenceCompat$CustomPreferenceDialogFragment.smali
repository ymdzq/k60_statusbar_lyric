.class public Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
.super Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;
.source "CustomEditTextPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
    .locals 3

    .line 102
    new-instance v0, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 104
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 123
    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->-$$Nest$msetFragment(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;)V

    .line 124
    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
