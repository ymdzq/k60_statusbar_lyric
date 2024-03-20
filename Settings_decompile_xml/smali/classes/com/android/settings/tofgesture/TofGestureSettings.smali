.class public Lcom/android/settings/tofgesture/TofGestureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TofGestureSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;,
        Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureAppItemPreference;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/tofgesture/util/TofGestureAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDoublePress:Landroidx/preference/Preference;

.field private mLeftRightWaving:Landroidx/preference/Preference;

.field private mPalmCircle:Landroidx/preference/Preference;

.field private mTofGestureAppsCacheManager:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

.field private mTofGestureAppsList:Landroidx/preference/PreferenceCategory;

.field private mTofGestureCueToneEnabled:Landroidx/preference/CheckBoxPreference;

.field private mTofGestureDescription:Landroidx/preference/Preference;

.field private mTofGestureEnabled:Landroidx/preference/CheckBoxPreference;

.field private mTofGestureSettingsObserver:Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;

.field private mUpDownWaving:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/tofgesture/TofGestureSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTofGestureAppsCacheManager(Lcom/android/settings/tofgesture/TofGestureSettings;)Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsCacheManager:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTofGestureCueToneEnabled(Lcom/android/settings/tofgesture/TofGestureSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureCueToneEnabled:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleTofGestureStateChanged(Lcom/android/settings/tofgesture/TofGestureSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/tofgesture/TofGestureSettings;->handleTofGestureStateChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misTofGestureCueToneEnabled(Lcom/android/settings/tofgesture/TofGestureSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->isTofGestureCueToneEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTofGestureEnabled(Lcom/android/settings/tofgesture/TofGestureSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->isTofGestureEnabled()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mAppList:Ljava/util/List;

    return-void
.end method

.method private findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 101
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method private handleTofGestureStateChanged(Z)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_tof_gesture"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureCueToneEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private initAppsList()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsCacheManager:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    .line 210
    invoke-virtual {v0}, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->getTofGestureAppInfoList()Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/tof/gesture/TofGestureAppDetailInfo;

    .line 212
    new-instance v2, Lcom/android/settings/tofgesture/util/TofGestureAppItem;

    invoke-direct {v2, v1}, Lcom/android/settings/tofgesture/util/TofGestureAppItem;-><init>(Lcom/miui/tof/gesture/TofGestureAppDetailInfo;)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mAppList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->showAppList(Ljava/util/List;)V

    return-void
.end method

.method private initPreference()V
    .locals 4

    const-string v0, "key_tofgesture_description"

    .line 75
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureDescription:Landroidx/preference/Preference;

    const-string v0, "key_tof_gesture_enable"

    .line 76
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureEnabled:Landroidx/preference/CheckBoxPreference;

    const-string v0, "key_tof_gesture_cue_tone_enable"

    .line 77
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureCueToneEnabled:Landroidx/preference/CheckBoxPreference;

    const-string v0, "key_tof_gesture_apps_list"

    .line 78
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsList:Landroidx/preference/PreferenceCategory;

    .line 79
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureDescription:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->tofgesture_description_summary:I

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "key_leftright_waving"

    .line 81
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mLeftRightWaving:Landroidx/preference/Preference;

    const-string v0, "key_updown_waving"

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mUpDownWaving:Landroidx/preference/Preference;

    const-string v0, "key_doublepress"

    .line 83
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mDoublePress:Landroidx/preference/Preference;

    const-string v0, "key_palm_circle"

    .line 84
    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mPalmCircle:Landroidx/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->isTofGestureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureCueToneEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->isTofGestureCueToneEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureCueToneEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->isTofGestureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsList:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->isTofGestureEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private initPreferenceListener()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureCueToneEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mLeftRightWaving:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mUpDownWaving:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mDoublePress:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mPalmCircle:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private isTofGestureCueToneEnabled()Z
    .locals 2

    .line 110
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_tof_gesture_cue_tone"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isTofGestureEnabled()Z
    .locals 2

    .line 105
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_tof_gesture"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private onAppChecked(ZLandroidx/preference/Preference;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureAppItemPreference;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppChecked, appInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isChecked="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TofGestureSettings"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 191
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsCacheManager:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    .line 192
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->setAppTofGesture(Ljava/lang/String;Z)V

    return-void
.end method

.method private showAppList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/tofgesture/util/TofGestureAppItem;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;

    .line 223
    new-instance v1, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureAppItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureAppItemPreference;-><init>(Lcom/android/settings/tofgesture/TofGestureSettings;Landroid/content/Context;Lcom/android/settings/tofgesture/util/TofGestureAppItem;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsList:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mContext:Landroid/content/Context;

    .line 65
    sget p1, Lcom/android/settings/R$xml;->tofgesture_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-static {}, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->getInstance()Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureAppsCacheManager:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->initPreference()V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->initPreferenceListener()V

    .line 69
    new-instance p1, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;-><init>(Lcom/android/settings/tofgesture/TofGestureSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureSettingsObserver:Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;

    .line 71
    invoke-virtual {p1}, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->startObserving()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 203
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 204
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings;->mTofGestureSettingsObserver:Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->stopObserving()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 117
    instance-of v0, p1, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureAppItemPreference;

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p2, p1}, Lcom/android/settings/tofgesture/TofGestureSettings;->onAppChecked(ZLandroidx/preference/Preference;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_tof_gesture_cue_tone_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_tof_gesture_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/tofgesture/TofGestureSettings;->handleTofGestureStateChanged(Z)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "miui_tof_gesture_cue_tone"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x8

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 146
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.tof.TofTutorialActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "key_updown_waving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v6, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "key_palm_circle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "key_leftright_waving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_0

    :sswitch_3
    const-string v1, "key_doublepress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    const-string p1, "TUTORIAL_TYPE"

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 154
    :pswitch_0
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 160
    :pswitch_1
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 151
    :pswitch_2
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 157
    :pswitch_3
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v5

    :sswitch_data_0
    .sparse-switch
        -0x1d6db6ce -> :sswitch_3
        0x40bf460 -> :sswitch_2
        0xe0e209d -> :sswitch_1
        0x74f74458 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->initAppsList()V

    return-void
.end method
