.class public Lcom/android/systemui/wallet/ui/WalletView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActionButton:Landroid/widget/Button;

.field public final mAnimationTranslationX:F

.field public final mAppButton:Landroid/widget/Button;

.field public final mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

.field public final mCardCarouselContainer:Landroid/view/ViewGroup;

.field public final mCardLabel:Landroid/widget/TextView;

.field public mDeviceLockedActionOnClickListener:Landroid/view/View$OnClickListener;

.field public final mEmptyStateView:Landroid/view/ViewGroup;

.field public final mErrorView:Landroid/widget/TextView;

.field public mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mIcon:Landroid/widget/ImageView;

.field public mIsDeviceLocked:Z

.field public mIsUdfpsEnabled:Z

.field public final mOutInterpolator:Landroid/view/animation/Interpolator;

.field public mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

.field public final mToolbarAppButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallet/ui/WalletView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    const p2, 0x7f0d03fa    # @layout/wallet_fullscreen 'res/layout/wallet_fullscreen.xml'

    .line 5
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0a01c5    # @id/card_carousel_container

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    const p2, 0x7f0a01c4    # @id/card_carousel

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 8
    iput-object p0, p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    const v0, 0x7f0a0412    # @id/icon

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a04ac    # @id/label

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0a96    # @id/wallet_app_button

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    const v0, 0x7f0a0a99    # @id/wallet_toolbar_app_button

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    const v0, 0x7f0a0a95    # @id/wallet_action_button

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    const v0, 0x7f0a033f    # @id/error_view

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    const v0, 0x7f0a0a97    # @id/wallet_empty_state

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    const v0, 0x10c0002    # @android:interpolator/accelerate_cubic

    .line 16
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mOutInterpolator:Landroid/view/animation/Interpolator;

    .line 17
    invoke-virtual {p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->getCardWidthPx()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAnimationTranslationX:F

    return-void
.end method

.method public static getLabelText(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    check-cast p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 4
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    if-nez v0, :cond_0

    .line 12
    move-object v0, v1

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    const-string v2, "\\n"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    array-length v2, v0

    .line 25
    const/4 v3, 0x2

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    const/4 p0, 0x0

    .line 29
    aget-object p0, v0, p0

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 33
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    .line 35
    move-result-object p0

    .line 38
    if-nez p0, :cond_2

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    move-object v1, p0

    .line 42
    :goto_0
    move-object p0, v1

    .line 43
    :goto_1
    return-object p0
    .line 44
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    check-cast p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v1, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 28
    const-wide/16 v2, 0x64

    .line 31
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 33
    invoke-interface {p0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 35
    :cond_1
    return p1
    .line 38
.end method

.method public getActionButton()Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 2
    return-object p0
    .line 4
.end method

.method public getAppButton()Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCardCarousel()Lcom/android/systemui/wallet/ui/WalletCardCarousel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCardCarouselContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCardLabel()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getEmptyStateView()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public getErrorView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/systemui/wallet/ui/WalletView;->getLabelText(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 6
    move-object v2, p1

    .line 8
    check-cast v2, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 9
    iget-object v2, v2, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    const v4, 0x1120026    # @android:^attr-private/colorAccentPrimary

    .line 16
    invoke-static {v1, v4, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 19
    move-result v1

    .line 22
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 23
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    .line 26
    iget-boolean v4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    .line 28
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/systemui/wallet/ui/WalletView;->renderActionButton(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;ZZ)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    if-nez p2, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    check-cast p1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    check-cast p2, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 45
    invoke-virtual {p2}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 54
    :goto_0
    if-eqz v3, :cond_2

    .line 55
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 57
    const/high16 p2, 0x3f800000    # 1.0f

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 69
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setAlpha(F)V

    .line 71
    goto :goto_1

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 95
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setAlpha(F)V

    .line 97
    :goto_1
    return-void
    .line 100
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 7
    move-result p0

    .line 10
    iget p2, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mExpectedViewWidth:I

    .line 11
    if-ne p2, p0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iput p0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mExpectedViewWidth:I

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    move-result-object p3

    .line 25
    iget p4, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 26
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p3

    .line 33
    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p3

    .line 37
    int-to-float p3, p3

    .line 38
    const p4, 0x3f30a3d7    # 0.69f

    .line 39
    mul-float/2addr p3, p4

    .line 42
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 43
    move-result p3

    .line 46
    iput p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    .line 47
    int-to-float p3, p3

    .line 49
    const p4, 0x3fcba2e9

    .line 50
    div-float/2addr p3, p4

    .line 53
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 54
    move-result p3

    .line 57
    iput p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardHeightPx:I

    .line 58
    iget p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    .line 60
    int-to-float p3, p3

    .line 62
    const p4, 0x3d124925

    .line 63
    mul-float/2addr p4, p3

    .line 66
    iput p4, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCornerRadiusPx:F

    .line 67
    const p4, -0x430a3d71    # -0.03f

    .line 69
    mul-float/2addr p3, p4

    .line 72
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 73
    move-result p3

    .line 76
    iput p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardMarginPx:I

    .line 77
    iget p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    .line 79
    const p4, 0x7f070192    # @dimen/card_margin '16.0dp'

    .line 81
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    move-result p2

    .line 87
    mul-int/lit8 p2, p2, 0x2

    .line 88
    add-int/2addr p2, p3

    .line 90
    iput p2, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mTotalCardWidth:I

    .line 91
    int-to-float p2, p2

    .line 93
    const/high16 p3, 0x40000000    # 2.0f

    .line 94
    div-float/2addr p2, p3

    .line 96
    iput p2, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardEdgeToCenterDistance:F

    .line 97
    invoke-virtual {p1, p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updatePadding(I)V

    .line 99
    iget-object p0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    .line 102
    if-eqz p0, :cond_1

    .line 104
    check-cast p0, Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    .line 108
    :cond_1
    :goto_0
    return-void
    .line 111
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

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

.method public final renderActionButton(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;ZZ)V
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 5
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    .line 7
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    const-string v0, ""

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    const-string v1, "\\n"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    const/4 v1, 0x1

    .line 29
    aget-object v0, v0, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-nez p3, :cond_3

    .line 34
    if-eqz v0, :cond_3

    .line 36
    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 38
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 44
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 49
    if-eqz p2, :cond_2

    .line 51
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mDeviceLockedActionOnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    goto :goto_1

    .line 55
    :cond_2
    new-instance p0, Lcom/android/systemui/wallet/ui/WalletView$$ExternalSyntheticLambda0;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)V

    .line 58
    :goto_1
    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    goto :goto_2

    .line 64
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 65
    const/16 p1, 0x8

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    :goto_2
    return-void
    .line 72
.end method

.method public setFalsingCollector(Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2
    return-void
    .line 4
.end method

.method public final showCardCarousel(Ljava/util/List;IZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, p3, :cond_0

    .line 8
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    .line 13
    iget-object v5, v4, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    .line 15
    iput-object p1, v4, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    .line 17
    if-nez v1, :cond_6

    .line 19
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 21
    move-result v1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    move-result v6

    .line 28
    if-eq v1, v6, :cond_1

    .line 29
    goto :goto_3

    .line 31
    :cond_1
    move v1, v3

    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    move-result v6

    .line 36
    if-ge v1, v6, :cond_4

    .line 37
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 42
    check-cast v6, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 43
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v7

    .line 48
    check-cast v7, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    if-nez v7, :cond_2

    .line 54
    move v6, v3

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    check-cast v6, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 58
    invoke-virtual {v6}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 63
    check-cast v7, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 64
    invoke-virtual {v7}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v6

    .line 73
    :goto_2
    if-nez v6, :cond_3

    .line 74
    :goto_3
    move v1, v3

    .line 76
    goto :goto_4

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_1

    .line 80
    :cond_4
    move v1, v2

    .line 81
    :goto_4
    if-nez v1, :cond_5

    .line 82
    goto :goto_5

    .line 84
    :cond_5
    move v1, v3

    .line 85
    goto :goto_6

    .line 86
    :cond_6
    :goto_5
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 87
    move v1, v2

    .line 90
    :goto_6
    invoke-virtual {v0, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->scrollToPosition(I)V

    .line 91
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 97
    check-cast v4, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 98
    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    .line 100
    check-cast v0, Lcom/android/systemui/wallet/ui/WalletView;

    .line 102
    const/4 v5, 0x0

    .line 104
    invoke-virtual {v0, v4, v4, v5}, Lcom/android/systemui/wallet/ui/WalletView;->onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V

    .line 105
    iput-boolean p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    .line 108
    iput-boolean p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    .line 110
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    .line 112
    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 117
    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    .line 122
    const/16 v0, 0x8

    .line 124
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    .line 134
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 136
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object v6

    .line 141
    check-cast v6, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 142
    check-cast v6, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 144
    iget-object v6, v6, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    if-eqz v6, :cond_7

    .line 148
    const v7, 0x1120026    # @android:^attr-private/colorAccentPrimary

    .line 150
    invoke-static {v4, v7, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 153
    move-result v4

    .line 156
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 157
    :cond_7
    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 163
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v4

    .line 168
    check-cast v4, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 169
    invoke-static {v4}, Lcom/android/systemui/wallet/ui/WalletView;->getLabelText(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)Ljava/lang/CharSequence;

    .line 171
    move-result-object v4

    .line 174
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 178
    move-result-object p4

    .line 181
    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 182
    move-result-object p4

    .line 185
    iget p4, p4, Landroid/content/res/Configuration;->orientation:I

    .line 186
    const v4, 0x7f0a030c    # @id/dynamic_placeholder

    .line 188
    if-ne p4, v2, :cond_8

    .line 191
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    .line 193
    invoke-virtual {p4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    .line 198
    invoke-virtual {p4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 203
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 208
    move-result-object p4

    .line 211
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

    .line 217
    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    goto :goto_7

    .line 222
    :cond_8
    const/4 v2, 0x2

    .line 223
    if-ne p4, v2, :cond_9

    .line 224
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    .line 226
    invoke-virtual {p4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    .line 231
    invoke-virtual {p4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 241
    move-result-object p4

    .line 244
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

    .line 250
    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_9
    :goto_7
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 255
    iget-object v0, p4, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    .line 257
    invoke-virtual {p4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 259
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    .line 262
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 264
    move-result-object p4

    .line 267
    instance-of v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    if-eqz v0, :cond_a

    .line 270
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 272
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 274
    move-result-object v0

    .line 277
    const v2, 0x7f071258    # @dimen/wallet_card_carousel_container_top_margin '48.0dp'

    .line 278
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 281
    move-result v0

    .line 284
    iput v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 285
    :cond_a
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    move-result-object p1

    .line 290
    check-cast p1, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 291
    iget-boolean p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    .line 293
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/wallet/ui/WalletView;->renderActionButton(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;ZZ)V

    .line 295
    if-eqz v1, :cond_c

    .line 298
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    .line 300
    iget-object p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 302
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    .line 304
    filled-new-array {p1, p2, p0}, [Landroid/view/View;

    .line 306
    move-result-object p0

    .line 309
    :goto_8
    const/4 p1, 0x3

    .line 310
    if-ge v3, p1, :cond_c

    .line 311
    aget-object p1, p0, v3

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 315
    move-result p2

    .line 318
    if-nez p2, :cond_b

    .line 319
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 324
    move-result-object p1

    .line 327
    const/high16 p2, 0x3f800000    # 1.0f

    .line 328
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 330
    move-result-object p1

    .line 333
    const-wide/16 p2, 0x64

    .line 334
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 336
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 340
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 343
    goto :goto_8

    .line 345
    :cond_c
    return-void
    .line 346
.end method

.method public final showEmptyStateView(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    .line 8
    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    .line 30
    const p2, 0x7f130c60    # @string/wallet_empty_state_label 'Get set up to make faster, more secure purchases with your phone'

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 35
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    .line 38
    const p2, 0x7f0a0321    # @id/empty_state_icon

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 47
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 49
    const v0, 0x7f081166    # @drawable/ic_qs_plus 'res/drawable/ic_qs_plus.xml'

    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    .line 61
    const p2, 0x7f0a0322    # @id/empty_state_title

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    .line 80
    invoke-virtual {p0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
    .line 85
.end method
