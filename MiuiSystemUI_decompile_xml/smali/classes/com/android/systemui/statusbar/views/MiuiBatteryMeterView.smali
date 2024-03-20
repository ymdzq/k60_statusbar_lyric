.class public Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;


# instance fields
.field public mBatteryChargingInView:Landroid/widget/ImageView;

.field public mBatteryChargingView:Landroid/widget/ImageView;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mBatteryDigitalView:Landroid/widget/FrameLayout;

.field public mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

.field public mBatteryPercentMarkView:Landroid/widget/TextView;

.field public mBatteryPercentView:Landroid/widget/TextView;

.field public mBatteryStyle:I

.field public final mBatteryTextColors:[I

.field public mBatteryTextDigitView:Landroid/widget/TextView;

.field public mCharging:Z

.field public mDark:I

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mFirstLevel:Z

.field public mLevel:I

.field public mLevelString:Ljava/lang/String;

.field public mLightColor:I

.field public mMinimalism:Z

.field public final mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

.field public mPerformanceMode:Z

.field public mPowerSave:Z

.field public mQuickCharging:Z

.field public mTintAreas:Ljava/util/ArrayList;

.field public mTintColor:I

.field public mUseLegacyDrawable:Z

.field public mUseTint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseLegacyDrawable:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const-string p2, "0"

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevelString:Ljava/lang/String;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mFirstLevel:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalism:Z

    const/4 p3, 0x7

    new-array p3, p3, [I

    .line 12
    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p3

    if-nez p3, :cond_0

    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "MiuiBatteryMeterView: \n "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MiuiBatteryMeterView"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    const-class p3, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 16
    const-class p3, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x800013

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d004e    # @layout/battery_digital_view 'res/layout/battery_digital_view.xml'

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0125    # @id/battery_icon_container

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0126    # @id/battery_image

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    const p1, 0x7f0a0122    # @id/battery_charge_image

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    const p1, 0x7f0a0124    # @id/battery_digit

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    const p1, 0x7f0a012a    # @id/battery_percentage_view

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const p1, 0x7f0a0129    # @id/battery_percentage_mark_view

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    const p1, 0x7f0a0123    # @id/battery_charge_out_image

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final clearTint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getChargingIconId()I

    .line 19
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getChargingIconId()I

    .line 36
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    .line 48
    return-void
    .line 50
.end method

.method public getChargingIconId()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const p0, 0x7f080b76    # @drawable/battery_meter_quick_charging 'res/drawable/battery_meter_quick_charging.xml'

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const p0, 0x7f080b4b    # @drawable/battery_meter_charging 'res/drawable/battery_meter_charging.xml'

    .line 10
    :goto_0
    return p0
    .line 13
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 5
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->addListener(Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;)V

    .line 12
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 15
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 25
    return-void
    .line 28
.end method

.method public final onBatteryLevelChanged(IZZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevel:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mFirstLevel:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevel:I

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevelString:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mFirstLevel:Z

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onBatteryLevelChanged(IZZ)V

    .line 26
    return-void
    .line 29
.end method

.method public final onBatteryStyleChanged(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_0

    .line 6
    if-ne p1, v2, :cond_0

    .line 8
    move p1, v1

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    .line 11
    if-eq v0, p1, :cond_2

    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    .line 15
    if-ne p1, v2, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    .line 19
    const/16 v1, 0x8

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onBatteryStyleChanged(I)V

    .line 37
    return-void
    .line 40
.end method

.method public final onChargeStateChanged(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    .line 6
    if-eq v0, p2, :cond_1

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    .line 10
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onChargeStateChanged(ZZ)V

    .line 19
    return-void
    .line 22
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkIntensity:F

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintColor:I

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    .line 8
    if-ne v0, p6, :cond_0

    .line 10
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    .line 12
    if-ne v0, p4, :cond_0

    .line 14
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    .line 16
    if-eq v0, p5, :cond_1

    .line 18
    :cond_0
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    .line 20
    iput p4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    .line 22
    iput p5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->clearTint()V

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChangedInternal()V

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 32
    move-object v2, p1

    .line 34
    move v3, p2

    .line 35
    move v4, p3

    .line 36
    move v5, p4

    .line 37
    move v6, p5

    .line 38
    move v7, p6

    .line 39
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 40
    return-void
    .line 43
.end method

.method public final onDarkChangedInternal()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintColor:I

    .line 8
    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 10
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    goto :goto_6

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    .line 44
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkIntensity:F

    .line 46
    invoke-static {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 48
    move-result v0

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    move v1, v2

    .line 56
    :goto_0
    cmpl-float v0, v1, v2

    .line 57
    const/4 v1, 0x2

    .line 59
    if-lez v0, :cond_2

    .line 60
    move v0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v0, 0x1

    .line 64
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    .line 65
    if-eq v2, v0, :cond_7

    .line 67
    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    .line 69
    if-ne v0, v1, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getChargingIconId()I

    .line 73
    move-result v2

    .line 76
    invoke-static {v2}, Lcom/android/systemui/statusbar/Icons;->getDarkDrawableId(I)I

    .line 77
    move-result v2

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getChargingIconId()I

    .line 82
    move-result v2

    .line 85
    invoke-static {v2}, Lcom/android/systemui/statusbar/Icons;->getLightDrawableId(I)I

    .line 86
    move-result v2

    .line 89
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 100
    if-ne v0, v1, :cond_4

    .line 102
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    .line 104
    goto :goto_3

    .line 106
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    .line 107
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    .line 112
    if-ne v0, v1, :cond_5

    .line 114
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    .line 116
    goto :goto_4

    .line 118
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    .line 119
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 124
    if-ne v0, v1, :cond_6

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    .line 128
    goto :goto_5

    .line 130
    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    .line 131
    :goto_5
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :cond_7
    :goto_6
    return-void
    .line 136
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateAll()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources()V

    .line 7
    return-void
    .line 10
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mListeners:Ljava/util/List;

    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 31
    return-void
    .line 34
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateAll()V

    .line 5
    return-void
    .line 8
.end method

.method public final onMinimalismModeChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalism:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalism:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/16 p1, 0x8

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    :cond_1
    return-void
    .line 17
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateAll()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources()V

    .line 7
    return-void
    .line 10
.end method

.method public final onPerformanceModeChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPerformanceMode:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPerformanceMode:Z

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onPerformanceModeChanged(Z)V

    .line 10
    return-void
    .line 13
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPowerSave:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPowerSave:Z

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onPowerSaveChanged(Z)V

    .line 10
    return-void
    .line 13
.end method

.method public final updateAll()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v2

    .line 11
    const v3, 0x7f060895    # @color/status_bar_textColor '#e6ffffff'

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 15
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    aput v2, v1, v3

    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 27
    const v4, 0x7f060896    # @color/status_bar_textColor_darkmode '#bf000000'

    .line 28
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 31
    move-result v2

    .line 34
    const/4 v4, 0x1

    .line 35
    aput v2, v1, v4

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 43
    const v4, 0x7f060886    # @color/status_bar_battery_digit_textColor '@color/status_bar_textColor'

    .line 44
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 47
    move-result v2

    .line 50
    const/4 v4, 0x2

    .line 51
    aput v2, v1, v4

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 59
    const v4, 0x7f060887    # @color/status_bar_battery_digit_textColor_darkmode '@color/status_bar_textColor_darkmode'

    .line 60
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 63
    move-result v2

    .line 66
    const/4 v4, 0x3

    .line 67
    aput v2, v1, v4

    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v2

    .line 75
    const v4, 0x7f06088f    # @color/status_bar_battery_power_save_digit_textColor '@color/status_bar_textColor'

    .line 76
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 79
    move-result v2

    .line 82
    const/4 v4, 0x4

    .line 83
    aput v2, v1, v4

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v2

    .line 91
    const v4, 0x7f060890    # @color/status_bar_battery_power_save_digit_textColor_darkmode '@color/status_bar_textColor_darkmode'

    .line 92
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 95
    move-result v2

    .line 98
    const/4 v4, 0x5

    .line 99
    aput v2, v1, v4

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextColors:[I

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 104
    move-result-object v2

    .line 107
    const v4, 0x7f060894    # @color/status_bar_icon_text_color_dark_mode_cts '#99000000'

    .line 108
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 111
    move-result v2

    .line 114
    const/4 v4, 0x6

    .line 115
    aput v2, v1, v4

    .line 116
    const v1, 0x7f05000c    # @bool/battery_meter_use_legacy_drawable 'false'

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 121
    move-result v1

    .line 124
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseLegacyDrawable:Z

    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 127
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->setUseLegacyDrawable(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 132
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object v1

    .line 137
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    const v2, 0x7f0710de    # @dimen/status_bar_icon_height '20.3636dp'

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 143
    move-result v2

    .line 146
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    .line 149
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 154
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    move-result-object v1

    .line 159
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    const v2, 0x7f0700c9    # @dimen/battery_meter_progress_center_left_offset '1.0909dp'

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 165
    move-result v4

    .line 168
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 169
    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 171
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 176
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 178
    move-result-object v1

    .line 181
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 184
    move-result v2

    .line 187
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 195
    const v2, 0x7f140478    # @style/TextAppearance.StatusBar.BatteryDigit

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 203
    const v2, 0x7f14047a    # @style/TextAppearance.StatusBar.Clock

    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    .line 211
    const v2, 0x7f0700db    # @dimen/battery_percent_mark_view_text_size '7.6dp'

    .line 213
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 216
    move-result v2

    .line 219
    int-to-float v2, v2

    .line 220
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    .line 224
    const v2, 0x7f0700da    # @dimen/battery_percent_mark_view_padding_top '5.0909dp'

    .line 226
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 229
    move-result v2

    .line 232
    const v4, 0x7f0700d9    # @dimen/battery_percent_mark_view_padding_bottom '1.4545dp'

    .line 233
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 236
    move-result v0

    .line 239
    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    .line 247
    filled-new-array {v0, v1, v2}, [Landroid/widget/TextView;

    .line 249
    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->setMiuiStatusBarTypeface([Landroid/widget/TextView;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    .line 256
    return-void
    .line 259
.end method

.method public final updateChargeAndText()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevelString:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevelString:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const v1, 0x7f130049    # @string/accessibility_battery_level_charging 'Battery charging, %d percent.'

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    const v1, 0x7f130048    # @string/accessibility_battery_level 'Battery %d percent.'

    .line 28
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevel:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 36
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseLegacyDrawable:Z

    .line 48
    const/4 v1, 0x3

    .line 50
    const/4 v2, 0x0

    .line 51
    const/16 v3, 0x8

    .line 52
    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 56
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    .line 58
    if-eqz v4, :cond_2

    .line 60
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    .line 62
    if-eqz v4, :cond_1

    .line 64
    if-ne v4, v1, :cond_2

    .line 66
    :cond_1
    move v4, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v4, v3

    .line 70
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    goto :goto_2

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingInView:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    .line 80
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    .line 82
    const/4 v5, 0x1

    .line 84
    if-eqz v4, :cond_5

    .line 85
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    .line 87
    const/4 v6, 0x2

    .line 89
    if-eq v4, v6, :cond_4

    .line 90
    if-ne v4, v5, :cond_5

    .line 92
    :cond_4
    move v4, v2

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    move v4, v3

    .line 96
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 100
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    .line 102
    if-ne v4, v5, :cond_6

    .line 104
    move v4, v2

    .line 106
    goto :goto_4

    .line 107
    :cond_6
    move v4, v3

    .line 108
    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    .line 112
    if-ne v0, v1, :cond_7

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    goto :goto_5

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->clearTint()V

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChangedInternal()V

    .line 140
    return-void
    .line 143
.end method
