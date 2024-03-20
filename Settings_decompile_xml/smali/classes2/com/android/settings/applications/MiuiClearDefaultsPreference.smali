.class public Lcom/android/settings/applications/MiuiClearDefaultsPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiClearDefaultsPreference.java"


# instance fields
.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private mHasDefault:Z

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppWidgetManager(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppsControlDisallowedBySystem:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasDefault(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mHasDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsbManager(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHasDefault(Lcom/android/settings/applications/MiuiClearDefaultsPreference;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mHasDefault:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetLaunchDefaultsUi(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->resetLaunchDefaultsUi()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mHasDefault:Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mHasDefault:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mHasDefault:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mHasDefault:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 84
    sget v0, Lcom/android/settings/R$layout;->miui_clear_default_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 85
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "usb"

    .line 87
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 90
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "no_control_apps"

    .line 89
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppsControlDisallowedBySystem:Z

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 91
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method private resetLaunchDefaultsUi()V
    .locals 1

    .line 202
    sget v0, Lcom/android/settings/R$string;->auto_launch_disable_text:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mHasDefault:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 108
    new-instance v0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->updateUI(Landroid/view/View;)Z

    return-void
.end method

.method public setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public updateUI(Landroid/view/View;)Z
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v3, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 148
    invoke-static {v1, v3}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference$2;-><init>(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 157
    :cond_2
    new-instance v3, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;-><init>(Lcom/android/settings/applications/MiuiClearDefaultsPreference;ZZ)V

    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return v2
.end method
