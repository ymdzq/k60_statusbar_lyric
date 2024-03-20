.class public abstract Lcom/android/systemui/fsgesture/GestureLineUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 6
    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object v2, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object v0

    .line 20
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 21
    and-int/lit8 v0, v0, 0x30

    .line 23
    const/16 v2, 0x20

    .line 25
    if-ne v0, v2, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    const/4 v0, -0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/high16 v0, -0x1000000

    .line 36
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setDefaultColor(I)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v0

    .line 48
    const v2, 0x10501f6    # @android:dimen/notification_big_picture_max_height

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    move-result v0

    .line 55
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v2

    .line 63
    const v3, 0x7f070d56    # @dimen/navigation_home_handle_width '152.0dp'

    .line 64
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result v2

    .line 70
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    const/16 v0, 0xc

    .line 76
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    const/16 v0, 0xe

    .line 81
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    invoke-virtual {p0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-object v1
    .line 89
.end method

.method public static isShowNavigationHandle(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "force_fsg_nav_bar"

    .line 6
    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p0

    .line 18
    const-string v0, "hide_gesture_line"

    .line 19
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    move-result p0

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p0, :cond_0

    .line 26
    move p0, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v1

    .line 30
    :goto_0
    if-nez p0, :cond_1

    .line 31
    move v1, v0

    .line 33
    :cond_1
    return v1
    .line 34
.end method
