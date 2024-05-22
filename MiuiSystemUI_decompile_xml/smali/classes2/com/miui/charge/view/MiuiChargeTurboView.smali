.class public Lcom/miui/charge/view/MiuiChargeTurboView;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public animatorSet:Landroid/animation/AnimatorSet;

.field public final cubicEaseOutInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field public mChargeIcon:Landroid/widget/ImageView;

.field public mChargeIconAnimator:Landroid/animation/ObjectAnimator;

.field public mChargeIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mChargeIconHeight:I

.field public mChargeIconWidth:I

.field public mIsFoldChargeVideo:Z

.field public mIsPadChargeVideo:Z

.field public mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

.field public mMaxChargePowerTx:Landroid/widget/TextView;

.field public mMaxChargePowerTxSize:F

.field public mScreenSize:Landroid/graphics/Point;

.field public mTailIcon:Landroid/widget/ImageView;

.field public mTailIconHeight:I

.field public mTailIconWidth:I

.field public mTranslation:I

.field public mTurboIcon:Landroid/widget/ImageView;

.field public mTurboIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mTurboIconHeight:I

.field public mTurboIconWidth:I

.field public mTurboTailIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/view/MiuiChargeTurboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/view/MiuiChargeTurboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->cubicEaseOutInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mIsFoldChargeVideo:Z

    .line 6
    iput-boolean p2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mIsPadChargeVideo:Z

    const/high16 p3, 0x42580000    # 54.0f

    .line 7
    iput p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTxSize:F

    .line 8
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mIsPadChargeVideo:Z

    .line 9
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mIsFoldChargeVideo:Z

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    const p3, 0x7f080bde    # @drawable/charge_animation_charge_icon 'res/drawable-nodpi/charge_animation_charge_icon.webp'

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconDrawable:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080be4    # @drawable/charge_animation_turbo_icon 'res/drawable-nodpi/charge_animation_turbo_icon.webp'

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconDrawable:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080be5    # @drawable/charge_animation_turbo_tail_icon 'res/drawable-nodpi/charge_animation_turbo_tail_icon.webp'

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboTailIconDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo p3, "window"

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mWindowManager:Landroid/view/WindowManager;

    .line 15
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 17
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->updateSizeForScreenSizeChange()V

    .line 18
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 19
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconWidth:I

    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconHeight:I

    invoke-direct {p3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 22
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 25
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 26
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboTailIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconWidth:I

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 28
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconWidth:I

    iget v2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconHeight:I

    invoke-direct {p3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 33
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconWidth:I

    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconHeight:I

    invoke-direct {p3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 37
    iget v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 38
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Flynnsans-charge.otf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    iget v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTxSize:F

    invoke-virtual {p3, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    const v0, 0x7f06090a    # @color/super_charge_max_power_hint '#ffcc00'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    .line 44
    invoke-virtual {p3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    iget-object v4, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    invoke-virtual {p0, v4, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const-class p3, Lcom/miui/charge/MiuiChargeController;

    invoke-static {p3}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/charge/MiuiChargeController;

    .line 47
    iget-boolean p3, p3, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 48
    sget-boolean v4, Lcom/miui/charge/ChargeUtils;->SUPPORT_DOUBLE_CHARGE:Z

    if-eqz v4, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eqz v1, :cond_1

    .line 49
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTxSize:F

    invoke-virtual {p3, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    iget-object p2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    const p3, 0x7f06090b    # @color/super_charge_max_power_hint_close_double_charge '#0033ff'

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object p2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    :cond_1
    iget p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconWidth:I

    iput p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTranslation:I

    return-void
.end method


# virtual methods
.method public final checkScreenSize()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->updateSizeForScreenSizeChange()V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconWidth:I

    .line 48
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 50
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconHeight:I

    .line 52
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 54
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconWidth:I

    .line 69
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 71
    iget v2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconHeight:I

    .line 73
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 75
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 77
    int-to-float v1, v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 80
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconWidth:I

    .line 91
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 93
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconHeight:I

    .line 95
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 97
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconWidth:I

    .line 99
    add-int/lit8 v1, v1, 0xa

    .line 101
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 103
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 110
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTxSize:F

    .line 112
    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 118
    if-eqz v0, :cond_0

    .line 120
    iget v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTxSize:F

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 127
    :cond_1
    return-void
    .line 130
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public setStrongViewInitState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 20
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 25
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 35
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 38
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    sget-object v3, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 42
    iget v3, v3, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 49
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    const-string v4, "%dW MAX"

    .line 54
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 63
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 67
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 70
    sget-object v0, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 72
    iget v0, v0, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v0

    .line 79
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    const-string v1, "%dW"

    .line 84
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    return-void
    .line 93
.end method

.method public setStrongViewShowState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 20
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 25
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    if-eqz v0, :cond_1

    .line 37
    const-class v0, Lcom/miui/charge/MiuiChargeController;

    .line 39
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Lcom/miui/charge/MiuiChargeController;

    .line 45
    iget-boolean v0, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    .line 47
    if-nez v0, :cond_1

    .line 49
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 59
    :goto_0
    return-void
    .line 62
.end method

.method public setViewInitState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 20
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 27
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 32
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 40
    iget v2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTranslation:I

    .line 42
    neg-int v2, v2

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 46
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 49
    iget v2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTranslation:I

    .line 51
    neg-int v2, v2

    .line 53
    int-to-float v2, v2

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 55
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 60
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 63
    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 67
    :cond_1
    return-void
    .line 70
.end method

.method public setViewShowState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 21
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 27
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 32
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 42
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 52
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 55
    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 59
    :cond_1
    return-void
    .line 62
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mScreenSize:Landroid/graphics/Point;

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
    mul-float/2addr v0, v1

    .line 15
    const/high16 v2, 0x44870000    # 1080.0f

    .line 16
    div-float/2addr v0, v2

    .line 18
    iget-boolean v2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mIsFoldChargeVideo:Z

    .line 19
    if-nez v2, :cond_0

    .line 21
    iget-boolean v2, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mIsPadChargeVideo:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 27
    move-result v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 35
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    mul-float/2addr v1, v0

    .line 40
    float-to-int v1, v1

    .line 41
    iput v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconWidth:I

    .line 42
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 46
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    mul-float/2addr v1, v0

    .line 51
    float-to-int v1, v1

    .line 52
    iput v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconHeight:I

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 59
    move-result v1

    .line 62
    int-to-float v1, v1

    .line 63
    mul-float/2addr v1, v0

    .line 64
    float-to-int v1, v1

    .line 65
    iput v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconWidth:I

    .line 66
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 70
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    mul-float/2addr v1, v0

    .line 75
    float-to-int v1, v1

    .line 76
    iput v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIconHeight:I

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboTailIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 83
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    mul-float/2addr v1, v0

    .line 88
    float-to-int v1, v1

    .line 89
    iput v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconWidth:I

    .line 90
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboTailIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 94
    move-result v1

    .line 97
    int-to-float v1, v1

    .line 98
    mul-float/2addr v1, v0

    .line 99
    float-to-int v1, v1

    .line 100
    iput v1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconHeight:I

    .line 101
    :cond_4
    const/high16 v1, 0x42580000    # 54.0f

    .line 103
    mul-float/2addr v0, v1

    .line 105
    iput v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTxSize:F

    .line 106
    iget v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIconWidth:I

    .line 108
    iput v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTranslation:I

    .line 110
    return-void
    .line 112
.end method
