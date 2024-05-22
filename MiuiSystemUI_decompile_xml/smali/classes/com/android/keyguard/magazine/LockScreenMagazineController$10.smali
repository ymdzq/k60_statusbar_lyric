.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$10;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 4
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 6
    sget-object v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v0

    .line 13
    const-string v1, "getTransitionInfo"

    .line 14
    invoke-static {p1, v0, v1}, Lcom/miui/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    const-string/jumbo v0, "result_json"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "initLockScreenMagazinePreRes resultJson = "

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    const-string v1, "LockScreenMagazineController"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;

    .line 50
    invoke-direct {v0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;-><init>()V

    .line 52
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 55
    iget-object v2, v2, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 57
    sget-object v3, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 61
    move-result v4

    .line 64
    invoke-static {v2, v3, v4}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 65
    move-result v2

    .line 68
    iput-boolean v2, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mIsLockScreenMagazinePkgExist:Z

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v2

    .line 74
    if-nez v2, :cond_1

    .line 75
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 77
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    const-string p1, "leftscreen_activity"

    .line 82
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 88
    invoke-static {v3, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->-$$Nest$mcheckLeftScreenActivityExist(Lcom/android/keyguard/magazine/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    iput-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreLeftScreenActivityName:Ljava/lang/String;

    .line 94
    const-string p1, "is_support_overlay"

    .line 96
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 98
    move-result p1

    .line 101
    iput-boolean p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mIsSupportLeftOverlay:Z

    .line 102
    const-string p1, "main_entry_res_icon_dark_svg"

    .line 104
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 109
    iput-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryResDarkIconName:Ljava/lang/String;

    .line 110
    const-string p1, "main_entry_res_icon_light_svg"

    .line 112
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 117
    iput-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryResLightIconName:Ljava/lang/String;

    .line 118
    const-string/jumbo p1, "trans_to_leftscreen_res_drawable"

    .line 120
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 126
    iput-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

    .line 127
    const-string p1, "leftscreen_res_drawable_preview"

    .line 129
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 134
    iput-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreLeftScreenDrawableResName:Ljava/lang/String;

    .line 135
    const-string/jumbo p1, "settings_deep_link"

    .line 137
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 143
    iput-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreSettingsDeepLink:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_1

    .line 146
    :catch_0
    move-exception p1

    .line 147
    const-string v2, "initLockScreenMagazinePreRes"

    .line 148
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 153
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 155
    sget-object v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 157
    iget-object v2, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryResDarkIconName:Ljava/lang/String;

    .line 159
    invoke-static {p1, v1, v2}, Lcom/miui/utils/PackageUtils;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 161
    move-result-object p1

    .line 164
    iput-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 167
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 169
    iget-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryResLightIconName:Ljava/lang/String;

    .line 171
    invoke-static {p0, v1, p1}, Lcom/miui/utils/PackageUtils;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 173
    move-result-object p0

    .line 176
    iput-object p0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

    .line 177
    :cond_1
    return-object v0
    .line 179
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;

    .line 2
    const-string v0, "LockScreenMagazineController"

    .line 4
    const-string v1, "initLockScreenMagazinePreRes parse complete"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 11
    iget-object v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

    .line 13
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreLeftScreenDrawableResName:Ljava/lang/String;

    .line 17
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreLeftScreenDrawableResName:Ljava/lang/String;

    .line 19
    iget-boolean v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mIsLockScreenMagazinePkgExist:Z

    .line 21
    iput-boolean v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    .line 23
    iget-object v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    iget-object v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreLeftScreenActivityName:Ljava/lang/String;

    .line 33
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreLeftScreenActivityName:Ljava/lang/String;

    .line 35
    iget-object v2, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mPreSettingsDeepLink:Ljava/lang/String;

    .line 37
    iput-object v2, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreSettingsDeeplink:Ljava/lang/String;

    .line 39
    const/4 v2, 0x0

    .line 41
    iput-boolean v2, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDisableMagazineByGlobalCarousel:Z

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 51
    iput-boolean v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 56
    iput-boolean v2, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 58
    iget-boolean v2, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    .line 60
    if-eqz v2, :cond_1

    .line 62
    iput-boolean v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDisableMagazineByGlobalCarousel:Z

    .line 64
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 66
    iget-boolean p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$MagazineResourceEntity;->mIsSupportLeftOverlay:Z

    .line 68
    iput-boolean p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeftOverlay:Z

    .line 70
    iget-boolean p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHasAttachedToWindow:Z

    .line 72
    if-eqz p1, :cond_2

    .line 74
    iget-object p1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 76
    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->onMagazineResourceInited()V

    .line 78
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 81
    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsCompleteInitiation:Z

    .line 83
    return-void
    .line 85
.end method
