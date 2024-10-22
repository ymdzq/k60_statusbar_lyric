.class public Lcom/android/settings/language/LanguageAndInputSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LanguageAndInputSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 156
    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$1;

    sget v1, Lcom/android/settings/R$xml;->language_and_input:I

    invoke-direct {v0, v1}, Lcom/android/settings/language/LanguageAndInputSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v2, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v3, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v4, "keyboards_category"

    invoke-direct {v3, p0, v4}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    .line 120
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 126
    new-instance p1, Lcom/android/settings/language/TtsPreferenceController;

    const-string/jumbo v2, "tts_settings_summary"

    invoke-direct {p1, p0, v2}, Lcom/android/settings/language/TtsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcom/android/settings/language/OnDeviceRecognitionPreferenceController;

    const-string/jumbo v3, "odsr_settings"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/language/OnDeviceRecognitionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    .line 134
    invoke-static {v1, p1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v1, "speech_category"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 141
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Lcom/android/settings/language/PointerSpeedController;

    invoke-direct {p1, p0}, Lcom/android/settings/language/PointerSpeedController;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v2, "pointer_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    filled-new-array {p1}, [Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    .line 148
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "LanguageAndInputSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x2ee

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 99
    sget p0, Lcom/android/settings/R$xml;->language_and_input:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Settings.WORK_PROFILE_KEYBOARDS_AND_TOOLS"

    .line 86
    sget v0, Lcom/android/settings/R$string;->language_and_input_for_work_category_title:I

    const-string v1, "language_and_input_for_work_category"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "Settings.SPELL_CHECKER_FOR_WORK"

    .line 89
    sget v0, Lcom/android/settings/R$string;->spellcheckers_settings_for_work_title:I

    const-string/jumbo v1, "spellcheckers_settings_for_work_pref"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "Settings.PERSONAL_DICTIONARY_FOR_WORK"

    .line 92
    sget v0, Lcom/android/settings/R$string;->user_dict_settings_for_work_title:I

    const-string/jumbo v1, "user_dictionary_settings_for_work_pref"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    sget v0, Lcom/android/settings/R$string;->language_settings:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
