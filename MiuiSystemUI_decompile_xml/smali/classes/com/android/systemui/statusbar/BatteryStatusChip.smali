.class public final Lcom/android/systemui/statusbar/BatteryStatusChip;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;


# instance fields
.field public final batteryMeterView:Lcom/android/systemui/battery/BatteryMeterView;

.field public final roundedContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/BatteryStatusChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d0050    # @layout/battery_status_chip 'res/layout/battery_status_chip.xml'

    .line 3
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a07d0    # @id/rounded_container

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->roundedContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0128    # @id/battery_meter_view

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->batteryMeterView:Lcom/android/systemui/battery/BatteryMeterView;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryStatusChip;->updateResources()V

    return-void
.end method


# virtual methods
.method public getChipWidth()I
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->batteryMeterView:Lcom/android/systemui/battery/BatteryMeterView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryStatusChip;->updateResources()V

    .line 5
    return-void
    .line 8
.end method

.method public final setBatteryLevel(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->batteryMeterView:Lcom/android/systemui/battery/BatteryMeterView;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/battery/BatteryMeterView;->setForceShowPercent(Z)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->batteryMeterView:Lcom/android/systemui/battery/BatteryMeterView;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDrawable:Lcom/android/systemui/battery/AccessorizedBatteryDrawable;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 16
    iput-boolean v1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 18
    iget-object v2, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    .line 20
    new-instance v3, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    .line 22
    invoke-direct {v3, v2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 27
    iget-object v2, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    .line 30
    new-instance v3, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    .line 32
    invoke-direct {v3, v2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 34
    const-wide/16 v4, 0x0

    .line 37
    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDrawable:Lcom/android/systemui/battery/AccessorizedBatteryDrawable;

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 48
    const/16 v2, 0x43

    .line 50
    if-lt p1, v2, :cond_0

    .line 52
    move v2, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/16 v2, 0x21

    .line 56
    if-gt p1, v2, :cond_1

    .line 58
    const/4 v2, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-boolean v2, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    .line 62
    :goto_0
    iput-boolean v2, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    .line 64
    iput p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryColorForLevel(I)I

    .line 68
    move-result v2

    .line 71
    iput v2, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 72
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mCharging:Z

    .line 77
    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    .line 81
    return-void
    .line 84
.end method

.method public setBoundsForAnimation(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->roundedContainer:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 4
    move-result v1

    .line 7
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 9
    move-result v1

    .line 12
    sub-int/2addr p2, v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 14
    move-result v1

    .line 17
    sub-int/2addr p3, v1

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 19
    move-result p0

    .line 22
    sub-int/2addr p4, p0

    .line 23
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setLeftTopRightBottom(IIII)V

    .line 24
    return-void
    .line 27
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x1010433    # @android:attr/colorPrimary

    .line 6
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 14
    const v3, 0x1010038    # @android:attr/textColorSecondary

    .line 16
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 19
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->batteryMeterView:Lcom/android/systemui/battery/BatteryMeterView;

    .line 23
    invoke-virtual {v2, v0, v1, v0}, Lcom/android/systemui/battery/BatteryMeterView;->updateColors(III)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatusChip;->roundedContainer:Landroid/widget/LinearLayout;

    .line 28
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 30
    const v1, 0x7f081949    # @drawable/statusbar_chip_bg 'res/drawable/statusbar_chip_bg.xml'

    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
    .line 42
.end method
