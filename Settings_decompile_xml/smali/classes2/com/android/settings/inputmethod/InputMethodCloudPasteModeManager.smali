.class public Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodCloudPasteModeManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputMethodCloudPastePreference:Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;

.field private mSelectItem:I

.field private sCloudQuickPasteKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addPreferences()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mInputMethodCloudPastePreference:Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;

    .line 52
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mInputMethodCloudPastePreference:Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 54
    new-instance v2, Lcom/android/settingslib/widget/RadioButtonPreference;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 57
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 58
    sget v3, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 59
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 60
    iget v3, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mSelectItem:I

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private setSelect()V
    .locals 6

    .line 78
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 81
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 82
    iget v5, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mSelectItem:I

    add-int/2addr v5, v2

    if-ne v5, v3, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudQuickPasteTitleList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    .line 34
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudQuickPasteDesList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    .line 35
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudQuickPasteKeyList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    .line 36
    sget p1, Lcom/android/settings/R$xml;->input_method_cloud_paste:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->addPreferences()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 66
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mSelectItem:I

    .line 69
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->setSelect()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mInputMethodCloudPastePreference:Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;

    iget v1, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mSelectItem:I

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/InputMethodCloudPastePreference;->setImageShow(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mContext:Landroid/content/Context;

    const-string v1, "input_method_cloud_clipboard_quick_paste_mode"

    iget v2, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mSelectItem:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudClipboardQuickPasteMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->mSelectItem:I

    .line 44
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodCloudPasteModeManager;->setSelect()V

    return-void
.end method
