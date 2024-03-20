.class public Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;
.super Lcom/android/settingslib/miuisettings/preference/PreferenceDialogFragment;
.source "ListPreferenceDialogFragment.java"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fputmClickedDialogEntryIndex(Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getListPreference()Lcom/android/settingslib/miuisettings/preference/ListPreference;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ListPreference;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->getListPreference()Lcom/android/settingslib/miuisettings/preference/ListPreference;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 58
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->getListPreference()Lcom/android/settingslib/miuisettings/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 110
    iget p1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment$1;-><init>(Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 104
    invoke-virtual {p1, p0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ListPreferenceDialogFragment.index"

    .line 70
    iget v1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 71
    iget-object v1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
