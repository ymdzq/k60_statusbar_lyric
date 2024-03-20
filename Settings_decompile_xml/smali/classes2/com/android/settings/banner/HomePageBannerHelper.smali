.class public Lcom/android/settings/banner/HomePageBannerHelper;
.super Ljava/lang/Object;
.source "HomePageBannerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;
    }
.end annotation


# static fields
.field private static final SETTINGS_NOTIFICATION_COULUMN:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$V-5chJUTrr6GD6Q8oRks-AmdN_k(Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;Lcom/android/settings/banner/BannerBean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/banner/HomePageBannerHelper;->lambda$queryAndSaveBannerOnBg$0(Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;Lcom/android/settings/banner/BannerBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VJAimS82ARXAdlZ3d9eQeXSns_s(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/banner/HomePageBannerHelper;->lambda$queryAndSaveBannerOnBg$1(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const-string v0, "id"

    const-string/jumbo v1, "text"

    const-string/jumbo v2, "priority"

    const-string/jumbo v3, "style"

    const-string v4, "action"

    const-string v5, "extras"

    const-string/jumbo v6, "summary"

    const-string v7, "icon"

    const-string/jumbo v8, "url"

    .line 61
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/banner/HomePageBannerHelper;->SETTINGS_NOTIFICATION_COULUMN:[Ljava/lang/String;

    return-void
.end method

.method private static checkPermission(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-gtz v1, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/android/settings/MiuiUtils;->isSignaturesSame(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static getArrowIcon(Ljava/lang/String;)I
    .locals 1

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 208
    sget p0, Lcom/android/settings/R$drawable;->miuix_appcompat_arrow_right:I

    return p0

    .line 206
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->btn_inline_delete:I

    return p0
.end method

.method public static getBannerIcon(Landroid/content/Context;Lcom/android/settings/banner/BannerBean;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p0, :cond_4

    .line 254
    invoke-static {p1}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    invoke-static {p1}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    sget p1, Lcom/android/settings/R$drawable;->ic_other_advanced_settings:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 264
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/settings/banner/BannerBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/banner/BannerBean;->getPkg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/MiuiUtils;->getIconDrawableById(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 272
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/banner/BannerBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/banner/BannerBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/utils/AppMarketUtils;->isPkgExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p1}, Lcom/android/settings/banner/BannerBean;->getPkg()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_3
    invoke-static {p0, v0}, Lcom/android/settings/MiuiUtils;->getBadgedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBannerIntent(Lcom/android/settings/banner/BannerBean;)Landroid/content/Intent;
    .locals 8

    .line 284
    invoke-static {p0}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 285
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getExtras()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getExtras()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 292
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 294
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v2, "&"

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 298
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    const-string v6, "="

    .line 299
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 300
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    goto :goto_2

    .line 303
    :cond_2
    aget-object v6, v5, v3

    const-string/jumbo v7, "package"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 304
    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 306
    :cond_3
    aget-object v6, v5, v3

    aget-object v5, v5, v7

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 311
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 313
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 314
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    return-object v0
.end method

.method public static isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getPriority()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/banner/BannerBean;->getArrowIcon()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private static synthetic lambda$queryAndSaveBannerOnBg$0(Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;Lcom/android/settings/banner/BannerBean;)V
    .locals 0

    .line 93
    invoke-interface {p0, p1}, Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;->onGetBanner(Lcom/android/settings/banner/BannerBean;)V

    return-void
.end method

.method private static synthetic lambda$queryAndSaveBannerOnBg$1(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/android/settings/banner/HomePageBannerHelper;->query(Landroid/content/Context;)Lcom/android/settings/banner/BannerBean;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 93
    new-instance v1, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;Lcom/android/settings/banner/BannerBean;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 97
    :cond_1
    invoke-static {p0, v0}, Lcom/android/settings/banner/HomePageBannerHelper;->saveBannerBeanToJson(Landroid/content/Context;Lcom/android/settings/banner/BannerBean;)V

    return-void
.end method

.method private static query(Landroid/content/Context;)Lcom/android/settings/banner/BannerBean;
    .locals 14

    const-string/jumbo v0, "query start ..."

    const-string v1, "HomePageBannerHelper"

    .line 139
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 142
    :cond_0
    new-instance v2, Lcom/android/settings/banner/BannerBean;

    invoke-direct {v2}, Lcom/android/settings/banner/BannerBean;-><init>()V

    .line 143
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.action.SETTINGS_NOTIFICATION_PROVIDER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 145
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 146
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v7, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 147
    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 149
    invoke-static {p0, v4}, Lcom/android/settings/banner/HomePageBannerHelper;->checkPermission(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query error: no permission, PKG = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    sget-object v10, Lcom/android/settings/banner/HomePageBannerHelper;->SETTINGS_NOTIFICATION_COULUMN:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 158
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":Cursor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_4

    if-eqz v4, :cond_1

    .line 185
    :cond_3
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 163
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    .line 165
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "priority --> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v2}, Lcom/android/settings/banner/BannerBean;->getPriority()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 168
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/settings/banner/BannerBean;->setId(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2, v6}, Lcom/android/settings/banner/BannerBean;->setAuthority(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v7}, Lcom/android/settings/banner/BannerBean;->setPkg(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setPriority(I)V

    const/4 v8, 0x1

    .line 172
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setTitle(Ljava/lang/String;)V

    const/4 v8, 0x3

    .line 173
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/banner/HomePageBannerHelper;->getArrowIcon(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setArrowIcon(I)V

    const/4 v8, 0x4

    .line 174
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setAction(Ljava/lang/String;)V

    const/4 v8, 0x5

    .line 175
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setExtras(Ljava/lang/String;)V

    const/4 v8, 0x6

    .line 176
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setSummary(Ljava/lang/String;)V

    const/4 v8, 0x7

    .line 177
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setIcon(Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 178
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/banner/BannerBean;->setUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v6

    move-object v4, v0

    .line 182
    :goto_3
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_5

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_5
    throw p0

    .line 189
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "query success: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static queryAndSaveBannerOnBg(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V
    .locals 1

    .line 85
    new-instance v0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static readBannerBean(Landroid/content/Context;)Lcom/android/settings/banner/BannerBean;
    .locals 4

    const-string/jumbo v0, "readBannerBean: start ..."

    const-string v1, "HomePageBannerHelper"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v2, "home_page_banner"

    const/4 v3, 0x0

    .line 104
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v2, "key_banner_json"

    const-string v3, ""

    .line 106
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/android/settings/banner/BannerBean;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/banner/BannerBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseJson error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readBannerBean: end -- "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static saveBannerBeanToJson(Landroid/content/Context;Lcom/android/settings/banner/BannerBean;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "home_page_banner"

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 125
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 128
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    invoke-static {p1}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 131
    :cond_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_banner_json"

    .line 132
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/banner/BannerBean;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 233
    invoke-static {p2}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    invoke-virtual {p2}, Lcom/android/settings/banner/BannerBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/settings/banner/BannerBean;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HomePageBannerHelper"

    const-string/jumbo v1, "update: "

    .line 241
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-virtual {p2}, Lcom/android/settings/banner/BannerBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "settings_notification_tips"

    .line 243
    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
