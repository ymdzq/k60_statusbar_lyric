.class public Lcom/miui/maml/NotifierManager$DarkModeNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DARK_MODE:I = 0x1

.field public static final DARK_WALLPAPER_MODE:I = 0x2


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mDarkModeName:Ljava/lang/String;

.field private mDarkModeObserver:Landroid/database/ContentObserver;

.field private mDarkWallpaperModeName:Ljava/lang/String;

.field private mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

.field private mIsDarkMode:Z

.field private mIsDarkWallpaperMode:Z

.field private mIsUIModeNight:Z

.field private mMamlDarkMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    .line 8
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    .line 11
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    .line 15
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 18
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;

    .line 20
    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    .line 22
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 25
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SettingsSecure_UI_NIGHT_MODE()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 37
    return-void
    .line 39
.end method

.method public static synthetic access$200(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$400(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$500(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    .line 2
    return-void
    .line 5
.end method

.method private checkIfNeedToNotify()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    .line 14
    if-eqz v1, :cond_2

    .line 16
    or-int/lit8 v0, v0, 0x2

    .line 18
    :cond_2
    iget v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    .line 20
    if-eq v0, v1, :cond_3

    .line 22
    iput v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v2, v2, v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "maml dark mode "

    .line 36
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    const-string v0, "NotifierManager"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_3
    return-void
    .line 53
.end method

.method private updateDarkMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    iput-boolean v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    .line 20
    return-void
    .line 22
.end method

.method private updateDarkWallpaperMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    .line 15
    return-void
    .line 17
.end method

.method private updateUIModeNight(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    and-int/lit8 p1, p1, 0x30

    .line 4
    const/16 v0, 0x20

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-boolean p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0, v0, p0}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 9
    return-void
    .line 12
.end method

.method public onRegister()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    .line 31
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 54
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    .line 66
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    .line 69
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    .line 82
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    .line 85
    :cond_1
    :goto_1
    return-void
    .line 88
.end method

.method public onUnregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 27
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 38
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 41
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 43
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_1
    :goto_0
    return-void
    .line 53
.end method
