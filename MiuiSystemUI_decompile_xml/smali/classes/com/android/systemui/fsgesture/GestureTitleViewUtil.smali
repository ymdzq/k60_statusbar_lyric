.class public abstract Lcom/android/systemui/fsgesture/GestureTitleViewUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070394    # @dimen/gesture_title_view_margin_left_right_radius '18.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 19
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v2

    .line 27
    const v4, 0x7f0710d7    # @dimen/status_bar_height '@android:dimen/text_size_menu_header_material'

    .line 28
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p0

    .line 38
    const v4, 0x7f070396    # @dimen/gesture_title_view_notch_top '8.0dp'

    .line 39
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result p0

    .line 45
    add-int/2addr p0, v2

    .line 46
    invoke-virtual {v1, v0, p0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object p0

    .line 54
    const v2, 0x7f070395    # @dimen/gesture_title_view_margin_top '32.0dp'

    .line 55
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result p0

    .line 61
    invoke-virtual {v1, v0, p0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
    .line 68
.end method
