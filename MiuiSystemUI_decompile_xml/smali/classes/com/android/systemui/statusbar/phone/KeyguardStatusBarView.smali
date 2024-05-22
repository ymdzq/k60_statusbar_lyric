.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mBatteryCharging:Z

.field public final mClipRect:Landroid/graphics/Rect;

.field public mCutoutSideNudge:I

.field public mCutoutSpace:Landroid/view/View;

.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field public final mEmptyTintRect:Ljava/util/ArrayList;

.field public mIsPrivacyDotEnabled:Z

.field public mKeyguardUserAvatarEnabled:Z

.field public mKeyguardUserSwitcherEnabled:Z

.field public mLayoutState:I

.field public mMinDotWidth:I

.field public mMultiUserAvatar:Landroid/widget/ImageView;

.field public mPadding:Landroid/util/Pair;

.field public mStatusIconArea:Landroid/view/ViewGroup;

.field public mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

.field public mSystemIconsContainer:Landroid/view/View;

.field public mSystemIconsSwitcherHiddenExpandedMargin:I

.field public mTopClipping:I

.field public mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p2

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    .line 19
    new-instance v0, Landroid/util/Pair;

    .line 21
    invoke-direct {v0, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 26
    new-instance p2, Landroid/graphics/Rect;

    .line 28
    invoke-direct {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 33
    return-void
    .line 35
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isKeyguardUserAvatarEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserAvatarEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public final loadDimens()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0711ee    # @dimen/system_icons_switcher_hidden_expanded_margin '16.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v1

    .line 12
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 13
    const v1, 0x7f0710ef    # @dimen/status_bar_padding_end '3.0px'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    const v1, 0x7f070e33    # @dimen/ongoing_appops_dot_min_padding '0.0dp'

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 27
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    .line 28
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 33
    const v2, 0x7f0702cf    # @dimen/display_cutout_margin_consumption '0.0px'

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    .line 41
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p0

    .line 50
    const v1, 0x111003e    # @android:bool/config_battery_percentage_setting_available

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 54
    const p0, 0x7f07102c    # @dimen/rounded_corner_content_padding '@android:dimen/select_dialog_drawable_padding_start_material'

    .line 57
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    return-void
    .line 63
.end method

.method public miuiOnAttachedToWindow()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    const v1, 0x7f070d04    # @dimen/multi_user_avatar_keyguard_size '22.0dp'

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result v0

    .line 26
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 27
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 41
    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v1

    .line 48
    const v2, 0x7f0710f1    # @dimen/status_bar_padding_top '0.0dp'

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    move-result v1

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 58
    move-result v2

    .line 61
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 64
    move-result v3

    .line 67
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 71
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 73
    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 77
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 79
    move-result v1

    .line 82
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 83
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 85
    move-result v2

    .line 88
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 89
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 91
    move-result v3

    .line 94
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateKeyguardStatusBarHeight()V

    .line 98
    return-void
    .line 101
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 2
    return-void
    .line 5
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a093f    # @id/system_icons_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 12
    const v0, 0x7f0a066f    # @id/multi_user_avatar

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0a0475    # @id/keyguard_carrier_text

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 34
    const v1, 0x7f0a0120    # @id/battery

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 43
    const v0, 0x7f0a0280    # @id/cutout_space_view

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 52
    const v0, 0x7f0a08ed    # @id/status_icon_area

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 63
    const v0, 0x7f0a08dd    # @id/statusIcons

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 74
    const v0, 0x7f0a0a49    # @id/user_switcher_container

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    .line 83
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    .line 85
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v0

    .line 92
    const v1, 0x7f05002c    # @bool/config_enablePrivacyDot 'true'

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 96
    move-result v0

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 102
    return-void
    .line 105
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 5
    iget p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 9
    move-result p3

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 13
    move-result p4

    .line 16
    const/4 p5, 0x0

    .line 17
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 23
    return-void
    .line 26
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    const-string v0, "KeyguardStatusBarView#onMeasure"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    return-void
    .line 13
.end method

.method public final onThemeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    .line 2
    return-void
    .line 5
.end method

.method public setDarkStyle(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setTopClipping(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 14
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public setUserSwitcherEnabled(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 16
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 31
    const/high16 p1, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 39
    :goto_0
    return-void
    .line 42
.end method

.method public updateIconsAndTextColors()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateKeyguardStatusBarHeight()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    .line 10
    move-result v1

    .line 13
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void
    .line 19
.end method

.method public updateLayoutParamsForCutout()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 11
    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    .line 15
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 23
    invoke-static {v0, v3}, Lcom/android/systemui/ScreenDecorations;->boundsFromDirection(Landroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    .line 25
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 28
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 41
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    .line 43
    add-int/2addr v4, v5

    .line 45
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 46
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 48
    sub-int/2addr v4, v5

    .line 50
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 53
    move-result v4

    .line 56
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 59
    move-result v0

    .line 62
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 63
    const/16 v0, 0xd

    .line 65
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object p0

    .line 75
    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    const/16 v0, 0x11

    .line 78
    const v3, 0x7f0a0280    # @id/cutout_space_view

    .line 80
    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83
    const/4 v0, -0x1

    .line 86
    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 87
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 89
    return v2
    .line 92
.end method

.method public updateLayoutParamsNoCutout()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const/16 v1, 0x8

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    const/16 v0, 0x11

    .line 28
    const v1, 0x7f0a04a2    # @id/keyguard_status_bar_left_side

    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 33
    const/4 p0, 0x1

    .line 36
    return p0
    .line 37
.end method

.method public final updateSystemIconsLayoutParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    .line 18
    move-result v2

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public final updateWindowInsets(Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;)Landroid/view/WindowInsets;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 5
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 9
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateKeyguardStatusBarHeight()V

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 18
    if-nez v1, :cond_0

    .line 20
    move v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 24
    move-result-object v1

    .line 27
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForCurrentRotation()Landroid/util/Pair;

    .line 30
    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 34
    new-instance v2, Landroid/util/Pair;

    .line 36
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 38
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v3

    .line 47
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 51
    const v5, 0x7f0710f0    # @dimen/status_bar_padding_start '3.0px'

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    move-result v4

    .line 58
    add-int/2addr v4, v3

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 64
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 66
    check-cast v4, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v4

    .line 73
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v5

    .line 77
    const v6, 0x7f0710ef    # @dimen/status_bar_padding_end '3.0px'

    .line 78
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 81
    move-result v5

    .line 84
    add-int/2addr v5, v4

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v4

    .line 89
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 93
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    .line 95
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    .line 101
    if-eqz v2, :cond_1

    .line 103
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 107
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 109
    check-cast v3, Ljava/lang/Integer;

    .line 111
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 113
    move-result v3

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 117
    move-result v2

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 122
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 124
    check-cast v2, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v2

    .line 131
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    .line 132
    move-result v3

    .line 135
    if-nez v3, :cond_2

    .line 136
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    .line 138
    if-eqz v3, :cond_2

    .line 140
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    .line 142
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 144
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 146
    check-cast v4, Ljava/lang/Integer;

    .line 148
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 150
    move-result v4

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 154
    move-result v3

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 159
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 161
    check-cast v3, Ljava/lang/Integer;

    .line 163
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 165
    move-result v3

    .line 168
    :goto_2
    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 172
    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->currentRotationHasCornerCutout()Z

    .line 176
    move-result p2

    .line 179
    if-eqz p2, :cond_3

    .line 180
    goto :goto_3

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsForCutout()Z

    .line 183
    move-result p2

    .line 186
    goto :goto_4

    .line 187
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    .line 188
    move-result p2

    .line 191
    :goto_4
    if-eqz p2, :cond_5

    .line 192
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 194
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 197
    move-result-object p0

    .line 200
    return-object p0
    .line 201
.end method
