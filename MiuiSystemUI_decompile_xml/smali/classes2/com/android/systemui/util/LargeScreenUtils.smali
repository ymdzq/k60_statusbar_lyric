.class public abstract Lcom/android/systemui/util/LargeScreenUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    const v0, 0x7f05006c    # @bool/config_use_large_screen_shade_header 'false'

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public static final shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    const v0, 0x7f05006d    # @bool/config_use_split_notification_shade 'false'

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method
