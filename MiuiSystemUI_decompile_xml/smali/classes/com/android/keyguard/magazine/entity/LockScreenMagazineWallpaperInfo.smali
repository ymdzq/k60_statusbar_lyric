.class public Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;
.super Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LINK_TYPE_GENERAL:I = 0x1

.field public static final LINK_TYPE_MEDIA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockScreenMagazineWallpaperInfo"


# instance fields
.field public btnText:Ljava/lang/String;

.field public carouselDeeplink:Ljava/lang/String;

.field public entryTitle:Ljava/lang/String;

.field public globalBtnText:Ljava/lang/String;

.field public isTitleCustomized:Z

.field public linkType:I

.field public provider:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public sourceColor:Ljava/lang/String;

.field public titleClickUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->linkType:I

    .line 6
    return-void
    .line 8
.end method

.method private setCarouselDeepLink(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "deeplink"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->carouselDeeplink:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method private setEntryTitle(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "lks_entry_text"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->entryTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 10
    :catch_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->entryTitle:Ljava/lang/String;

    .line 12
    :goto_0
    return-void
    .line 14
.end method

.method private setGlobalBtnText(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "more_button_text"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->globalBtnText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 10
    :catch_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->globalBtnText:Ljava/lang/String;

    .line 12
    :goto_0
    return-void
    .line 14
.end method

.method private setLinkType(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "link_type"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->linkType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 14
    :catch_0
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->linkType:I

    .line 16
    :goto_0
    return-void
    .line 18
.end method

.method private setProvider(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "provider"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 10
    :catch_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;

    .line 12
    :goto_0
    return-void
    .line 14
.end method

.method private setSource(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "source"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 11
    :catch_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    .line 13
    :goto_0
    return-void
    .line 15
.end method

.method private setSourceColor(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "source_color"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    return-void
    .line 11
.end method

.method private setTitleClickUri(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "title_click_uri"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->titleClickUri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 11
    :catch_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->titleClickUri:Ljava/lang/String;

    .line 13
    :goto_0
    return-void
    .line 15
.end method

.method private setTitleCustomized(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string/jumbo v1, "title_customized"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move v1, v0

    .line 14
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->isTitleCustomized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_1

    .line 17
    :catch_0
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->isTitleCustomized:Z

    .line 18
    :goto_1
    return-void
    .line 20
.end method


# virtual methods
.method public initExtra()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->ex:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->ex:Ljava/lang/String;

    .line 12
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setLinkType(Lorg/json/JSONObject;)V

    .line 17
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setEntryTitle(Lorg/json/JSONObject;)V

    .line 20
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setTitleCustomized(Lorg/json/JSONObject;)V

    .line 23
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setProvider(Lorg/json/JSONObject;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setSource(Lorg/json/JSONObject;)V

    .line 29
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setSourceColor(Lorg/json/JSONObject;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setGlobalBtnText(Lorg/json/JSONObject;)V

    .line 35
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setTitleClickUri(Lorg/json/JSONObject;)V

    .line 38
    invoke-direct {p0, v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->setCarouselDeepLink(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "initExtra exception "

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "LockScreenMagazineWallpaperInfo"

    .line 53
    invoke-static {p0, v0, v1}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    return-void
    .line 58
.end method

.method public isDataEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->entryTitle:Ljava/lang/String;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public opendAd(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "wallpaperinfo"

    .line 2
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    .line 14
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->packageName:Ljava/lang/String;

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->packageName:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    :cond_0
    const-string v3, "StartActivityWhenLocked"

    .line 33
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 39
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    move v1, v4

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    const-string v3, "landingPageUrl not found : "

    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    .line 53
    invoke-static {v2, v3, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->authority:Ljava/lang/String;

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    const-string v4, "content://"

    .line 74
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->authority:Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 87
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    .line 92
    move-result-object v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v4, "tarck ad key="

    .line 100
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->key:Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v4, ";authority="

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->authority:Ljava/lang/String;

    .line 116
    invoke-static {v3, v4, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 121
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const-string v3, "key"

    .line 126
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->key:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v3, "event"

    .line 133
    const/4 v4, 0x2

    .line 135
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    new-instance v3, Landroid/os/Bundle;

    .line 139
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string/jumbo v4, "request_json"

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 150
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 157
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->authority:Ljava/lang/String;

    .line 158
    const-string v4, "recordEvent"

    .line 160
    invoke-interface {v2, v0, p0, v4, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    goto :goto_1

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    goto :goto_2

    .line 167
    :catch_1
    move-exception p0

    .line 168
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 172
    move-result-object p0

    .line 175
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 176
    goto :goto_3

    .line 179
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 180
    move-result-object p1

    .line 183
    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 184
    throw p0

    .line 187
    :cond_2
    :goto_3
    return v1
    .line 188
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "LockScreenMagazineWallpaperInfo [authority="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->authority:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", key="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->key:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", wallpaperUri="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->wallpaperUri:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", title="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", content="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", packageName="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->packageName:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", landingPageUrl="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", ex="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->ex:Ljava/lang/String;

    .line 79
    const-string v1, "]"

    .line 81
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    return-object p0
    .line 87
.end method
