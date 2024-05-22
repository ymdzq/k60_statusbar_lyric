.class public final Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public ambientIndicationArea:Landroid/view/View;

.field public binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

.field public lockIconViewController:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getIndicationAreaAnimators()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    .line 2
    if-eqz p0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$indicationArea:Landroid/view/View;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$ambientIndicationArea:Landroid/view/View;

    .line 8
    filled-new-array {v0, p0}, [Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Landroid/view/View;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 41
    move-result-object v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_1
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    return-object v0

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    const-string v0, "Required value was null."

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
    .line 65
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    .line 2
    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p3, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 6
    invoke-interface {p3}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 8
    :cond_0
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$init$1;

    .line 11
    invoke-static {p0, p1, p4, p5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;)Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 19
    return-void
    .line 21
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 8
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isPaddingRelative()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 24
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    .line 28
    move-result v3

    .line 31
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 32
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 36
    move-result v1

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 40
    move-result v2

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 44
    move-result v3

    .line 47
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 48
    :goto_1
    return-object p1
    .line 51
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    .line 5
    if-eqz p0, :cond_4

    .line 7
    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$view:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 16
    const v2, 0x7f07027c    # @dimen/default_burn_in_prevention_offset '15.0dp'

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v2

    .line 27
    const v3, 0x7f07047f    # @dimen/keyguard_indication_area_padding '82.0dp'

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 31
    move-result v2

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v3

    .line 38
    const v4, 0x10502dd    # @android:dimen/toast_width

    .line 39
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v3

    .line 45
    new-instance v4, Landroid/util/Size;

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v5

    .line 51
    const v6, 0x7f070437    # @dimen/keyguard_affordance_fixed_width '105.0dp'

    .line 52
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v5

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v0

    .line 62
    const v7, 0x7f070434    # @dimen/keyguard_affordance_fixed_height '105.0dp'

    .line 63
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v0

    .line 69
    invoke-direct {v4, v5, v0}, Landroid/util/Size;-><init>(II)V

    .line 70
    invoke-direct {p1, v1, v2, v3, v4}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;-><init>(IIILandroid/util/Size;)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 76
    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 78
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 80
    const-class p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 83
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    check-cast p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 89
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v0

    .line 96
    const v1, 0x7f07043f    # @dimen/keyguard_bottom_button_tips_text_size '13.0sp'

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 104
    const/4 v2, 0x0

    .line 106
    if-eqz v1, :cond_0

    .line 107
    int-to-float v3, v0

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 113
    if-eqz v1, :cond_1

    .line 115
    int-to-float v0, v0

    .line 117
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 121
    if-nez v0, :cond_2

    .line 123
    const-string p1, "KeyguardBottomAreaInjector"

    .line 125
    const-string/jumbo v0, "updateIndicationAreaLayoutParams mIndicationArea is null"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    move-result-object v1

    .line 143
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 144
    move-result v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    move-result-object v1

    .line 154
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 155
    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 162
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 170
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    move-result-object p1

    .line 178
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 179
    move-result p1

    .line 182
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIndicationTextLayoutParams()V

    .line 186
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateAffordanceViewTipsLayoutParams()V

    .line 189
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateLeftIcon()V

    .line 192
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateRightIcon()V

    .line 195
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mUpArrow:Landroid/widget/ImageView;

    .line 198
    if-eqz p1, :cond_4

    .line 200
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 202
    if-eqz v0, :cond_3

    .line 204
    const v0, 0x7f0812e0    # @drawable/miui_default_lock_screen_up_arrow 'res/drawable-xhdpi/miui_default_lock_screen_up_arrow.webp'

    .line 206
    goto :goto_1

    .line 209
    :cond_3
    const v0, 0x7f0812e1    # @drawable/miui_default_lock_screen_up_arrow_dark 'res/drawable-xhdpi/miui_default_lock_screen_up_arrow_dark.webp'

    .line 210
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 215
    move-result-object p0

    .line 218
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_4
    return-void
    .line 222
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a00b5    # @id/ambient_indication_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->ambientIndicationArea:Landroid/view/View;

    .line 12
    return-void
    .line 14
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    const p1, 0x7f0a00b5    # @id/ambient_indication_container

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 11
    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    .line 14
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    aget p5, p2, p3

    .line 19
    const/4 v0, 0x1

    .line 21
    aget p2, p2, v0

    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 28
    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->bottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 30
    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 32
    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 34
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    .line 38
    move-result v1

    .line 41
    if-ne v1, v0, :cond_0

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    move v0, p3

    .line 45
    :goto_0
    if-eqz v0, :cond_2

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 48
    if-eqz p0, :cond_1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 52
    check-cast p0, Lcom/android/keyguard/LockIconView;

    .line 54
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->getLocationBottom()F

    .line 56
    move-result p0

    .line 59
    float-to-int p3, p0

    .line 60
    :cond_1
    sub-int/2addr p4, p5

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    move-result p0

    .line 65
    add-int/2addr p0, p2

    .line 66
    invoke-virtual {p1, p5, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    .line 67
    goto :goto_2

    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 71
    if-eqz p0, :cond_3

    .line 73
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 75
    check-cast p0, Lcom/android/keyguard/LockIconView;

    .line 77
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->getLocationTop()F

    .line 79
    move-result p0

    .line 82
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 83
    move-result-object p0

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p0

    .line 91
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 92
    move-result p2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    move-result p3

    .line 99
    sub-int/2addr p2, p3

    .line 100
    sub-int/2addr p4, p5

    .line 101
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 102
    move-result p0

    .line 105
    invoke-virtual {p1, p5, p2, p4, p0}, Landroid/view/View;->layout(IIII)V

    .line 106
    :cond_4
    :goto_2
    return-void
    .line 109
.end method
