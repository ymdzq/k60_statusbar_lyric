.class public Lcom/android/settings/DefalutApplicationLoader;
.super Ljava/lang/Object;
.source "DefalutApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;
    }
.end annotation


# static fields
.field private static final CUSTOMIZED_REGION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DefalutApplicationLoader"

.field private static sHasBeenSetDefaultBrowser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.miui.customized.region"

    const-string v1, ""

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader;->CUSTOMIZED_REGION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/android/settings/DefalutApplicationLoader;->sHasBeenSetDefaultBrowser:Z

    return-void
.end method

.method private static getConfigAppName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    .line 251
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 252
    aget-object v2, p0, v0

    .line 254
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 257
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    aget-object v3, v2, p3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v2, p3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 p0, 0x1

    .line 262
    aget-object v1, v2, p0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private static getDefaultDialerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/DefalutApplicationLoader;->getDialIntentWithTelScheme()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 119
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDialIntentWithTelScheme()Landroid/content/Intent;
    .locals 4

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, "tel"

    .line 112
    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static hasBeenSetDefaultBrowser()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/android/settings/DefalutApplicationLoader;->sHasBeenSetDefaultBrowser:Z

    return v0
.end method

.method private static isNeedLoadConfig(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo p0, "persist.sys.cota.carrier"

    const-string v0, ""

    .line 236
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lcom/android/settings/DefalutApplicationLoader;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 4

    .line 69
    invoke-static {p0}, Lcom/android/settings/DefalutApplicationLoader;->isNeedLoadConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->values()[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 74
    invoke-static {p0, v3}, Lcom/android/settings/DefalutApplicationLoader;->setDefaultApp(Landroid/content/Context;Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setDefaultApp(Landroid/content/Context;Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;)V
    .locals 4

    .line 79
    sget-object v0, Lcom/android/settings/DefalutApplicationLoader;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string/jumbo v1, "persist.sys.cota.carrier"

    const-string v2, ""

    .line 80
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->arrayID:I

    .line 79
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/DefalutApplicationLoader;->getConfigAppName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0, v0}, Lcom/android/settings/applications/DefaultAppsHelper;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    sget-object p0, Lcom/android/settings/DefalutApplicationLoader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the package is not installed or is empty:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_0
    sget-object v1, Lcom/android/settings/DefalutApplicationLoader$1;->$SwitchMap$com$android$settings$DefalutApplicationLoader$DefaultPackageConfig:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 101
    iget p1, p1, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->intentFlag:I

    invoke-static {p0, p1, v0}, Lcom/android/settings/DefalutApplicationLoader;->setDefaultOtherApp(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p0, v0}, Lcom/android/settings/DefalutApplicationLoader;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 95
    sput-boolean v2, Lcom/android/settings/DefalutApplicationLoader;->sHasBeenSetDefaultBrowser:Z

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 124
    invoke-static {p0}, Lcom/android/settings/DefalutApplicationLoader;->getDefaultDialerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setDefaultDialer(Ljava/lang/String;)Z

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DefalutApplicationLoader;->getDialIntentWithTelScheme()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 137
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    move v5, v4

    move-object v4, v3

    move v3, v2

    .line 140
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 142
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v4, :cond_2

    .line 145
    iget v8, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v5, v8, :cond_3

    .line 147
    :cond_2
    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    move v5, v4

    move-object v4, v7

    .line 150
    :cond_3
    iget v6, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-le v6, v3, :cond_4

    move v3, v6

    .line 151
    :cond_4
    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    return-void

    .line 156
    :cond_6
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DIAL"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.VIEW"

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v0, "tel"

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v3, v1, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method private static setDefaultOtherApp(Landroid/content/Context;ILjava/lang/String;)V
    .locals 13

    .line 172
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 174
    invoke-static {v0}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 177
    sget-object p0, Lcom/android/settings/DefalutApplicationLoader;->TAG:Ljava/lang/String;

    const-string p1, "Do not find such type app"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_0
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 186
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v4, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_2

    .line 190
    sget-object p0, Lcom/android/settings/DefalutApplicationLoader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot resolve activity from current intent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/high16 v4, 0x20000

    .line 194
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 197
    sget-object p0, Lcom/android/settings/DefalutApplicationLoader;->TAG:Ljava/lang/String;

    const-string p1, "ResolveInfo list is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_3
    new-array v6, v4, [Landroid/content/ComponentName;

    move v7, v2

    move v8, v7

    :goto_1
    const-string v9, "com.google.android.apps.photos"

    const/4 v10, 0x5

    if-ge v2, v4, :cond_6

    .line 204
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    if-ne v10, p1, :cond_4

    if-eqz v11, :cond_4

    .line 205
    iget-object v10, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_4

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 207
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v7, 0x1

    .line 210
    :cond_4
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v12, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v2

    .line 211
    iget v9, v11, Landroid/content/pm/ResolveInfo;->match:I

    if-le v9, v8, :cond_5

    move v8, v9

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    :cond_6
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_7

    if-ne v10, p1, :cond_7

    if-eqz v7, :cond_7

    .line 218
    invoke-virtual {p0, v9}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 222
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_8
    const-string p1, "android.intent.category.DEFAULT"

    .line 224
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p1, "android.intent.category.BROWSABLE"

    .line 225
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 226
    new-instance p1, Landroid/content/ComponentName;

    .line 227
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v0, v8, v6, p1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method
