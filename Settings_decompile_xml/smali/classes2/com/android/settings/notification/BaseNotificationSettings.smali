.class public Lcom/android/settings/notification/BaseNotificationSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "BaseNotificationSettings.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field protected static final DEBUG:Z


# instance fields
.field protected mAllowFloat:Landroidx/preference/CheckBoxPreference;

.field protected mAllowKeyguard:Landroidx/preference/CheckBoxPreference;

.field protected mAllowLights:Landroidx/preference/CheckBoxPreference;

.field protected mAllowOngoing:Landroidx/preference/CheckBoxPreference;

.field protected mAllowSound:Landroidx/preference/CheckBoxPreference;

.field protected mAllowVibrate:Landroidx/preference/CheckBoxPreference;

.field protected mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

.field protected mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

.field protected mBackupImportance:I

.field protected mBadge:Landroidx/preference/CheckBoxPreference;

.field protected mBlock:Landroidx/preference/CheckBoxPreference;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mContext:Landroid/content/Context;

.field private mConversationId:Ljava/lang/String;

.field protected mCreated:Z

.field protected mHasNotifPermission:Z

.field protected mHasVibrator:Z

.field protected mImportance:Lmiuix/preference/DropDownPreference;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mNm:Landroid/app/NotificationManager;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mPreferenceFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPriority:Landroidx/preference/CheckBoxPreference;

.field protected mShowLegacyConfig:Z

.field protected mTargetPkg:Ljava/lang/String;

.field protected mUid:I

.field protected mUm:Landroid/os/UserManager;

.field protected mUserId:I

