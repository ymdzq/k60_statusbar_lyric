.class public Lcom/android/settings/MiuiLocalePicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiLocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

.field private mOnListScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mOriginLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedSoftInputMode:I

.field private mSearchText:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private mSelectedLanguage:Ljava/lang/String;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSearchText(Lcom/android/settings/MiuiLocalePicker;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchView(Lcom/android/settings/MiuiLocalePicker;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker;->mSearchView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetLocale(Lcom/android/settings/MiuiLocalePicker;)Ljava/util/Locale;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSearchText(Lcom/android/settings/MiuiLocalePicker;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideSoftKeyboard(Lcom/android/settings/MiuiLocalePicker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiLocalePicker;->hideSoftKeyboard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monQueryTextChange(Lcom/android/settings/MiuiLocalePicker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiLocalePicker;->onQueryTextChange(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    invoke-virtual {p0, p0}, Lcom/android/settings/MiuiLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    return-void
.end method

.method private addPreferences(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    if-eqz v1, :cond_1

    .line 193
    new-instance v2, Lcom/android/settings/widget/LocaleRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/LocaleRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 195
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/LocaleRadioButtonPreference;->setLocaleInfo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    .line 196
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    sget v1, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 199
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 200
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private constructLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 384
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 385
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private filterByNativeAndUiNames(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mOriginLanguageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mOriginLanguageList:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 411
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 414
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 415
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 417
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 419
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 420
    invoke-virtual {v5}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const/4 v7, 0x1

    .line 422
    invoke-static {v6, v7}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v8

    .line 421
    invoke-static {v8, v1}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-static {v6, v6, v7}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v6

    .line 423
    invoke-static {v6, v1}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 425
    invoke-direct {p0, v6, p1}, Lcom/android/settings/MiuiLocalePicker;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 426
    invoke-direct {p0, v8, p1}, Lcom/android/settings/MiuiLocalePicker;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 427
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    :cond_4
    iput-object v3, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    return-object v3

    :cond_5
    :goto_1
    return-object v1
.end method

.method private hideSoftKeyboard()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initSearchBox()V
    .locals 5

    .line 127
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    sget v2, Lcom/android/settings/R$layout;->localePicker_search_titlebar:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020009    # @android:id/input

    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/MiuiLocalePicker;->mSearchView:Landroid/widget/EditText;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->camera_key_action_shortcut_search:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/MiuiLocalePicker;->mSearchView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/MiuiLocalePicker$1;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiLocalePicker$1;-><init>(Lcom/android/settings/MiuiLocalePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x102002c    # @android:id/home

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    new-instance v1, Lcom/android/settings/MiuiLocalePicker$2;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiLocalePicker$2;-><init>(Lcom/android/settings/MiuiLocalePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    new-instance v0, Lcom/android/settings/MiuiLocalePicker$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiLocalePicker$3;-><init>(Lcom/android/settings/MiuiLocalePicker;)V

    iput-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mOnListScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private onQueryTextChange(Ljava/lang/String;)V
    .locals 1

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mOriginLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 396
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mOriginLanguageList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    .line 397
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 398
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiLocalePicker;->addPreferences(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiLocalePicker;->filterByNativeAndUiNames(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiLocalePicker;->addPreferences(Ljava/util/ArrayList;)V

    return-void
.end method

.method private restoreSelectedLanguage(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "save_selected_language"

    .line 368
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 375
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 379
    :goto_0
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    return-void
.end method

.method private setSelect(Ljava/lang/String;)V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 220
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-eq v3, v0, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_4

    .line 226
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/LocaleRadioButtonPreference;

    .line 227
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 228
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v4, :cond_2

    goto :goto_2

    .line 233
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings/widget/LocaleRadioButtonPreference;->getLocaleInfo()Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 235
    invoke-virtual {v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiLocalePicker;->onLocaleSelected(Ljava/util/Locale;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private wordMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 436
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, " "

    .line 440
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 442
    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    .line 443
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 338
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 351
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, p0, Lcom/android/settings/MiuiLocalePicker;->mSavedSoftInputMode:I

    .line 353
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 355
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "locale"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mTargetLocale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->global_locale_change_title:I

    new-instance v2, Lcom/android/settings/MiuiLocalePicker$6;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/MiuiLocalePicker$6;-><init>(Lcom/android/settings/MiuiLocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiUtils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 109
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiLocalePicker;->constructLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/settings/MiuiLocalePicker;->mOriginLanguageList:Ljava/util/ArrayList;

    .line 111
    sget p2, Lcom/android/settings/R$xml;->locale_picker:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiLocalePicker;->restoreSelectedLanguage(Landroid/os/Bundle;)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mLanguageList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiLocalePicker;->addPreferences(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 90
    sget-boolean p3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p3, :cond_0

    .line 92
    sget p3, Lcom/android/settings/R$layout;->locale_picker_search_empty:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 93
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-object p2
.end method

.method public onDetach()V
    .locals 2

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MiuiLocalePicker;->mSavedSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 363
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mTargetLocale:Ljava/util/Locale;

    const/4 p1, 0x1

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiLocalePicker;->showDialog(I)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 261
    invoke-static {p1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    :goto_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 207
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/LocaleRadioButtonPreference;

    .line 208
    iget-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    .line 209
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x0

    return p0

    .line 212
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiLocalePicker;->setSelect(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 267
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const-string v1, "locale"

    .line 272
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string/jumbo v0, "save_selected_language"

    .line 275
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 181
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker;->mOnListScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 343
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    .line 345
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker;->mOnListScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/MiuiLocalePicker;->initSearchBox()V

    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    return-void
.end method

.method protected showDialog(I)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->newInstance(Lcom/android/settings/DialogCreatable;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 285
    new-instance v1, Lcom/android/settings/MiuiLocalePicker$4;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiLocalePicker$4;-><init>(Lcom/android/settings/MiuiLocalePicker;)V

    iput-object v1, v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 294
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    new-instance v1, Lcom/android/settings/MiuiLocalePicker$5;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiLocalePicker$5;-><init>(Lcom/android/settings/MiuiLocalePicker;)V

    iput-object v1, v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 303
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
