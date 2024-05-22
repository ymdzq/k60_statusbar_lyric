.class public abstract Lcom/android/systemui/statusbar/notification/NotificationUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final PKG_HOME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.miui.product.home"

    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "com.mi.android.globallauncher"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "com.miui.home"

    .line 18
    :goto_0
    sput-object v1, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static applyAppIconAllowCustom(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/widget/ImageView;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getCustomAppIcon(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isHybrid(Landroid/service/notification/StatusBarNotification;)Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 22
    move-result-object v1

    .line 25
    iget-object v2, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 26
    if-nez v2, :cond_1

    .line 28
    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 30
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 39
    :goto_1
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 42
    move-result-object v0

    .line 45
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getLargeIconDrawable(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v0

    .line 49
    :cond_2
    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v0

    .line 63
    :cond_3
    if-eqz v0, :cond_5

    .line 64
    if-eqz p3, :cond_4

    .line 66
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 68
    move-result-object p1

    .line 71
    invoke-static {p0, v0, p1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 72
    move-result-object v0

    .line 75
    :cond_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_5
    return-void
    .line 79
.end method

.method public static applyContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    return-void

    .line 7
    :cond_1
    sget-boolean v0, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 8
    if-nez v0, :cond_2

    .line 10
    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    return-void

    .line 19
    :cond_3
    invoke-static {p0}, Lcom/miui/systemui/util/MiBlurCompat;->getBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_4

    .line 24
    return-void

    .line 26
    :cond_4
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    :try_start_0
    sget-object v2, Lcom/miui/systemui/util/MiBlurCompat;->getMiBackgroundBlurRadiusMethod$delegate:Lkotlin/Lazy;

    .line 29
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/reflect/Method;

    .line 35
    if-eqz v2, :cond_5

    .line 37
    new-array v3, v1, [Ljava/lang/Object;

    .line 39
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_5
    move-object v2, v0

    .line 46
    :goto_0
    instance-of v3, v2, Ljava/lang/Integer;

    .line 47
    if-eqz v3, :cond_6

    .line 49
    check-cast v2, Ljava/lang/Integer;

    .line 51
    goto :goto_1

    .line 53
    :cond_6
    move-object v2, v0

    .line 54
    :goto_1
    if-eqz v2, :cond_7

    .line 55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    :cond_7
    move v2, v1

    .line 62
    :goto_2
    if-eqz v2, :cond_8

    .line 63
    return-void

    .line 65
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p0

    .line 69
    const v2, 0x7f070d8a    # @dimen/notification_container_blur_radius '100.0dp'

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result p0

    .line 76
    invoke-static {p0, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurRadiusCompat(ILandroid/view/View;)V

    .line 77
    :try_start_1
    sget-object p0, Lcom/miui/systemui/util/MiBlurCompat;->getMiBackgroundBlurModeMethod$delegate:Lkotlin/Lazy;

    .line 80
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 85
    check-cast p0, Ljava/lang/reflect/Method;

    .line 86
    if-eqz p0, :cond_9

    .line 88
    new-array v2, v1, [Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    goto :goto_3

    .line 96
    :cond_9
    move-object p0, v0

    .line 97
    :goto_3
    instance-of v2, p0, Ljava/lang/Integer;

    .line 98
    if-eqz v2, :cond_a

    .line 100
    move-object v0, p0

    .line 102
    check-cast v0, Ljava/lang/Integer;

    .line 103
    :cond_a
    if-eqz v0, :cond_b

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 107
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :catchall_1
    :cond_b
    const/4 p0, 0x1

    .line 111
    if-ne v1, p0, :cond_c

    .line 112
    return-void

    .line 114
    :cond_c
    const-string v0, "NotificationUtil"

    .line 115
    const-string v1, "applyContainerViewBlur"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p0, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeCompat(ILandroid/view/View;)V

    .line 122
    invoke-static {p1, p0}, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V

    .line 125
    return-void
    .line 128
.end method

.method public static applyElementViewBlend(Landroid/content/Context;Landroid/view/View;[IZ)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    return-void

    .line 7
    :cond_1
    sget-boolean v0, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 8
    if-nez v0, :cond_2

    .line 10
    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    return-void

    .line 19
    :cond_3
    invoke-static {p0}, Lcom/miui/systemui/util/MiBlurCompat;->getBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 20
    move-result p0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-void

    .line 26
    :cond_4
    new-instance p0, Lcom/android/systemui/statusbar/notification/NotificationUtil$2;

    .line 27
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationUtil$2;-><init>(Z)V

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 32
    const/4 p0, 0x1

    .line 35
    invoke-static {p0, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiViewBlurModeCompat(ILandroid/view/View;)V

    .line 36
    invoke-static {p1}, Lcom/miui/systemui/util/MiBlurCompat;->clearMiBackgroundBlendColorCompat(Landroid/view/View;)V

    .line 39
    const/high16 p0, 0x3f800000    # 1.0f

    .line 42
    invoke-static {p1, p2, p0}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlendColors(Landroid/view/View;[IF)V

    .line 44
    return-void
    .line 47
.end method

.method public static applyViewShadow(Landroid/view/View;FF)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SHADOW_SUPPORTED:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-nez p0, :cond_1

    .line 7
    return-void

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    cmpl-float v0, p2, v0

    .line 11
    if-lez v0, :cond_2

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$2;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil$2;-><init>(Z)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyViewShadowInner(Landroid/view/View;FF)V

    .line 24
    goto :goto_0

    .line 27
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyViewShadowInner(Landroid/view/View;FF)V

    .line 28
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public static applyViewShadowInner(Landroid/view/View;FF)V
    .locals 10

    .line 1
    :try_start_0
    const-string v0, "android.view.View"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-string/jumbo v1, "setMiShadow"

    .line 8
    const/4 v2, 0x5

    .line 11
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    const/4 v5, 0x0

    .line 16
    aput-object v4, v3, v5

    .line 17
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 19
    const/4 v6, 0x1

    .line 21
    aput-object v4, v3, v6

    .line 22
    const/4 v7, 0x2

    .line 24
    aput-object v4, v3, v7

    .line 25
    const/4 v8, 0x3

    .line 27
    aput-object v4, v3, v8

    .line 28
    const/4 v9, 0x4

    .line 30
    aput-object v4, v3, v9

    .line 31
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object v0

    .line 36
    new-array v1, v2, [Ljava/lang/Object;

    .line 37
    const/16 v2, 0x73

    .line 39
    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 41
    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 48
    aput-object v2, v1, v5

    .line 49
    const/4 v2, 0x0

    .line 51
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    move-result-object v2

    .line 55
    aput-object v2, v1, v6

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    move-result-object p1

    .line 61
    aput-object p1, v1, v7

    .line 62
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    move-result-object p1

    .line 67
    aput-object p1, v1, v8

    .line 68
    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    move-result-object p1

    .line 75
    aput-object p1, v1, v9

    .line 76
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 81
    :catch_0
    const-string p0, "NotificationUtil"

    .line 82
    const-string p1, "applyViewShadow setMiShadow Method not found!"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void
    .line 89
.end method

.method public static canConvert2SystemMediaNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Landroid/app/Notification;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 12
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 14
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mMediaAppWhiteList:Ljava/util/List;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 28
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaSessionToken(Landroid/service/notification/StatusBarNotification;)Landroid/media/session/MediaSession$Token;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 40
    move-result-object p0

    .line 43
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 44
    const-string v1, "android.template"

    .line 46
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result p0

    .line 57
    if-eqz p0, :cond_0

    .line 58
    const/4 p0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p0, 0x0

    .line 62
    :goto_0
    return p0
.end method

.method public static clearContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    return-void

    .line 7
    :cond_1
    const/4 p0, 0x0

    .line 8
    invoke-static {p0, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeCompat(ILandroid/view/View;)V

    .line 9
    invoke-static {p0, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurRadiusCompat(ILandroid/view/View;)V

    .line 12
    invoke-static {p1, p0}, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V

    .line 15
    return-void
    .line 18
.end method

.method public static generateInnerNotifBean(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 14
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 16
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 18
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSendSubstituteNotification(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    :goto_0
    move-object v4, v0

    .line 41
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->isSystemApp(Ljava/lang/String;)Z

    .line 42
    move-result v5

    .line 45
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mPrioritizedPackages:Ljava/util/List;

    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 48
    move-result v6

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 59
    const-class v3, Lcom/android/systemui/settings/UserTracker;

    .line 60
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/systemui/settings/UserTracker;

    .line 66
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 68
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 70
    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUserOwner(Landroid/content/Context;)Z

    .line 74
    move-result v7

    .line 77
    const/4 v9, 0x0

    .line 78
    const-string v10, "NotifiSettingsHelper"

    .line 79
    const-string v11, "content://statusbar.notification"

    .line 81
    const-string v12, "channel_id"

    .line 83
    const-string v13, "package"

    .line 85
    if-eqz v7, :cond_1

    .line 87
    invoke-virtual {v2, v0, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    move-result v0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    .line 94
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 105
    move-result-object v0

    .line 108
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 109
    move-result-object v7

    .line 112
    const-string v14, "canFloat"

    .line 113
    invoke-virtual {v0, v7, v14, v9, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 115
    move-result-object v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    const-string v2, "canShowFloat"

    .line 121
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 123
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    move v7, v0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    const-string v7, "canFloat "

    .line 132
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 143
    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_2
    const/4 v7, 0x0

    .line 147
    :goto_2
    const-string v0, "canShowOnKeyguard"

    .line 148
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 153
    check-cast v2, Lcom/android/systemui/settings/UserTracker;

    .line 154
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 156
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 158
    move-result-object v2

    .line 161
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUserOwner(Landroid/content/Context;)Z

    .line 162
    move-result v14

    .line 165
    if-eqz v14, :cond_3

    .line 166
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 168
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 170
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOnKeyguard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    move-result v0

    .line 175
    goto :goto_3

    .line 176
    :cond_3
    new-instance v14, Landroid/os/Bundle;

    .line 177
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-virtual {v14, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v14, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 188
    move-result-object v2

    .line 191
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 192
    move-result-object v15

    .line 195
    invoke-virtual {v2, v15, v0, v9, v14}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 196
    move-result-object v2

    .line 199
    if-eqz v2, :cond_4

    .line 200
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 202
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_3
    move v2, v0

    .line 206
    goto :goto_4

    .line 207
    :catch_1
    move-exception v0

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    const-string v14, "canShowKeyguard "

    .line 211
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v2

    .line 222
    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :cond_4
    const/4 v2, 0x0

    .line 226
    :goto_4
    const-string v0, "canVibrate"

    .line 227
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    move-result-object v14

    .line 232
    check-cast v14, Lcom/android/systemui/settings/UserTracker;

    .line 233
    check-cast v14, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 235
    invoke-virtual {v14}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 237
    move-result-object v14

    .line 240
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUserOwner(Landroid/content/Context;)Z

    .line 241
    move-result v15

    .line 244
    if-eqz v15, :cond_5

    .line 245
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 247
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 249
    invoke-virtual {v0, v14, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canVibrate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    move-result v0

    .line 254
    goto :goto_5

    .line 255
    :cond_5
    new-instance v15, Landroid/os/Bundle;

    .line 256
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 258
    invoke-virtual {v15, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v15, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_2
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 267
    move-result-object v14

    .line 270
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 271
    move-result-object v8

    .line 274
    invoke-virtual {v14, v8, v0, v9, v15}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 275
    move-result-object v8

    .line 278
    if-eqz v8, :cond_6

    .line 279
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 281
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 284
    :goto_5
    move v14, v0

    .line 285
    goto :goto_6

    .line 286
    :catch_2
    move-exception v0

    .line 287
    new-instance v8, Ljava/lang/StringBuilder;

    .line 288
    const-string v14, "canVibrate "

    .line 290
    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v8

    .line 301
    invoke-static {v10, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    :cond_6
    const/4 v14, 0x0

    .line 305
    :goto_6
    const-string v0, "canSound"

    .line 306
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 308
    move-result-object v8

    .line 311
    check-cast v8, Lcom/android/systemui/settings/UserTracker;

    .line 312
    check-cast v8, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 314
    invoke-virtual {v8}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 316
    move-result-object v8

    .line 319
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUserOwner(Landroid/content/Context;)Z

    .line 320
    move-result v15

    .line 323
    if-eqz v15, :cond_7

    .line 324
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 326
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 328
    invoke-virtual {v0, v8, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    move-result v0

    .line 333
    move/from16 v16, v14

    .line 334
    goto :goto_7

    .line 336
    :cond_7
    new-instance v15, Landroid/os/Bundle;

    .line 337
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 339
    invoke-virtual {v15, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v15, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_3
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 348
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 351
    move/from16 v16, v14

    .line 352
    :try_start_4
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 354
    move-result-object v14

    .line 357
    invoke-virtual {v8, v14, v0, v9, v15}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 358
    move-result-object v8

    .line 361
    if-eqz v8, :cond_8

    .line 362
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 364
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 367
    :goto_7
    move v14, v0

    .line 368
    goto :goto_9

    .line 369
    :catch_3
    move-exception v0

    .line 370
    goto :goto_8

    .line 371
    :catch_4
    move-exception v0

    .line 372
    move/from16 v16, v14

    .line 373
    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 375
    const-string v14, "canSound "

    .line 377
    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v8

    .line 388
    invoke-static {v10, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    :cond_8
    const/4 v14, 0x0

    .line 392
    :goto_9
    const-string v0, "canLights"

    .line 393
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 395
    move-result-object v3

    .line 398
    check-cast v3, Lcom/android/systemui/settings/UserTracker;

    .line 399
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 401
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 403
    move-result-object v3

    .line 406
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUserOwner(Landroid/content/Context;)Z

    .line 407
    move-result v8

    .line 410
    if-eqz v8, :cond_9

    .line 411
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 413
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 415
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canLights(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 417
    move-result v0

    .line 420
    :goto_a
    move v11, v0

    .line 421
    goto :goto_b

    .line 422
    :cond_9
    new-instance v8, Landroid/os/Bundle;

    .line 423
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 425
    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v8, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :try_start_5
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 434
    move-result-object v1

    .line 437
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 438
    move-result-object v3

    .line 441
    invoke-virtual {v1, v3, v0, v9, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 442
    move-result-object v1

    .line 445
    if-eqz v1, :cond_a

    .line 446
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 448
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 451
    goto :goto_a

    .line 452
    :catch_5
    move-exception v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    .line 454
    const-string v3, "canLights "

    .line 456
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 467
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :cond_a
    const/4 v11, 0x0

    .line 471
    :goto_b
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->canShowOngoing(Ljava/lang/String;)Z

    .line 472
    move-result v12

    .line 475
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;

    .line 476
    move-object v3, v0

    .line 478
    move v8, v2

    .line 479
    move/from16 v9, v16

    .line 480
    move v10, v14

    .line 482
    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;-><init>(Ljava/lang/String;ZZZZZZZZ)V

    .line 483
    return-object v0
    .line 486
.end method

.method public static getCustomAppIcon(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.appInfo"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    return-object v1

    .line 15
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 16
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 18
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 20
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 22
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x1

    .line 25
    if-nez v3, :cond_2

    .line 26
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mCustomAppIconPackages:Ljava/util/List;

    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    move v0, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    :goto_0
    move v0, v5

    .line 42
    :goto_1
    if-nez v0, :cond_3

    .line 43
    return-object v1

    .line 45
    :cond_3
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 46
    const-string v0, "miui.appIcon"

    .line 48
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    move-result-object p0

    .line 53
    instance-of v0, p0, Landroid/graphics/drawable/Icon;

    .line 54
    if-eqz v0, :cond_4

    .line 56
    check-cast p0, Landroid/graphics/drawable/Icon;

    .line 58
    goto :goto_2

    .line 60
    :cond_4
    move-object p0, v1

    .line 61
    :goto_2
    if-nez p0, :cond_5

    .line 62
    return-object v1

    .line 64
    :cond_5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object p0

    .line 68
    if-nez p0, :cond_6

    .line 69
    return-object v1

    .line 71
    :cond_6
    const-class p1, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 72
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 77
    check-cast p1, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 78
    const-string v0, "icon style cache missing for request: "

    .line 80
    const-string v2, "icon style cache found for request: "

    .line 82
    const-string v3, "don\'t store cache for non-BitmapDrawable in getIconStyleDrawable "

    .line 84
    iget-object v6, p1, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 86
    monitor-enter v6

    .line 88
    :try_start_0
    iget-object v7, p1, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 94
    if-nez v7, :cond_7

    .line 95
    iget-object v7, p1, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 97
    new-instance v8, Ljava/util/WeakHashMap;

    .line 99
    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    .line 101
    invoke-virtual {v7, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    :cond_7
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    iget-object p1, p1, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 108
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 113
    check-cast p1, Ljava/util/WeakHashMap;

    .line 114
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 116
    if-eqz v4, :cond_a

    .line 118
    move-object v3, p0

    .line 120
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 121
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 123
    move-result-object v3

    .line 126
    invoke-virtual {p1, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 127
    move-result v4

    .line 130
    if-eqz v4, :cond_8

    .line 131
    invoke-virtual {p1, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-result-object v4

    .line 136
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 137
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 139
    move-result-object v4

    .line 142
    check-cast v4, Landroid/graphics/Bitmap;

    .line 143
    goto :goto_3

    .line 145
    :cond_8
    move-object v4, v1

    .line 146
    :goto_3
    if-eqz v4, :cond_9

    .line 147
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 149
    move-result v6

    .line 152
    if-nez v6, :cond_9

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 166
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 167
    goto :goto_4

    .line 170
    :cond_9
    invoke-static {p0, v5}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    move-result-object v2

    .line 174
    invoke-static {v2}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 175
    move-result-object v4

    .line 178
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 179
    invoke-direct {v2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 198
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 199
    :goto_4
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 204
    move-result-object p1

    .line 207
    invoke-direct {p0, p1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 208
    move-object v1, p0

    .line 211
    goto :goto_5

    .line 212
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 225
    invoke-static {p0, v5}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    .line 228
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    goto :goto_5

    .line 232
    :catch_0
    move-exception p0

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    const-string v0, "llegalArgumentException--x + width must be <= bitmap.width() e: "

    .line 236
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 241
    move-result-object p0

    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p0

    .line 251
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 252
    :goto_5
    return-object v1

    .line 255
    :catchall_0
    move-exception p0

    .line 256
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    throw p0
    .line 258
.end method

.method public static getFoldReason(Landroid/service/notification/StatusBarNotification;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    const-string v0, "fold_reason"

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public static getLargeIconDrawable(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p1

    .line 26
    iget-object p0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 27
    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 29
    return-object v0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    move-result-object p0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 7
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "Error getPackageUid "

    .line 15
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    const-string p1, "NotificationUtil"

    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v0
    .line 32
.end method

.method public static getSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;IZ)Landroid/graphics/drawable/Icon;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_4

    .line 4
    sget-boolean p2, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 6
    if-eqz p2, :cond_4

    .line 8
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 10
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 17
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 21
    move-result-object p2

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 25
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 27
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 29
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSendSubstituteNotification(Ljava/lang/String;)Z

    .line 31
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 60
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 66
    :goto_1
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    move-result p2

    .line 70
    if-nez p2, :cond_3

    .line 71
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 73
    move-result-object p2

    .line 76
    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 77
    const-string v2, "miui.isGrayscaleIcon"

    .line 79
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    move-result p2

    .line 84
    if-nez p2, :cond_3

    .line 85
    move p2, v0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move p2, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    :goto_2
    const-class p2, Lcom/miui/systemui/SettingsManager;

    .line 91
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object p2

    .line 96
    check-cast p2, Lcom/miui/systemui/SettingsManager;

    .line 97
    iget-boolean p2, p2, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 99
    :goto_3
    if-eqz p2, :cond_11

    .line 101
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 103
    move-result-object p2

    .line 106
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 107
    move-result-object p2

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 111
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 113
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 115
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 117
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSendSubstituteNotification(Ljava/lang/String;)Z

    .line 119
    move-result v2

    .line 122
    if-eqz v2, :cond_5

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    move-result v2

    .line 128
    if-nez v2, :cond_5

    .line 129
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 131
    move-result-object p2

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 136
    :goto_4
    sget-object v2, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 140
    move-result-object v3

    .line 143
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getCustomAppIcon(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 144
    move-result-object v3

    .line 147
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 148
    const/4 v5, 0x0

    .line 150
    if-eqz v4, :cond_7

    .line 151
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 153
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 155
    move-result-object v3

    .line 158
    if-eqz v3, :cond_7

    .line 159
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 161
    move-result v4

    .line 164
    if-eqz v4, :cond_6

    .line 165
    goto :goto_5

    .line 167
    :cond_6
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 168
    move-result-object v3

    .line 171
    goto :goto_6

    .line 172
    :cond_7
    :goto_5
    move-object v3, v5

    .line 173
    :goto_6
    if-eqz v3, :cond_8

    .line 174
    return-object v3

    .line 176
    :cond_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isHybrid(Landroid/service/notification/StatusBarNotification;)Z

    .line 177
    move-result v3

    .line 180
    if-nez v3, :cond_9

    .line 181
    goto :goto_8

    .line 183
    :cond_9
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 184
    move-result-object v3

    .line 187
    iget-object v4, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 188
    if-nez v4, :cond_b

    .line 190
    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 192
    move-result-object v3

    .line 195
    if-eqz v3, :cond_a

    .line 196
    goto :goto_7

    .line 198
    :cond_a
    move v0, v1

    .line 199
    :cond_b
    :goto_7
    if-nez v0, :cond_c

    .line 200
    goto :goto_8

    .line 202
    :cond_c
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 203
    move-result-object v0

    .line 206
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getLargeIconDrawable(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 207
    move-result-object v0

    .line 210
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 211
    if-eqz v1, :cond_e

    .line 213
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 215
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 217
    move-result-object v0

    .line 220
    if-eqz v0, :cond_e

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 223
    move-result v1

    .line 226
    if-eqz v1, :cond_d

    .line 227
    goto :goto_8

    .line 229
    :cond_d
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 230
    move-result-object v5

    .line 233
    :cond_e
    :goto_8
    if-eqz v5, :cond_f

    .line 234
    return-object v5

    .line 236
    :cond_f
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 237
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 241
    move-result v0

    .line 244
    if-gez v0, :cond_10

    .line 245
    goto :goto_9

    .line 247
    :cond_10
    move p1, v0

    .line 248
    :goto_9
    const-class v0, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 249
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 254
    check-cast v0, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 255
    invoke-virtual {v0, p1, p2}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 257
    move-result-object p1

    .line 260
    if-eqz p1, :cond_11

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 263
    move-result p2

    .line 266
    if-nez p2, :cond_11

    .line 267
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 269
    move-result-object p0

    .line 272
    return-object p0

    .line 273
    :cond_11
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 274
    move-result-object p0

    .line 277
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 278
    move-result-object p0

    .line 281
    return-object p0
    .line 282
.end method

.method public static getTargetPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    const-string p0, ""

    .line 4
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, "com.miui.hybrid"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 19
    move-result-object v1

    .line 22
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 27
    move-result-object v1

    .line 30
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 31
    const-string v2, "miui.category"

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    return-object v1

    .line 45
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 46
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 48
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSendSubstituteNotification(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    return-object v0

    .line 56
    :cond_2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 61
    move-result-object p0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_3
    return-object v0
    .line 76
.end method

.method public static hasProgressbar(Landroid/app/Notification;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v0, "android.progressMax"

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 10
    const-string v2, "android.progressIndeterminate"

    .line 11
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 13
    move-result p0

    .line 16
    if-nez v0, :cond_0

    .line 17
    if-eqz p0, :cond_1

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 21
    :cond_1
    return v1
    .line 22
.end method

.method public static isBackgroundBlurOpened(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    sget-boolean v1, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 6
    if-nez v1, :cond_1

    .line 8
    return v0

    .line 10
    :cond_1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    return v0

    .line 17
    :cond_2
    invoke-static {p0}, Lcom/miui/systemui/util/MiBlurCompat;->getBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public static isCustomViewNotification(Landroid/app/Notification;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCustomViewNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Landroid/app/Notification;)Z

    move-result p0

    return p0
.end method

.method public static isEmptySummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    move p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    move p1, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move p1, v1

    .line 31
    :goto_1
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 32
    if-nez v2, :cond_2

    .line 34
    return p1

    .line 36
    :cond_2
    if-eqz p1, :cond_3

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 39
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerInjectorKt;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    .line 41
    move-result p0

    .line 44
    if-eqz p0, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    move v0, v1

    .line 48
    :goto_2
    return v0
    .line 49
.end method

.method public static isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    const-string v0, "miui.unimportant"

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public static isFoldEntrance(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    const-string v0, "miui_unimportant"

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public static isHybrid(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const-string v0, "com.miui.hybrid"

    .line 4
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public static isMissedCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    const-string v2, "com.android.phone"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    const-string v2, "com.android.server.telecom"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    :cond_1
    const-string v1, "missed_call"

    .line 26
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    const/4 v0, 0x1

    .line 38
    :cond_2
    return v0
    .line 39
.end method

.method public static isMostImportantNotification(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isGlobalInCallNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z

    .line 14
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 20
    const-string p1, "com.android.deskclock"

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
    .line 34
.end method

.method public static isUidSystem(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/16 v1, 0x3e9

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    if-nez p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public static isUserOwner(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public static resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.text"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    const-string v0, "android.bigText"

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 16
    move-result-object v0

    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, ""

    .line 23
    :goto_0
    return-object v0
    .line 25
.end method

.method public static resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.title"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    const-string v0, "android.title.big"

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 16
    move-result-object v0

    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, ""

    .line 23
    :goto_0
    return-object v0
    .line 25
.end method

.method public static setFold(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isFold:Z

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 7
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 9
    move-result-object p0

    .line 12
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 13
    const-string v0, "miui.unimportant"

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    return-void
    .line 20
.end method

.method public static shouldSubstituteSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    xor-int/2addr v0, v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 28
    move-result-object p0

    .line 31
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 32
    const-string v0, "miui.isGrayscaleIcon"

    .line 34
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    move v1, v2

    .line 43
    :goto_0
    return v1

    .line 44
    :cond_2
    :goto_1
    const-class p0, Lcom/miui/systemui/SettingsManager;

    .line 45
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Lcom/miui/systemui/SettingsManager;

    .line 51
    iget-boolean p0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 53
    return p0
    .line 55
.end method

.method public static shouldSuppressFold()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->MIUI_LITE_V2:Z

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
    return v0
    .line 14
.end method

.method public static startNotificationFoldSettingsActivity()V
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 13
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 15
    new-instance v2, Landroid/content/ComponentName;

    .line 18
    const-string v3, "com.miui.notification"

    .line 20
    const-string v4, "miui.notification.management.activity.settings.FoldSettingActivity"

    .line 22
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    const-string v2, "android.intent.category.LAUNCHER"

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v2, "fold_or_aggregate_settings"

    .line 35
    const-string v3, "fold"

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/high16 v2, 0x4000000

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    const/high16 v2, 0x10000000

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->context:Landroid/content/Context;

    .line 52
    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    invoke-static {v0, v1}, Lcom/miui/utils/IntentUtils;->transformToSplitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 60
    move-result-object v1

    .line 63
    :cond_0
    const-class v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 64
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    new-instance v2, Lcom/miui/systemui/events/ClickShortcutEvent;

    .line 75
    const-string v3, "fold-settings"

    .line 77
    invoke-direct {v2, v3}, Lcom/miui/systemui/events/ClickShortcutEvent;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 82
    invoke-interface {v0, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 84
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 87
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 93
    const/4 v2, 0x1

    .line 95
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 96
    return-void
    .line 99
.end method
