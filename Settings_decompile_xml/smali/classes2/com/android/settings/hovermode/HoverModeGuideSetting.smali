.class public Lcom/android/settings/hovermode/HoverModeGuideSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HoverModeGuideSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;
    }
.end annotation


# instance fields
.field private mAppListPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mHoverModeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/hovermode/HoverModeAppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppListPreferenceCategory(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting;->mAppListPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting;->mHoverModeApps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMiuiHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->getMiuiHoverModeApps()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroid/content/Context;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getMiuiHoverModeApps()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "android.hovermode.MiuiHoverModeManager"

    .line 124
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMiuiHoverModeApps"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 125
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch getMiuiHoverModeApps error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoverModeSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private initHoverModeAppList()V
    .locals 2

    .line 57
    new-instance v0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;-><init>(Lcom/android/settings/hovermode/HoverModeGuideSetting;Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask-IA;)V

    .line 58
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting;->mHoverModeApps:Ljava/util/List;

    .line 46
    sget p1, Lcom/android/settings/R$xml;->hover_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "hover_mode_app_list"

    .line 47
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting;->mAppListPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->initHoverModeAppList()V

    return-void
.end method
