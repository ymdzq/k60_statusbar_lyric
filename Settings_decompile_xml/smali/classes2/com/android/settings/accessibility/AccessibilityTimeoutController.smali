.class public Lcom/android/settings/accessibility/AccessibilityTimeoutController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AccessibilityTimeoutController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACCESSIBILITY_TIMEOUT_FEATURE_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_RADIO_GROUP:Ljava/lang/String; = "time_radio_group"


# instance fields
.field private final mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityUiTimeoutValue:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mPreference:Lmiuix/preference/RadioButtonPreference;

.field private final mResources:Landroid/content/res/Resources;

.field private mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;


# direct methods
.method public static synthetic $r8$lambda$00ziE49uVOXIRZAyUSBgmr5xIE8(Lcom/android/settings/accessibility/AccessibilityTimeoutController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "accessibility_non_interactive_ui_timeout_ms"

    const-string v1, "accessibility_interactive_ui_timeout_ms"

    .line 52
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->ACCESSIBILITY_TIMEOUT_FEATURE_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mResources:Landroid/content/res/Resources;

    .line 74
    new-instance p1, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    new-instance p2, Landroid/os/Handler;

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    .line 76
    sget-object p2, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->ACCESSIBILITY_TIMEOUT_FEATURE_KEYS:Ljava/util/List;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityTimeoutController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityTimeoutController;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    return-void
.end method

.method private getTimeoutValueToKeyMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$array;->accessibility_timeout_control_selector_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$array;->accessibility_timeout_selector_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 159
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    aget-object v5, v0, v3

    aget v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lmiuix/preference/RadioButtonPreference;

    .line 109
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

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

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 123
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getTimeoutValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_non_interactive_ui_timeout_ms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "accessibility_interactive_ui_timeout_ms"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutUtils;->getSecureAccessibilityTimeoutValue(Landroid/content/ContentResolver;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityUiTimeoutValue:I

    .line 141
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lmiuix/preference/RadioButtonPreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getTimeoutValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 148
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityUiTimeoutValue:I

    if-ne v0, p1, :cond_1

    .line 149
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lmiuix/preference/RadioButtonPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
