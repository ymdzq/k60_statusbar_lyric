.class public Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LinkToWindowsActivityController.java"


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE_PREFERENCES"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "com.microsoft.appmanager.StartUpActivity"

.field private static final APP_MANAGER:Ljava/lang/String; = "com.microsoft.appmanager"

.field private static final DEVICE_INTEGRATION_SERVICE:Ljava/lang/String; = "com.microsoft.deviceintegrationservice"

.field private static final METHOD_IS_TILE_ACTIVE:Ljava/lang/String; = "method_is_tile_active"

.field private static final PARAM_ACTIVE:Ljava/lang/String; = "param_active"

.field private static final TAG:Ljava/lang/String; = "LinkToWindowsActivityController"

.field private static final URI:Ljava/lang/String; = "content://com.microsoft.appmanager.quickSettingsProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mUserManager:Landroid/os/UserManager;

    .line 62
    iput-object p1, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isTileActive(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->getAvailabilityStatus()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.microsoft.appmanager.quickSettingsProvider"

    .line 127
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "method_is_tile_active"

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "param_active"

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "LinkToWindowsActivityController"

    const-string p1, "IllegalArgumentException"

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 5

    const-string v0, "LinkToWindowsActivityController"

    const/4 v1, 0x3

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.microsoft.deviceintegrationservice"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.microsoft.appmanager"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    return v4

    :catch_0
    const-string p0, "IllegalArgumentException"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p0, "NameNotFoundException"

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->isTileActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->link_to_windows_setting_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/LinkToWindowsActivityController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->link_to_windows_setting_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 102
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 107
    :cond_0
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.appmanager.StartUpActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LinkToWindowsActivityController"

    const-string p1, "No activity found to handle the intent"

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
