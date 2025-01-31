.class public Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationAccessDetails.java"


# instance fields
.field protected mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppsControlDisallowedBySystem:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mIsNls:Z

.field private mNm:Lcom/android/settings/notification/NotificationBackend;

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field protected mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mServiceName:Ljava/lang/CharSequence;

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$4J6GkvNGAatvs3-J89HcBrxehzY(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$enable$6(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7pZwC5ZSUWUPB6T5GyuwM4QnUo(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$onResume$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$axaC15TDPLW3NrZbauERF3DWtmo(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$disable$4(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cQH0xqVmJeSdlPVM_yia0rwXcqg(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$enable$5(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oeiDRapGAq5obuFWhTbYtlOy1XA(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$onAttach$0(Lcom/android/settings/notification/NotificationBackend;ILcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vUPgnssPv8AvNDHV0-a0ZgOk61w(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$onAttach$1(Lcom/android/settings/notification/NotificationBackend;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wv_26io_aYALVdQ9YBaKOIDdSwc(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$disable$3(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private hasInteractAcrossUsersPermission()Z
    .locals 5

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getInitialCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "NotifAccessDetails"

    if-eqz v1, :cond_0

    const-string p0, "Not able to get calling package name for permission check"

    .line 242
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not have required permission "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$disable$3(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private static synthetic lambda$disable$4(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V
    .locals 1

    .line 265
    new-instance v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda6;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$enable$5(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 278
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private static synthetic lambda$enable$6(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V
    .locals 1

    .line 277
    new-instance v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda5;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onAttach$0(Lcom/android/settings/notification/NotificationBackend;ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 136
    instance-of v0, p3, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    if-eqz v0, :cond_0

    .line 137
    check-cast p3, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    .line 139
    invoke-virtual {p3, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 140
    invoke-virtual {p1, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 141
    invoke-virtual {p1, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setServiceInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 142
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p0

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setTargetSdk(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttach$1(Lcom/android/settings/notification/NotificationBackend;ILjava/util/List;)V
    .locals 1

    .line 135
    new-instance v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;I)V

    invoke-interface {p3, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onResume$2(Landroidx/preference/Preference;)Z
    .locals 2

    .line 189
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "package"

    .line 190
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 192
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    .line 191
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsSettings;

    .line 195
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->notif_listener_excluded_app_screen_title:I

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 199
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public disable(Landroid/content/ComponentName;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 261
    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    .line 262
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->disable(Landroid/content/ComponentName;)V

    .line 263
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda4;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected enable(Landroid/content/ComponentName;)V
    .locals 2

    .line 272
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 273
    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    .line 274
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->enable(Landroid/content/ComponentName;)V

    .line 275
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "NotifAccessDetails"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x70c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 310
    sget p0, Lcom/android/settings/R$xml;->notification_access_permission_details:I

    return p0
.end method

.method protected loadNotificationListenerService()V
    .locals 4

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    .line 287
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x84

    iget v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 295
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 296
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    .line 300
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceName:Ljava/lang/CharSequence;

    .line 301
    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 321
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x66

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->enable(Landroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->retrieveAppEntry()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->loadNotificationListenerService()V

    .line 97
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0x1f

    .line 104
    :goto_0
    const-class v2, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 105
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setPkgInfo(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 106
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    .line 107
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setNm(Landroid/app/NotificationManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 108
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setPm(Landroid/content/pm/PackageManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v2

    .line 109
    invoke-virtual {v2, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setParent(Landroidx/preference/PreferenceFragmentCompat;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    .line 110
    const-class v2, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    .line 111
    invoke-virtual {v2, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setFragment(Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 112
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setPackageInfo(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setPm(Landroid/content/pm/PackageManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceName:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setServiceName(Ljava/lang/CharSequence;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object v2

    .line 115
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setBluetoothManager(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object p1

    const-string v2, "companiondevice"

    .line 117
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setCdm(Landroid/companion/ICompanionDeviceManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 118
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 119
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    .line 120
    const-class p1, Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;->setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 122
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 123
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;->setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;

    move-result-object p1

    .line 124
    invoke-virtual {p1, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;->setTargetSdk(I)Lcom/android/settings/applications/specialaccess/notificationaccess/PreUpgradePreferenceController;

    .line 125
    const-class p1, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    .line 126
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;->setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 127
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 128
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;->setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;->setTargetSdk(I)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    .line 130
    const-class p1, Lcom/android/settings/applications/specialaccess/notificationaccess/MoreSettingsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/specialaccess/notificationaccess/MoreSettingsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 131
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/MoreSettingsPreferenceController;->setPackage(Ljava/lang/String;)Lcom/android/settings/applications/specialaccess/notificationaccess/MoreSettingsPreferenceController;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 132
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/MoreSettingsPreferenceController;->setPackageManager(Landroid/content/pm/PackageManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/MoreSettingsPreferenceController;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p1

    new-instance v2, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;I)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 175
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    const-string/jumbo v2, "no_control_apps"

    .line 176
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 178
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mAppsControlDisallowedBySystem:Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsLinkPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method protected refreshUi()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    const-string v2, "NotifAccessDetails"

    if-nez v0, :cond_0

    const-string p0, "No component name provided"

    .line 157
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    if-nez v0, :cond_1

    const-string p0, "Provided component name is not an NLS"

    .line 162
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "NLSes aren\'t allowed in work profiles"

    .line 167
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected retrieveAppEntry()V
    .locals 4

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "package"

    .line 208
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_4

    const-string v1, "android.intent.extra.user_handle"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->hasInteractAcrossUsersPermission()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 219
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    goto :goto_2

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_2

    .line 224
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 228
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    const v3, 0x8001200

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
