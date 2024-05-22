.class public Lcom/miui/charge/container/MiuiChargeIconView;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCarIconAlpha:I

.field public mCarIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mCarIconHeight:I

.field public mCarIconScaleXY:I

.field public mCarIconWidth:I

.field public mCarModeIcon:Landroid/widget/ImageView;

.field public mChargeSpeed:I

.field public final mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field public mDoubleAlpha:I

.field public mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

.field public mDoubleLightningIcon:Landroid/widget/ImageView;

.field public mDoubleLightningIconHeight:I

.field public mDoubleLightningIconWidth:I

.field public mDoubleScaleXY:I

.field public mIconPaddingTop:I

.field public mIsCarMode:Z

.field public mIsFoldChargeVideo:Z

.field public mIsPadChargeVideo:Z

.field public mPivotX:I

.field public mScreenSize:Landroid/graphics/Point;

.field public mSingleAlpha:I

.field public mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

.field public mSingleLightningIcon:Landroid/widget/ImageView;

.field public mSingleLightningIconHeight:I

.field public mSingleLightningIconWidth:I

.field public mSingleScaleXY:I

.field public mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

.field public mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

.field public mSpecialDoubleLightningIconHeight:I

.field public mSpecialDoubleLightningIconWidth:I

.field public mSwitchAnimator:Landroid/animation/AnimatorSet;

.field public mWindowManager:Landroid/view/WindowManager;

.field public mYellowDoubleAlpha:I

