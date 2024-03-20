.class public Lcom/android/settings/accessibility/InstalledAccessibilityService;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InstalledAccessibilityService.java"


# static fields
.field public static HIDE_SERVICES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNoNeedDisplayKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/InstalledAccessibilityService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/InstalledAccessibilityService;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePreferences(Lcom/android/settings/accessibility/InstalledAccessibilityService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/InstalledAccessibilityService;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mNoNeedDisplayKeyList:Ljava/util/List;

    .line 45
    sget v1, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mNoNeedDisplayKeyList:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_display_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mNoNeedDisplayKeyList:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_interaction_control_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mNoNeedDisplayKeyList:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_downloaded_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.miui.accessibility/com.miui.accessibility.haptic.HapticAccessibilityService"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.miui.accessibility/com.miui.accessibility.voiceaccess.VoiceAccessAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.miui.accessibility/com.miui.accessibility.environment.sound.recognition.EnvSoundRecognitionService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.systemui.accessibility.accessibilitymenu/com.android.systemui.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.miui.accessibility/com.miui.accessibility.enhance.tb.MiuiEnhanceTBService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/settings/accessibility/InstalledAccessibilityService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/InstalledAccessibilityService$1;-><init>(Lcom/android/settings/accessibility/InstalledAccessibilityService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Lcom/android/settings/accessibility/InstalledAccessibilityService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/InstalledAccessibilityService$2;-><init>(Lcom/android/settings/accessibility/InstalledAccessibilityService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method public static buildNoNeedDisplayServices(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    sget-object v1, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mNoNeedDisplayKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 149
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 150
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 151
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private updatePreferences()V
    .locals 6

    .line 126
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getInstalledAccessibilityList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    .line 133
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 134
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_2

    .line 136
    sget-object v4, Lcom/android/settings/accessibility/InstalledAccessibilityService;->HIDE_SERVICES_LIST:Ljava/util/List;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 159
    const-class p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 103
    sget p0, Lcom/android/settings/R$xml;->installed_accessible_services:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 110
    iget-object p1, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 116
    iget-object p0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/accessibility/InstalledAccessibilityService;->updatePreferences()V

    return-void
.end method
