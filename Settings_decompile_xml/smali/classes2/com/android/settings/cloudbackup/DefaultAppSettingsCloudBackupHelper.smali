.class public Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;
.super Ljava/lang/Object;
.source "DefaultAppSettingsCloudBackupHelper.java"


# static fields
.field private static mPm:Landroid/content/pm/PackageManager;

.field private static mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mUserId:I

    return-void
.end method

.method private static getDefaultAppData(I)Ljava/lang/String;
    .locals 2

    .line 164
    invoke-static {p0}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 166
    sget-object v0, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 168
    invoke-static {p0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->isResolveInfoValid(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static isAppExist(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 239
    :try_start_0
    sget-object v1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkgName not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DefaultAppCloudBackupHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PkgNameNotFoundException"

    .line 242
    invoke-static {p0}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isResolveInfoValid(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 248
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "CKDefaultHome"

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->setDefaultApp(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "CKDefaultPhone"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    sget v1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mUserId:I

    invoke-static {p0, v0, v1}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_2
    const-string v0, "CKDefaultSms"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 125
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    :cond_3
    const-string p0, "CKDefaultBrowser"

    .line 129
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->isAppExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    sget-object v0, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    sget v1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mUserId:I

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_4
    const-string p0, "CKDefaultCamera"

    .line 136
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    .line 138
    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->setDefaultApp(Ljava/lang/String;I)V

    :cond_5
    const-string p0, "CKDefaultGallery"

    .line 141
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 143
    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->setDefaultApp(Ljava/lang/String;I)V

    :cond_6
    const-string p0, "CKDefaultMusic"

    .line 146
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 148
    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->setDefaultApp(Ljava/lang/String;I)V

    :cond_7
    const-string p0, "CKDefaultEmail"

    .line 151
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 152
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    .line 153
    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->setDefaultApp(Ljava/lang/String;I)V

    :cond_8
    const-string p0, "CKDefaultVideo"

    .line 156
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 157
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    .line 158
    invoke-static {p0, p1}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->setDefaultApp(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 46
    :try_start_0
    invoke-static {v1}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->getDefaultAppData(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CKDefaultHome"

    .line 48
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_0
    sget v2, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mUserId:I

    invoke-static {p0, v2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CKDefaultPhone"

    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 v1, 0x1

    .line 58
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CKDefaultSms"

    .line 60
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_2
    sget-object p0, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    sget v1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mUserId:I

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CKDefaultBrowser"

    .line 66
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const/4 p0, 0x4

    .line 70
    invoke-static {p0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->getDefaultAppData(I)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CKDefaultCamera"

    .line 72
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const/4 p0, 0x5

    .line 76
    invoke-static {p0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->getDefaultAppData(I)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CKDefaultGallery"

    .line 78
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const/4 p0, 0x6

    .line 82
    invoke-static {p0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->getDefaultAppData(I)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CKDefaultMusic"

    .line 84
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const/4 p0, 0x7

    .line 88
    invoke-static {p0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->getDefaultAppData(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "CKDefaultEmail"

    .line 90
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const/16 p0, 0x8

    .line 94
    invoke-static {p0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->getDefaultAppData(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CKDefaultVideo"

    .line 96
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DefaultAppCloudBackupHelper"

    const-string v1, "Build JSON failed."

    .line 99
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException()V

    :cond_8
    :goto_0
    return-object v0
.end method

.method private static setDefaultApp(Ljava/lang/String;I)V
    .locals 11

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DefaultAppCloudBackupHelper"

    if-eqz v0, :cond_0

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDefaultApp, data is null, type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 184
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 185
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    sget-object v3, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component not exist, data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", type: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_1
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object p0

    .line 193
    invoke-static {p0}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 195
    sget-object v2, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 196
    invoke-static {v2}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->isResolveInfoValid(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 198
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 204
    :cond_3
    sget-object v2, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x20000

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 205
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    new-array v5, v2, [Landroid/content/ComponentName;

    move v6, v4

    :goto_0
    if-ge v4, v2, :cond_5

    .line 209
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 210
    invoke-static {v7}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->isResolveInfoValid(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 211
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v5, v4

    .line 213
    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v6, :cond_4

    move v6, v7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.category.DEFAULT"

    .line 219
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 220
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-nez v1, :cond_6

    .line 224
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 226
    sget-object p1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.no.such.packagename.no.such.class"

    const-string v3, "com.no.such.packagename"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v6, v5, v1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 228
    sget-object p1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 230
    sget-object p1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 233
    :cond_7
    :goto_1
    sget-object p1, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0, v6, v5, v0}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method