.field protected mVisibilityOverride:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConversationId(Lcom/android/settings/notification/BaseNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotifiSettings"

    const/4 v1, 0x3

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/BaseNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/android/settings/notification/MiuiNotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/MiuiNotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    const/16 v1, -0x3e8

    .line 164
    iput v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    .line 169
    iput-boolean v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mHasVibrator:Z

    return-void
.end method

.method private applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 346
    sget-boolean v0, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    const-string v1, "NotifiSettings"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preference activities"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " ;_;"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 349
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 350
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 351
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    if-nez v2, :cond_3

    .line 353
    sget-boolean v2, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring notification preference activity ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") for unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :cond_3
    iget-object v3, v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    .line 359
    sget-boolean v2, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 364
    :cond_4
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/settings/notification/BaseNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 365
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 366
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_2

    const-string v3, "android.intent.extra.CHANNEL_ID"

    .line 367
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public static canBlockFocus(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.incallui"

    .line 619
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.server.telecom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 6

    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 378
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 380
    aget-object v3, p2, v2

    .line 381
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x1040

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotifiSettings"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getGlobalVisibility()I
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 2

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private loadPreferencesFilter()V
    .locals 2

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.provider.extra.CHANNEL_FILTER_LIST"

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 291
    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPreferenceFilter:Ljava/util/List;

    return-void
.end method

.method private queryNotificationConfigActivities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 335
    sget-boolean v0, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/notification/BaseNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/settings/notification/BaseNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private setOverridePrefValue(I)V
    .locals 1

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->isLockScreenSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->getGlobalVisibility()I

    move-result p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_hide:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_disable:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 414
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mVisibilityOverride:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected canFloat()Z
    .locals 1

    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->canFloat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canFloat(Ljava/lang/String;)Z
    .locals 1

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->canFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canLights()Z
    .locals 1

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->canLights(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canLights(Ljava/lang/String;)Z
    .locals 1

    .line 545
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->canLights(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canShowFocus()Z
    .locals 1

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/notification/NotificationSettingsHelper;->canShowFocus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canShowKeyguard()Z
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->canShowKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canShowKeyguard(Ljava/lang/String;)Z
    .locals 1

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->canShowKeyguard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canShowOngoing()Z
    .locals 1

    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->canShowOngoing(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canShowOngoing(Ljava/lang/String;)Z
    .locals 1

    .line 553
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->canShowOngoing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canSound()Z
    .locals 1

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->canSound(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canSound(Ljava/lang/String;)Z
    .locals 1

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->canSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canVibrate()Z
    .locals 1

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->canVibrate(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected canVibrate(Ljava/lang/String;)Z
    .locals 1

    .line 537
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->canVibrate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected checkCanBeVisible(II)Z
    .locals 1

    .line 0
    const/16 p0, -0x3e8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkImportanceLockedFloatPermission()Z
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected collectConfigActivities()V
    .locals 3

    .line 328
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-direct {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->queryNotificationConfigActivities()Ljava/util/List;

    move-result-object v1

    .line 331
    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V

    return-void
.end method

.method protected getLockscreenNotificationsEnabled()Z
    .locals 2

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "NotifiSettings"

    return-object p0
.end method

.method protected isChannelBlockable(Landroid/app/NotificationChannel;)Z
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->systemApp:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/XmsfUtils;->isMipushChannel(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    invoke-static {p1}, Landroid/app/NotificationChannelCompat;->isBlockable(Landroid/app/NotificationChannel;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method protected isChannelBlocked(Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 490
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 501
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isIncludedInFilter(Ljava/lang/String;)Z
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPreferenceFilter:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 296
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isLockScreenSecure()Z
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 483
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method protected varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 595
    sget-boolean p0, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "NotifiSettings"

    .line 596
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    sget-boolean p1, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    const-string v0, "NotifiSettings"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityCreated mCreated="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mCreated:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mCreated:Z

    if-eqz p1, :cond_1

    const-string/jumbo p0, "onActivityCreated: ignoring duplicate call"

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mCreated:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    sget-boolean v1, Lcom/android/settings/notification/BaseNotificationSettings;->DEBUG:Z

    const-string v2, "NotifiSettings"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate getIntent()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", args="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    const-string p1, "No intent"

    .line 194
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->toastAndFinish()V

    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 200
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUm:Landroid/os/UserManager;

    .line 201
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mNm:Landroid/app/NotificationManager;

    const-string/jumbo v1, "packageName"

    if-eqz v0, :cond_2

    const-string/jumbo v3, "package"

    .line 203
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v3, "android.provider.extra.APP_PACKAGE"

    .line 207
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    .line 208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 209
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    :cond_4
    if-eqz v0, :cond_5

    const-string/jumbo v1, "uid"

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_5
    const-string v1, "app_uid"

    const/4 v3, -0x1

    .line 213
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    .line 215
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUserId:I

    if-eqz p1, :cond_6

    const-string/jumbo v1, "userId"

    const/16 v3, -0x2710

    .line 216
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x3e7

    if-ne v1, v3, :cond_6

    .line 217
    iput v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUserId:I

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :catch_0
    :cond_6
    iget v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    if-gez v1, :cond_7

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :catch_1
    :cond_7
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 235
    iget v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    if-ltz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_8

    goto :goto_3

    .line 241
    :cond_8
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 242
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mHasNotifPermission:Z

    :cond_9
    const-string/jumbo v1, "miui.targetPkg"

    if-eqz v0, :cond_a

    .line 245
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 246
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 247
    :cond_a
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 249
    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    .line 251
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->loadPreferencesFilter()V

    const-string/jumbo p1, "vibrator"

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_c

    .line 254
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mHasVibrator:Z

    :cond_c
    return-void

    :cond_d
    :goto_3
    const-string p1, "Missing package or uid or packageinfo"

    .line 236
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->toastAndFinish()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 261
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 262
    iget v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/MiuiNotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.provider.extra.CHANNEL_ID"

    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    const-string v4, "android.provider.extra.CONVERSATION_ID"

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 274
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 275
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 278
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/settings/notification/MiuiNotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    :cond_5
    if-eqz v2, :cond_6

    .line 281
    iput-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mConversationId:Ljava/lang/String;

    .line 283
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->loadPreferencesFilter()V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    invoke-virtual {v1}, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    const-string v0, "NotifiSettings"

    const-string v1, "Missing package or uid or packageinfo"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method protected refreshNotificationShade(Z)V
    .locals 2

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    .line 587
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    .line 588
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "app_packageName"

    .line 589
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected setActionBarTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setAggregatePrefValue(Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationSettingsHelper;->getAggregateConfig(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->aggregate_rule_group_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->aggregate_rule_group_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 433
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected setChecked(Landroidx/preference/Preference;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 317
    :cond_0
    instance-of p0, p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_1

    .line 318
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method protected setEnabled(Landroidx/preference/Preference;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected setFoldRuleValue(Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationSettingsHelper;->getFoldImportance(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->fold_rule_default:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->fold_rule_important:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->fold_rule_unimportant:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 426
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected setPrefVisible(Landroidx/preference/Preference;Z)V
    .locals 3

    if-eqz p1, :cond_4

    const-string/jumbo v0, "main_category"

    .line 300
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v1, p2, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 304
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 306
    :cond_3
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected setupVisOverridePref(I)V
    .locals 2

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setupVisOverridePref sensitive=%d"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "visibility_override"

    .line 395
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mVisibilityOverride:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 396
    invoke-direct {p0, p1}, Lcom/android/settings/notification/BaseNotificationSettings;->setOverridePrefValue(I)V

    .line 397
    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mVisibilityOverride:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    new-instance v0, Lcom/android/settings/notification/BaseNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/BaseNotificationSettings$1;-><init>(Lcom/android/settings/notification/BaseNotificationSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected startAppNotificationRuleActivity(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package"

    .line 602
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "miui.targetPkg"

    .line 603
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    .line 604
    iget v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "notification_settings_page_type"

    .line 606
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.provider.extra.CHANNEL_ID"

    .line 607
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.provider.extra.CONVERSATION_ID"

    .line 608
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ":android:show_fragment_args"

    .line 609
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "com.miui.notification"

    const-string/jumbo p2, "miui.notification.management.activity.settings.AppNotificationRuleActivity"

    .line 610
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotifiSettings"

    const-string p2, "Failed startActivityAsUser() "

    .line 614
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected toastAndFinish()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->app_not_found_dlg_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
