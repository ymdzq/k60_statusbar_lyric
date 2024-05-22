.class public Lcom/android/systemui/statusbar/views/BatteryIndicator;
.super Landroid/widget/ImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mCharging:Z

.field public mLevel:I

.field public mLowLevel:Z

.field public mLowLevelColor:I

.field public mNormalColor:I

.field public mPowerSave:Z

.field public mPowerSaveColor:I

.field public mShowBatteryIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->updateResources()V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 11
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 13
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 26
    return-void
    .line 29
.end method

.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mLevel:I

    .line 2
    if-eq p1, p2, :cond_1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mLevel:I

    .line 6
    const/16 p2, 0x14

    .line 8
    if-ge p1, p2, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mLowLevel:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->update()V

    .line 17
    :cond_1
    return-void
    .line 20
.end method

.method public final onBatteryStyleChanged(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ne p1, v2, :cond_0

    .line 5
    move v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v3, v1

    .line 9
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mShowBatteryIndicator:Z

    .line 10
    if-eq v3, v4, :cond_2

    .line 12
    if-ne p1, v2, :cond_1

    .line 14
    goto :goto_1

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mShowBatteryIndicator:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->update()V

    .line 20
    :cond_2
    return-void
    .line 23
.end method

.method public final onChargeStateChanged(ZZ)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mCharging:Z

    .line 2
    if-eq p2, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mCharging:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->update()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f0700c1    # @dimen/battery_line_height '1.5dp'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v1

    .line 20
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
    .line 26
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

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
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 28
    return-void
    .line 31
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->updateResources()V

    .line 2
    return-void
    .line 5
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mPowerSave:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mPowerSave:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->update()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final update()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mShowBatteryIndicator:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0x8

    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mShowBatteryIndicator:Z

    .line 13
    if-eqz v0, :cond_4

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mCharging:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mNormalColor:I

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mPowerSave:Z

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iget v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mPowerSaveColor:I

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mLowLevel:Z

    .line 31
    if-eqz v0, :cond_3

    .line 33
    iget v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mLowLevelColor:I

    .line 35
    goto :goto_1

    .line 37
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mNormalColor:I

    .line 38
    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mLevel:I

    .line 47
    mul-int/lit8 v0, v0, 0x64

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 51
    :cond_4
    return-void
    .line 54
.end method

.method public final updateResources()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f060049    # @color/battery_indicator '#ff47c200'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mNormalColor:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 18
    const v1, 0x7f06004b    # @color/battery_indicator_power_save '#ffff9c1a'

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mPowerSaveColor:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 31
    const v1, 0x7f06004a    # @color/battery_indicator_low '#ffe30101'

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 35
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/systemui/statusbar/views/BatteryIndicator;->mLowLevelColor:I

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->update()V

    .line 41
    return-void
    .line 44
.end method
