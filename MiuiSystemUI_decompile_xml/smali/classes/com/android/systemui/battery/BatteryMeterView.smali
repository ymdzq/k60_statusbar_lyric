.class public Lcom/android/systemui/battery/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBatteryPercentView:Landroid/widget/TextView;

.field public mCharging:Z

.field public final mDrawable:Lcom/android/systemui/battery/AccessorizedBatteryDrawable;

.field public final mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field public mEstimateText:Ljava/lang/String;

.field public mLevel:I

.field public mNonAdaptedForegroundColor:I

.field public mNonAdaptedSingleToneColor:I

.field public final mPercentageStyleId:I

.field public final mShowPercentAvailable:Z

.field public mShowPercentMode:I

.field public mTextColor:I

.field public mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/battery/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mEstimateText:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x800013

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    sget-object v2, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const p3, 0x7f06038f    # @color/meter_background_color 'res/color/meter_background_color.xml'

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    .line 9
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mPercentageStyleId:I

    .line 11
    new-instance v3, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;

    invoke-direct {v3, p1, p3}, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDrawable:Lcom/android/systemui/battery/AccessorizedBatteryDrawable;

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111003e    # @android:bool/config_battery_percentage_setting_available

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentAvailable:Z

    .line 14
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v4, 0xc8

    .line 15
    invoke-virtual {p2, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 p3, 0x2

    new-array v4, p3, [F

    .line 16
    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 17
    invoke-virtual {p2, p3, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 18
    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-array p3, p3, [F

    .line 19
    fill-array-data p3, :array_1

    invoke-static {v1, v5, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 20
    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v5, 0x3

    invoke-virtual {p2, v5, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 21
    invoke-virtual {p2, v5, p3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 22
    invoke-virtual {p2, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 23
    invoke-virtual {p2, v2, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 p3, 0x4

    .line 24
    invoke-virtual {p2, p3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 25
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 26
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0710d0    # @dimen/status_bar_battery_icon_width '9.5dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710cf    # @dimen/status_bar_battery_icon_height '14.5dp'

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p3, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c2    # @dimen/battery_margin_bottom '0.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 32
    invoke-virtual {p3, v0, v0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 33
    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 35
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/battery/BatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FI)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getUnknownStateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 6
    const v1, 0x7f080ef7    # @drawable/ic_battery_unknown 'res/drawable/ic_battery_unknown.xml'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mTextColor:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    return-object p0
.end method


# virtual methods
.method public getBatteryPercentViewText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 9
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDrawable:Lcom/android/systemui/battery/AccessorizedBatteryDrawable;

    .line 18
    iget-object p1, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    move-result-object p1

    .line 29
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 30
    iput p1, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->density:F

    .line 32
    return-void
    .line 34
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 1

    .line 1
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 10
    iget-object p3, p1, Lcom/android/systemui/DualToneHandler;->lightColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 12
    const/4 v0, 0x0

    .line 14
    if-nez p3, :cond_1

    .line 15
    move-object p3, v0

    .line 17
    :cond_1
    iget p3, p3, Lcom/android/systemui/DualToneHandler$Color;->single:I

    .line 18
    iget-object p1, p1, Lcom/android/systemui/DualToneHandler;->darkColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 20
    if-nez p1, :cond_2

    .line 22
    move-object p1, v0

    .line 24
    :cond_2
    iget p1, p1, Lcom/android/systemui/DualToneHandler$Color;->single:I

    .line 25
    invoke-static {p2, p3, p1}, Lcom/android/systemui/DualToneHandler;->getColorForDarkIntensity(FII)I

    .line 27
    move-result p1

    .line 30
    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 31
    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 33
    iget-object p3, p1, Lcom/android/systemui/DualToneHandler;->lightColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 35
    if-nez p3, :cond_3

    .line 37
    move-object p3, v0

    .line 39
    :cond_3
    iget p3, p3, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    .line 40
    iget-object p1, p1, Lcom/android/systemui/DualToneHandler;->darkColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 42
    if-nez p1, :cond_4

    .line 44
    move-object p1, v0

    .line 46
    :cond_4
    iget p1, p1, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    .line 47
    invoke-static {p2, p3, p1}, Lcom/android/systemui/DualToneHandler;->getColorForDarkIntensity(FII)I

    .line 49
    move-result p1

    .line 52
    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 53
    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 55
    iget-object p3, p1, Lcom/android/systemui/DualToneHandler;->lightColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 57
    if-nez p3, :cond_5

    .line 59
    move-object p3, v0

    .line 61
    :cond_5
    iget p3, p3, Lcom/android/systemui/DualToneHandler$Color;->background:I

    .line 62
    iget-object p1, p1, Lcom/android/systemui/DualToneHandler;->darkColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 64
    if-nez p1, :cond_6

    .line 66
    goto :goto_1

    .line 68
    :cond_6
    move-object v0, p1

    .line 69
    :goto_1
    iget p1, v0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    .line 70
    invoke-static {p2, p3, p1}, Lcom/android/systemui/DualToneHandler;->getColorForDarkIntensity(FII)I

    .line 72
    move-result p1

    .line 75
    iget p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 76
    iget p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 78
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/battery/BatteryMeterView;->updateColors(III)V

    .line 80
    return-void
    .line 83
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    .line 7
    return-void
    .line 10
.end method

.method public setForceShowPercent(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentShowMode(I)V

    .line 2
    return-void
    .line 5
.end method

.method public setPercentShowMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    .line 12
    return-void
    .line 15
.end method

.method public final setPercentTextAtCurrentLevel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mEstimateText:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 9
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    .line 13
    int-to-float v1, v1

    .line 15
    const/high16 v2, 0x42c80000    # 100.0f

    .line 16
    div-float/2addr v1, v2

    .line 18
    float-to-double v1, v1

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 24
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 44
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    .line 45
    const/4 v2, 0x3

    .line 47
    if-ne v1, v2, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mEstimateText:Ljava/lang/String;

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mEstimateText:Ljava/lang/String;

    .line 64
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 69
    const v2, 0x7f13004c    # @string/accessibility_battery_level_with_estimate 'Battery %1$d percent, %2$s'

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mCharging:Z

    .line 78
    if-eqz v1, :cond_2

    .line 80
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v1

    .line 87
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 91
    const v2, 0x7f130049    # @string/accessibility_battery_level_charging 'Battery charging, %d percent.'

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v1

    .line 105
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 109
    const v2, 0x7f130048    # @string/accessibility_battery_level 'Battery %d percent.'

    .line 110
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    return-void
    .line 120
.end method

.method public final updateColors(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDrawable:Lcom/android/systemui/battery/AccessorizedBatteryDrawable;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->shieldPaint:Landroid/graphics/Paint;

    .line 4
    iget-boolean v2, v0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->dualTone:Z

    .line 6
    if-eqz v2, :cond_0

    .line 8
    move v2, p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, p3

    .line 12
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 20
    iget-boolean v1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    .line 22
    if-eqz v1, :cond_1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    move p1, p3

    .line 27
    :goto_1
    iput p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 28
    iget-object v1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    .line 35
    iget v1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 37
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryColorForLevel(I)I

    .line 49
    move-result p1

    .line 52
    iput p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 53
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 55
    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mTextColor:I

    .line 58
    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    if-eqz p0, :cond_3

    .line 69
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 71
    :cond_3
    return-void
    .line 74
.end method

.method public final updateShowPercent()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    new-instance v3, Lcom/android/systemui/battery/BatteryMeterView$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v3, p0}, Lcom/android/systemui/battery/BatteryMeterView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/battery/BatteryMeterView;)V

    .line 13
    invoke-static {v3}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    move v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v3, v1

    .line 30
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentAvailable:Z

    .line 31
    if-eqz v4, :cond_2

    .line 33
    if-eqz v3, :cond_2

    .line 35
    iget v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    .line 37
    const/4 v4, 0x2

    .line 39
    if-ne v3, v4, :cond_4

    .line 40
    :cond_2
    iget v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    .line 42
    if-eq v3, v2, :cond_4

    .line 44
    const/4 v4, 0x3

    .line 46
    if-ne v3, v4, :cond_3

    .line 47
    goto :goto_2

    .line 49
    :cond_3
    move v3, v1

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    :goto_2
    move v3, v2

    .line 52
    :goto_3
    if-eqz v3, :cond_5

    .line 53
    move v1, v2

    .line 55
    :cond_5
    const/4 v2, 0x0

    .line 56
    if-eqz v1, :cond_8

    .line 57
    if-nez v0, :cond_9

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    move-result-object v0

    .line 68
    const v1, 0x7f0d004f    # @layout/battery_percentage_view 'res/layout/battery_percentage_view.xml'

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 78
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mPercentageStyleId:I

    .line 80
    if-eqz v1, :cond_6

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 84
    :cond_6
    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mTextColor:I

    .line 87
    if-eqz v0, :cond_7

    .line 89
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 99
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    const/4 v2, -0x2

    .line 103
    const/4 v3, -0x1

    .line 104
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    goto :goto_4

    .line 111
    :cond_8
    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 116
    iput-object v2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 119
    :cond_9
    :goto_4
    return-void
    .line 121
.end method