.field public mYellowDoubleScaleXY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsFoldChargeVideo:Z

    .line 6
    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    .line 7
    iput p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 8
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    .line 9
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsFoldChargeVideo:Z

    const p3, 0x7f080be1    # @drawable/charge_animation_rapid_charge_icon 'res/drawable-nodpi/charge_animation_rapid_charge_icon.webp'

    .line 10
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080be3    # @drawable/charge_animation_super_rapid_charge_icon 'res/drawable-nodpi/charge_animation_super_rapid_charge_icon.webp'

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080be2    # @drawable/charge_animation_strong_super_rapid_charge_icon 'res/drawable-nodpi/charge_animation_strong_super_rapid_charge_icon.webp'

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080bdd    # @drawable/charge_animation_car_mode_icon 'res/drawable-nodpi/charge_animation_car_mode_icon.webp'

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo p3, "window"

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mWindowManager:Landroid/view/WindowManager;

    .line 15
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 17
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->updateSizeForScreenSizeChange()V

    .line 18
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 19
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconWidth:I

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconHeight:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v1, v2

    invoke-direct {p3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 22
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {v1, p2, v2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 24
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 25
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 27
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconWidth:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconHeight:I

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v2, v3

    invoke-direct {p3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {v1, p2, v2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 32
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 33
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 35
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    invoke-static {}, Lcom/miui/charge/container/MiuiChargeIconView;->isDoubleChargeShow()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 37
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :goto_0
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v2, v3

    invoke-direct {p3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {v1, p2, v2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 42
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 43
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 45
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconWidth:I

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconHeight:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v1, v2

    invoke-direct {p1, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 50
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 51
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static isDoubleChargeShow()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_DOUBLE_CHARGE:Z

    .line 2
    const-class v1, Lcom/miui/charge/MiuiChargeController;

    .line 4
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 9
    check-cast v2, Lcom/miui/charge/MiuiChargeController;

    .line 10
    iget-boolean v2, v2, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 12
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/charge/MiuiChargeController;

    .line 18
    iget-boolean v1, v1, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    .line 20
    const/4 v3, 0x1

    .line 22
    xor-int/2addr v1, v3

    .line 23
    if-eqz v0, :cond_0

    .line 24
    if-nez v2, :cond_0

    .line 26
    if-eqz v1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    return v3
.end method


# virtual methods
.method public final checkScreenSize()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_4

    .line 26
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->updateSizeForScreenSizeChange()V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 40
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconWidth:I

    .line 51
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 53
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconHeight:I

    .line 55
    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    .line 57
    add-int/2addr v2, v3

    .line 59
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 60
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 64
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 67
    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    .line 69
    int-to-float v3, v3

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 72
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 80
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconWidth:I

    .line 90
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 92
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconHeight:I

    .line 94
    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    .line 96
    add-int/2addr v2, v3

    .line 98
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 99
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 106
    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    .line 108
    int-to-float v3, v3

    .line 110
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 111
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 119
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    .line 129
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 131
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    .line 133
    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    .line 135
    add-int/2addr v2, v3

    .line 137
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 138
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 142
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 145
    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    .line 147
    int-to-float v3, v3

    .line 149
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 150
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 158
    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    move-result-object v0

    .line 165
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconWidth:I

    .line 168
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 170
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconHeight:I

    .line 172
    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    .line 174
    add-int/2addr v2, v3

    .line 176
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 177
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 181
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 184
    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    .line 186
    int-to-float v2, v2

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 189
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 197
    :cond_4
    return-void
    .line 200
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    mul-float v2, v0, v1

    .line 15
    const/high16 v3, 0x44870000    # 1080.0f

    .line 17
    div-float/2addr v2, v3

    .line 19
    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsFoldChargeVideo:Z

    .line 20
    if-nez v4, :cond_0

    .line 22
    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    .line 24
    if-eqz v4, :cond_2

    .line 26
    :cond_0
    cmpl-float v4, v2, v1

    .line 28
    if-lez v4, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_0
    move v2, v1

    .line 34
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 35
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimationPad()Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    const v1, 0x3f19999a    # 0.6f

    .line 44
    mul-float/2addr v0, v1

    .line 47
    div-float v2, v0, v3

    .line 48
    :cond_3
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    .line 50
    if-eqz v0, :cond_4

    .line 52
    const/high16 v0, 0x43410000    # 193.0f

    .line 54
    mul-float/2addr v0, v2

    .line 56
    float-to-int v0, v0

    .line 57
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    .line 58
    goto :goto_1

    .line 60
    :cond_4
    const v0, 0x43898000    # 275.0f

    .line 61
    mul-float/2addr v0, v2

    .line 64
    float-to-int v0, v0

    .line 65
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    .line 66
    :goto_1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 68
    mul-float/2addr v0, v2

    .line 70
    float-to-int v0, v0

    .line 71
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    .line 72
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 78
    move-result v0

    .line 81
    int-to-float v0, v0

    .line 82
    mul-float/2addr v0, v2

    .line 83
    float-to-int v0, v0

    .line 84
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconWidth:I

    .line 85
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 89
    move-result v0

    .line 92
    int-to-float v0, v0

    .line 93
    mul-float/2addr v0, v2

    .line 94
    float-to-int v0, v0

    .line 95
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconHeight:I

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    if-eqz v0, :cond_6

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 102
    move-result v0

    .line 105
    int-to-float v0, v0

    .line 106
    mul-float/2addr v0, v2

    .line 107
    float-to-int v0, v0

    .line 108
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconWidth:I

    .line 109
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 113
    move-result v0

    .line 116
    int-to-float v0, v0

    .line 117
    mul-float/2addr v0, v2

    .line 118
    float-to-int v0, v0

    .line 119
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconHeight:I

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 126
    move-result v0

    .line 129
    int-to-float v0, v0

    .line 130
    mul-float/2addr v0, v2

    .line 131
    float-to-int v0, v0

    .line 132
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    .line 133
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 137
    move-result v0

    .line 140
    int-to-float v0, v0

    .line 141
    mul-float/2addr v0, v2

    .line 142
    float-to-int v0, v0

    .line 143
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    if-eqz v0, :cond_8

    .line 148
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 150
    move-result v0

    .line 153
    int-to-float v0, v0

    .line 154
    mul-float/2addr v0, v2

    .line 155
    float-to-int v0, v0

    .line 156
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconWidth:I

    .line 157
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 161
    move-result v0

    .line 164
    int-to-float v0, v0

    .line 165
    mul-float/2addr v2, v0

    .line 166
    float-to-int v0, v2

    .line 167
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconHeight:I

    .line 168
    :cond_8
    return-void
    .line 170
.end method
