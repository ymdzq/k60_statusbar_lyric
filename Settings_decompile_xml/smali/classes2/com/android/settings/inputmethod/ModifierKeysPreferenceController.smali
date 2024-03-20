.class public Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ModifierKeysPreferenceController.java"


# static fields
.field private static final KEY_PREFERENCE_ALT:Ljava/lang/String; = "modifier_keys_alt"

.field private static final KEY_PREFERENCE_CAPS_LOCK:Ljava/lang/String; = "modifier_keys_caps_lock"

.field private static final KEY_PREFERENCE_CTRL:Ljava/lang/String; = "modifier_keys_ctrl"

.field private static final KEY_PREFERENCE_META:Ljava/lang/String; = "modifier_keys_meta"

.field private static final KEY_RESTORE_PREFERENCE:Ljava/lang/String; = "modifier_keys_restore"

.field private static final KEY_TAG:Ljava/lang/String; = "modifier_keys_dialog_tag"


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mKeyNames:[Ljava/lang/String;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mRemappableKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x71

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x72

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x75

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x76

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x39

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x73

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Integer;

    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    .line 64
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->modifier_keys_ctrl:I

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->modifier_keys_meta:I

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->modifier_keys_alt:I

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->modifier_keys_caps_lock:I

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    .line 75
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const-string p0, "InputManager service cannot be null"

    .line 76
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private changeSummaryColor(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 2

    .line 151
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 153
    invoke-direct {p0}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->getColorOfMaterialColorPrimary()I

    move-result p0

    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p0, 0x0

    .line 154
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 152
    invoke-interface {v0, p1, p0, v1, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private getColorOfMaterialColorPrimary()I
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x11200a4    # @android:^attr-private/materialColorPrimaryContainer

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static isAlt(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x39

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isCapLock(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x73

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCtrl(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x71

    if-eq p0, v0, :cond_1

    const/16 v0, 0x72

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isMeta(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x75

    if-eq p0, v0, :cond_1

    const/16 v0, 0x76

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private refreshUi()V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getModifierKeyRemapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    iget-object v3, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 99
    invoke-static {v2}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->isCtrl(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v5, "modifier_keys_ctrl"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->changeSummaryColor(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    invoke-static {v2}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->isMeta(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v5, "modifier_keys_meta"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 106
    iget-object v5, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->changeSummaryColor(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    invoke-static {v2}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->isAlt(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v5, "modifier_keys_alt"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 111
    iget-object v5, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->changeSummaryColor(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    :cond_3
    invoke-static {v2}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->isCapLock(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "modifier_keys_caps_lock"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->changeSummaryColor(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private showModifierKeysDialog(Landroidx/preference/Preference;)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 137
    new-instance v0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default_key"

    .line 140
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "delection_key"

    .line 143
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 147
    iget-object p0, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string/jumbo p1, "modifier_keys_dialog_tag"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->refreshUi()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "modifier_keys_restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->showModifierKeysDialog(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
