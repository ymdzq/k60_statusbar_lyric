.class public Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mClickedDialogEntryIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogStateRestored(Landroid/app/Dialog;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 2
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    const-string/jumbo v1, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    .line 8
    iget v2, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogCreated(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final onDialogClosed(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogClosed()V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 13
    move-result-object v1

    .line 16
    iget p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 17
    if-ltz p0, :cond_0

    .line 19
    iget-object v1, v1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    aget-object p0, v1, p0

    .line 25
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 43
    :cond_1
    return-void
    .line 46
.end method

.method public final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 9
    move-result-object v0

    .line 12
    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    .line 15
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 21
    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;

    .line 25
    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;-><init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/CustomListPreference;->onPrepareDialogBuilder(Landroid/content/DialogInterface$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    return-void
    .line 40
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    const-string/jumbo v0, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    .line 5
    iget p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    return-void
    .line 13
.end method
