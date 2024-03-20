.class public Lcom/android/settings/applications/SystemAppSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SystemAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;
    }
.end annotation


# instance fields
.field private mCls2SystemHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadLabelTask:Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;

.field private whiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCls2SystemHeader(Lcom/android/settings/applications/SystemAppSettings;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAppIcon(Lcom/android/settings/applications/SystemAppSettings;Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/SystemAppSettings;->getAppIcon(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->whiteList:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/SystemAppSettings;)Landroid/content/Context;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/SystemAppSettings;)Landroid/content/Context;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/SystemAppSettings;)Landroid/content/Context;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private addSystemAppHeader(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x10

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 151
    :cond_1
    new-instance v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;-><init>()V

    const-string/jumbo v2, "system_app"

    .line 152
    iput-object v2, v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 153
    iput-object v0, v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 154
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, -0x3e8

    .line 156
    iput-wide v2, v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    iget-object p0, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private getAppIcon(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 86
    iget-object v0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMiMoneyHeader()Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;
    .locals 3

    .line 136
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;-><init>()V

    .line 137
    sget v1, Lcom/android/settings/R$string;->xiaomi_money_service:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 138
    sget p0, Lcom/android/settings/R$id;->mimoney_settings:I

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    .line 139
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.VIEW_MILI_CENTER"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method private initWhiteList()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->whiteList:Ljava/util/HashSet;

    const-string v1, "com.mi.health"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object p0, p0, Lcom/android/settings/applications/SystemAppSettings;->whiteList:Ljava/util/HashSet;

    const-string v0, "com.android.soundrecorder"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private insertSystemAppHeader()V
    .locals 5

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/android/settings/applications/SystemAppSettings;->mLoadLabelTask:Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 106
    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/SystemAppSettings;->whiteList:Ljava/util/HashSet;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.miui.voiceassist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.miui.googlebase.ui.GmsCoreSettings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.miui.cloudservice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/MiuiUtils;->isDeviceManaged(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ex_func_mi_cloud_service"

    invoke-static {v3, v4}, Lcom/android/settings/MiuiUtils;->isVisibleWithExtensionFuncKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_6

    .line 122
    iget v1, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v1, v3, :cond_6

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveMiCoin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 126
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    const-string v3, "com.xiaomi.payment.MiliCenterEntryActivity"

    invoke-direct {p0}, Lcom/android/settings/applications/SystemAppSettings;->getMiMoneyHeader()Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settings/applications/SystemAppSettings;->addSystemAppHeader(Landroid/content/pm/ResolveInfo;)V

    .line 130
    iget v1, v2, Landroid/content/pm/ResolveInfo;->priority:I

    goto/16 :goto_0

    .line 132
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/applications/SystemAppSettings;->loadAppLabel()V

    return-void
.end method

.method private loadAppLabel()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mLoadLabelTask:Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;-><init>(Lcom/android/settings/applications/SystemAppSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mLoadLabelTask:Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 167
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/android/settings/R$xml;->system_app_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/applications/SystemAppSettings;->initWhiteList()V

    const-string/jumbo p1, "setting_Apps_systemapp"

    .line 65
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/SystemAppSettings;->insertSystemAppHeader()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mCls2SystemHeader:Ljava/util/HashMap;

    return-void
.end method
