.class public Lcom/android/settings/language/MiuiLanguageAndInputSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiLanguageAndInputSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;,
        Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;,
        Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;,
        Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private lastSelectedIme:Ljava/lang/String;

.field private mAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

.field private mBottomAddPref:Lcom/android/settings/MiuiValuePreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentInputMethodCnPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

.field private mDefaultAutofillPref:Landroidx/preference/Preference;

.field private mDefaultImeObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;

.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDropDownPreferenceAdapter:Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;

.field private mGameControllerCategory:Landroidx/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodManagePreference:Landroidx/preference/Preference;

.field private mInputMethodNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsMiuiImeBottomEnabled:Z

.field private mIsSupportMiuiSecurityIME:Z

.field private mKeyBoardSkinPreference:Landroidx/preference/CheckBoxPreference;

.field private mKeyboardMouseTouchPreference:Landroidx/preference/Preference;

.field private mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private mLanguagePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPrivacyInputModePreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSecIMEPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSettingsObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;

.field private mShowInputMethodSelectorPref:Landroidx/preference/ListPreference;

.field private mTtsSettingsPreference:Landroidx/preference/Preference;

.field private sMiuiImeBottomSupport:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsMiuiImeBottomSupport(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->sMiuiImeBottomSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowKeyboardLayoutDialog(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFunctionPreferenceEnable(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateFunctionPreferenceEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInputMethodPreferenceViews(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePrivacyInputModePreference(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updatePrivacyInputModePreference(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetLocaleNames(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhaveInputDeviceWithVibrator()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1137
    new-instance v0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$3;

    invoke-direct {v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 166
    iput-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->sMiuiImeBottomSupport:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIsMiuiImeBottomEnabled:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIsSupportMiuiSecurityIME:Z

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->lastSelectedIme:Ljava/lang/String;

    return-void
.end method

.method private getImeDisplayName(Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getLocaleNames(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 713
    invoke-static {p0, v0}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 714
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 716
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 720
    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 721
    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 725
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_2

    .line 726
    invoke-static {p0, v3, v2}, Lcom/android/settings/MiuiUtils;->overlayLocaleLanguageLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 730
    :cond_2
    invoke-static {}, Lcom/android/settings/MiuiUtils;->needOverlayTwLocale()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "zh_TW"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x5

    if-lt p0, v1, :cond_3

    .line 731
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 5

    .line 1035
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1036
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1037
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1038
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 855
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "previously_enabled_subtypes"

    const/4 v1, 0x0

    .line 856
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 857
    invoke-static {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2

    .line 842
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v0

    .line 843
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_0

    return-void

    .line 848
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 849
    invoke-static {p0, p1, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 3

    .line 826
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 827
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 829
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 830
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 834
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 835
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-direct {p0, v1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    return-void
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 863
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 865
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 866
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "previously_enabled_subtypes"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setClickListenerForImeTrack()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodCnPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "input_method_manage"

    .line 366
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodManagePreference:Landroidx/preference/Preference;

    .line 367
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 369
    iget-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIsSupportMiuiSecurityIME:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSecIMEPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mPrivacyInputModePreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyBoardSkinPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 377
    iget-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->sMiuiImeBottomSupport:Z

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mBottomAddPref:Lcom/android/settings/MiuiValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultAutofillPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "tts_settings"

    .line 383
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mTtsSettingsPreference:Landroidx/preference/Preference;

    .line 384
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "keyboard_mouse_touch"

    .line 386
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardMouseTouchPreference:Landroidx/preference/Preference;

    .line 387
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 2

    .line 991
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "keyboardLayout"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    if-nez v0, :cond_0

    .line 993
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p1, 0x0

    .line 994
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 995
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static supportMiuiSecInputMethod()Z
    .locals 4

    .line 1125
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.miui.has_security_keyboard"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1126
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v3, "com.miui.securityinputmethod"

    .line 1128
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string v0, "MiuiLanguageAndInputSettings"

    const-string v2, "com.miui.securityinputmethod not installed"

    .line 1131
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private updateCurrentImeName()V
    .locals 5

    .line 870
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 871
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 872
    :cond_0
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodInfoList:Ljava/util/List;

    .line 873
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodNameList:Ljava/util/List;

    .line 874
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodIdList:Ljava/util/List;

    .line 875
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 876
    :goto_0
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 877
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodNameList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v4}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->getImeDisplayName(Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodIdList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 881
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 882
    invoke-virtual {v3, v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 883
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 884
    monitor-enter p0

    .line 886
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->lastSelectedIme:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->lastSelectedIme:Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 887
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->lastSelectedIme:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/settings/report/InternationalCompat;->captureChangedKeyboardAnalytics(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 888
    iput-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->lastSelectedIme:Ljava/lang/String;

    .line 890
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 894
    :cond_3
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_input_method"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodIdList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 897
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodIdList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiLanguageAndInputSettings"

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentImeName: curImeId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in the enabledInputMethodList :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 902
    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_6

    .line 903
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_7

    .line 904
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodNameList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 905
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDropDownPreferenceAdapter:Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;

    if-nez v1, :cond_5

    .line 906
    new-instance v1, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;

    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDropDownPreferenceAdapter:Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;

    goto :goto_2

    .line 908
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;->updateEnabledIME([Ljava/lang/CharSequence;)V

    .line 910
    :goto_2
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDropDownPreferenceAdapter:Lcom/android/settings/inputmethod/DropDownPreferenceAdapter;

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setAdapter(Landroid/widget/ArrayAdapter;)V

    .line 911
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 912
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v2}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_3

    .line 915
    :cond_6
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodCnPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_7

    .line 916
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodNameList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateFunctionPreferenceEnable()V
    .locals 3

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_ime_bottom_view"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIsMiuiImeBottomEnabled:Z

    if-eqz v2, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mBottomAddPref:Lcom/android/settings/MiuiValuePreference;

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->input_method_bottom_open:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mBottomAddPref:Lcom/android/settings/MiuiValuePreference;

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->input_method_bottom_close:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateGameControllers()V
    .locals 4

    .line 1022
    invoke-static {}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1024
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v1, "vibrate_input_devices"

    .line 1025
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1028
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 1030
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    return-void
.end method

.method private updateHardKeyboards()V
    .locals 9

    .line 932
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 937
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 938
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 939
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 941
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_3

    .line 942
    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 943
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    .line 944
    iget-object v5, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 945
    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 947
    iget-object v7, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v7, v5}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 949
    :goto_1
    new-instance v7, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 950
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    .line 952
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 954
    :cond_2
    sget v3, Lcom/android/settings/R$string;->keyboard_layout_default_label:I

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 956
    :goto_2
    new-instance v3, Lcom/android/settings/language/MiuiLanguageAndInputSettings$2;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$2;-><init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 963
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :cond_4
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 968
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 969
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_5

    .line 971
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    move v0, v2

    goto :goto_3

    .line 975
    :cond_6
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 976
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_7

    .line 978
    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 979
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 980
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 983
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 985
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    return-void
.end method

.method private updateInputDevices()V
    .locals 0

    .line 927
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateHardKeyboards()V

    .line 928
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateGameControllers()V

    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateCurrentImeName()V

    .line 786
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 788
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyBoardSkinPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 798
    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 796
    invoke-static {p0, v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lmiuix/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private updatePrivacyInputModePreference(Z)V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isMiuiInputMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    .line 494
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isSupportedPrivacyInputMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mPrivacyInputModePreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 498
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mPrivacyInputModePreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_1

    sget p1, Lcom/android/settings/R$string;->input_method_bottom_open:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/settings/R$string;->input_method_bottom_close:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_2
    return-void
.end method

.method private updateSecurityImePreference()V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_security_ime"

    const/4 v2, 0x1

    .line 487
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 489
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSecIMEPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->input_method_bottom_open:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->input_method_bottom_close:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    return-void
.end method

.method private updateUserDictionaryPreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 451
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 454
    :cond_0
    new-instance v1, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;-><init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 702
    const-class p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x39

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 190
    const-class p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 697
    sget p0, Lcom/android/settings/R$xml;->language_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1011
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1013
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "input_device_identifier"

    .line 1015
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    const/4 p2, 0x0

    .line 1016
    iput-object p2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 1017
    invoke-direct {p0, p1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 201
    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 206
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "setting_Additional_settings_keyboard"

    .line 207
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 210
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 213
    :try_start_0
    sget v0, Lcom/android/settings/R$string;->input_method_selector_visibility_default_value:I

    .line 214
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const-string/jumbo v1, "phone_language"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "disallow_change_language"

    invoke-static {v0, v3}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v0

    invoke-interface {v0, v3}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mLanguagePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    goto :goto_1

    .line 226
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    const-string v0, "hard_keyboard"

    .line 241
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "keyboard_settings_category"

    .line 242
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "game_controller_settings_category"

    .line 244
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input"

    .line 250
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 251
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateInputDevices()V

    const-string/jumbo v1, "spellcheckers_settings"

    .line 254
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 257
    invoke-static {v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroidx/preference/Preference;)V

    .line 258
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    const-class v4, Lcom/android/settings/SubSettings;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    const-class v4, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 261
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":settings:show_fragment"

    .line 260
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, ":settings:show_fragment_title_resid"

    .line 262
    sget v5, Lcom/android/settings/R$string;->spellcheckers_settings_title:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v3, "textservices"

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/TextServicesManager;

    .line 267
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    .line 268
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v4, :cond_3

    array-length v3, v4

    if-nez v3, :cond_4

    :cond_3
    const-string/jumbo v3, "other_input_settings"

    .line 269
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 270
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    const-string v1, "input_settings"

    .line 276
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 278
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    const-string/jumbo v1, "miui_security_ime"

    .line 281
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSecIMEPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 282
    invoke-static {}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->supportMiuiSecInputMethod()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIsSupportMiuiSecurityIME:Z

    if-nez v1, :cond_6

    .line 284
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSecIMEPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    const-string/jumbo v1, "privacy_input_mode"

    .line 289
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mPrivacyInputModePreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 290
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_7

    .line 291
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 293
    :cond_7
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isEnablePrivacyInputMode(Landroid/content/Context;)Z

    move-result v1

    .line 294
    invoke-direct {p0, v1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updatePrivacyInputModePreference(Z)V

    :goto_2
    const-string v1, "keyboard_skin_follow_system_enable"

    .line 299
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyBoardSkinPreference:Landroidx/preference/CheckBoxPreference;

    .line 300
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_8

    .line 301
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 303
    :cond_8
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isKeyBoardSkinFollowSystemEnable(Landroid/content/Context;)Z

    move-result v1

    .line 304
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyBoardSkinPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyBoardSkinPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    const-string v1, "device_ime_keyboard_fold"

    .line 307
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v3, "device_ime_keyboard_pad"

    .line 308
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 309
    sget-boolean v4, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

    if-eqz v4, :cond_9

    .line 310
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 311
    :cond_9
    sget-boolean v4, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->IS_SUPPORT_TABLET_SCREEN_SETTINGS:Z

    if-eqz v4, :cond_a

    .line 312
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 314
    :cond_a
    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 315
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 319
    :goto_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHandler:Landroid/os/Handler;

    .line 320
    new-instance v1, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;

    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;-><init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSettingsObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;

    .line 321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "device_policy"

    .line 322
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "input_device_identifier"

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    const-string v0, "default_autofill"

    .line 329
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultAutofillPref:Landroidx/preference/Preference;

    .line 330
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    .line 332
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isMiuiImeBottomSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->sMiuiImeBottomSupport:Z

    const-string p1, "full_screen_keyboard_optimization"

    .line 334
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 336
    iget-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->sMiuiImeBottomSupport:Z

    if-eqz v0, :cond_b

    const-string/jumbo p1, "miui_bottom_manager"

    .line 337
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MiuiValuePreference;

    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mBottomAddPref:Lcom/android/settings/MiuiValuePreference;

    goto :goto_5

    .line 339
    :cond_b
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    const-string p1, "current_input_method"

    .line 342
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

    const-string p1, "current_input_method_cn"

    .line 343
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodCnPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 345
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 346
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 347
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6

    .line 349
    :cond_c
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mKeyboardSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 350
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mCurrentInputMethodCnPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 351
    new-instance p1, Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;-><init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultImeObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;

    .line 352
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "default_input_method"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultImeObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 356
    :goto_6
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_d

    .line 357
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->setClickListenerForImeTrack()V

    .line 358
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1309
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultImeObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultImeObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 624
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 629
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 634
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateInputDevices()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 598
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 600
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSettingsObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->pause()V

    .line 606
    invoke-static {}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->supportMiuiSecInputMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSecIMEPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 609
    :cond_0
    invoke-static {}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v2, "vibrate_input_devices"

    .line 611
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 619
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 617
    invoke-static {p0, v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lmiuix/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 756
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mShowInputMethodSelectorPref:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "vibrate_input_devices"

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string p1, "current_input_method"

    .line 767
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 769
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodNameList:Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 770
    iget-object p2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default_input_method"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 772
    iget-object p2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "keyboard_skin_follow_system_enable"

    .line 773
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 774
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    .line 775
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 774
    invoke-static {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 392
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "current_input_method_cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "keyboard_mouse_touch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "default_autofill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "input_method_manage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "miui_security_ime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "tts_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "privacy_input_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "keyboard_skin_follow_system_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "miui_bottom_manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 394
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u5f53\u524d\u8f93\u5165\u6cd5"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u952e\u76d8\u3001\u9f20\u6807\u548c\u89e6\u63a7\u677f"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u81ea\u52a8\u586b\u5145\u670d\u52a1"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u8f93\u5165\u6cd5\u7ba1\u7406"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 400
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u5b89\u5168\u952e\u76d8"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u6587\u5b57\u8f6c\u8bed\u97f3\u8f93\u51fa"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 403
    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u9690\u79c1\u8f93\u5165\u6a21\u5f0f"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :pswitch_7
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u952e\u76d8\u76ae\u80a4\u968f\u7cfb\u7edf\u5207\u6362\u4e3a\u6df1\u8272\u6a21\u5f0f"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :pswitch_8
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "\u5168\u9762\u5c4f\u952e\u76d8\u4f18\u5316"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7290c778 -> :sswitch_8
        -0x5164ef51 -> :sswitch_7
        -0x1c62e9f1 -> :sswitch_6
        0xc05acef -> :sswitch_5
        0x4537d0f1 -> :sswitch_4
        0x4739face -> :sswitch_3
        0x4fb137f0 -> :sswitch_2
        0x7a47decd -> :sswitch_1
        0x7d3d878e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 657
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 660
    :cond_0
    instance-of v0, p1, Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 661
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "phone_language"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 663
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.LOCALE_SETTINGS"

    .line 664
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment_title_resid"

    .line 665
    sget v2, Lcom/android/settings/R$string;->phone_language:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/MiuiUtils;->cancelSplit(Landroid/content/Context;Landroid/content/Intent;)V

    .line 667
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    const-string v0, "current_input_method_cn"

    .line 671
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 672
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 673
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_3

    .line 674
    :cond_2
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 675
    invoke-virtual {v1, v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 676
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 677
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->lastSelectedIme:Ljava/lang/String;

    :cond_3
    const-string v0, "input_method"

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 682
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 684
    :cond_4
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 685
    move-object v0, p1

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 686
    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 688
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 687
    invoke-static {p0, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    .line 692
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 8

    .line 504
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 505
    sget v0, Lcom/android/settings/R$string;->language_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updateActionBarTitleView(I)V

    .line 507
    iget-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->sMiuiImeBottomSupport:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateFunctionPreferenceEnable()V

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIsSupportMiuiSecurityIME:Z

    if-eqz v0, :cond_1

    .line 511
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateSecurityImePreference()V

    .line 514
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isEnablePrivacyInputMode(Landroid/content/Context;)Z

    move-result v0

    .line 516
    invoke-direct {p0, v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updatePrivacyInputModePreference(Z)V

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mSettingsObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->resume()V

    .line 520
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    const-string/jumbo v0, "spellcheckers_settings"

    .line 522
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v2, "textservices"

    .line 524
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 526
    invoke-virtual {v2}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 527
    sget v2, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 529
    :cond_3
    invoke-virtual {v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :cond_4
    sget v2, Lcom/android/settings/R$string;->spell_checker_not_selected:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 538
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mLanguagePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 542
    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mLanguagePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mLanguagePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    :cond_6
    const-string v1, "key_user_dictionary_settings"

    .line 549
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_8

    .line 551
    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 553
    sget v1, Lcom/android/settings/R$string;->user_dict_settings_title:I

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 555
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 556
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    goto :goto_1

    .line 558
    :cond_7
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mLanguagePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 560
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 561
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 566
    :cond_8
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move v4, v1

    goto :goto_2

    .line 568
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_b

    .line 570
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 571
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AOSP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    move v2, v1

    :goto_4
    if-eqz v2, :cond_c

    .line 577
    invoke-direct {p0, v3}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateUserDictionaryPreference(Landroidx/preference/Preference;)V

    goto :goto_5

    .line 579
    :cond_c
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 586
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateInputDevices()V

    .line 590
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 591
    invoke-direct {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateInputMethodPreferenceViews()V

    .line 593
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mDefaultAutofillPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V
    .locals 4

    .line 803
    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 804
    invoke-virtual {p1}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    invoke-direct {p0, v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 809
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 811
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 812
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 811
    invoke-static {p0, v2, v3, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lmiuix/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 814
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 815
    invoke-virtual {p1}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 818
    invoke-direct {p0, v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 820
    :cond_2
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 821
    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    .line 1001
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "input_device_identifier"

    .line 1003
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1005
    iput-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 1006
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 426
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 427
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 429
    sget v0, Lcom/android/settings/R$string;->language_settings:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method
