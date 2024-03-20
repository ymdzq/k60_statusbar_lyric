.class public final Lcom/android/systemui/shade/ShadeHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEFAULT_CLOCK_INTENT:Landroid/content/Intent;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final batteryIcon:Lcom/android/systemui/battery/BatteryMeterView;

.field public carrierIconSlots:Ljava/util/List;

.field public final chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

.field public final clock:Lcom/android/systemui/statusbar/policy/Clock;

.field public final combinedShadeHeadersConstraintManager:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

.field public customizing:Z

.field public cutout:Landroid/view/DisplayCutout;

.field public final date:Landroid/widget/TextView;

.field public final demoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final demoModeReceiver:Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final header:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field public iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field public final insetListener:Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

.field public final insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public largeScreenActive:Z

.field public lastInsets:Landroid/view/WindowInsets;

.field public final mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

.field public mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

.field public final nextAlarmCallback:Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;

.field public final nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field public nextAlarmIntent:Landroid/app/PendingIntent;

.field public final privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

.field public final qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

.field public qsDisabled:Z

.field public qsExpandedFraction:F

.field public qsScrollY:I

.field public qsVisible:Z

.field public final shadeCarrierGroupControllerBuilder:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;

.field public shadeExpandedFraction:F

.field public final statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field public final tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;

.field public final variableDateViewControllerFactory:Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;

.field public visible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.SHOW_ALARMS"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/shade/ShadeHeaderController;->DEFAULT_CLOCK_INTENT:Landroid/content/Intent;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;Lcom/android/systemui/qs/HeaderPrivacyIconsController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/shade/QsBatteryModeController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/shade/ShadeHeaderController;->tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/shade/ShadeHeaderController;->insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/shade/ShadeHeaderController;->variableDateViewControllerFactory:Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/shade/ShadeHeaderController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeCarrierGroupControllerBuilder:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/shade/ShadeHeaderController;->combinedShadeHeadersConstraintManager:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/shade/ShadeHeaderController;->demoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 25
    iput-object p12, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

    .line 27
    iput-object p13, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 29
    iput-object p14, p0, Lcom/android/systemui/shade/ShadeHeaderController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 31
    const p2, 0x7f0a0121    # @id/batteryRemainingIcon

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p2

    .line 39
    check-cast p2, Lcom/android/systemui/battery/BatteryMeterView;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->batteryIcon:Lcom/android/systemui/battery/BatteryMeterView;

    .line 42
    const p2, 0x7f0a01fb    # @id/clock

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 50
    check-cast p2, Lcom/android/systemui/statusbar/policy/Clock;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 53
    const p2, 0x7f0a0286    # @id/date

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p2

    .line 61
    check-cast p2, Landroid/widget/TextView;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->date:Landroid/widget/TextView;

    .line 64
    const p2, 0x7f0a08dd    # @id/statusIcons

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p2

    .line 72
    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 75
    const p2, 0x7f0a01cb    # @id/carrier_group

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 83
    check-cast p1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    .line 86
    const/high16 p1, -0x40800000    # -1.0f

    .line 88
    iput p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    .line 90
    iput p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 92
    new-instance p1, Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

    .line 94
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 96
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->insetListener:Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

    .line 99
    new-instance p1, Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;

    .line 101
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 103
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->demoModeReceiver:Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;

    .line 106
    new-instance p1, Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 108
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 110
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 113
    new-instance p1, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    .line 115
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 117
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    .line 120
    new-instance p1, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;

    .line 122
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 124
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmCallback:Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;

    .line 127
    return-void
    .line 129
.end method

.method public static final access$updateConstraintsForInsets(Lcom/android/systemui/shade/ShadeHeaderController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/WindowInsets;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 5
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->cutout:Landroid/view/DisplayCutout;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForCurrentRotation()Landroid/util/Pair;

    .line 13
    move-result-object v1

    .line 16
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 19
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->currentRotationHasCornerCutout()Z

    .line 25
    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateQQSPaddings()V

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    move-object v3, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v3, v2

    .line 40
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 41
    move-result v3

    .line 44
    iget-object v4, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 45
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 47
    move-result v5

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 51
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    move-object v2, v1

    .line 58
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 59
    move-result v1

    .line 62
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 63
    move-result v2

    .line 66
    iget-object v4, p0, Lcom/android/systemui/shade/ShadeHeaderController;->combinedShadeHeadersConstraintManager:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;

    .line 67
    check-cast v4, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl;

    .line 69
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    new-instance v4, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;

    .line 74
    invoke-direct {v4, v3, v5, v1, v2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;-><init>(IIII)V

    .line 76
    const/4 v1, 0x6

    .line 79
    const/4 v2, 0x0

    .line 80
    if-eqz p2, :cond_7

    .line 81
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 83
    move-result-object p2

    .line 86
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 87
    move-result v3

    .line 90
    if-nez v3, :cond_5

    .line 91
    if-eqz v0, :cond_2

    .line 93
    goto :goto_3

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 96
    move-result v0

    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 100
    move-result v1

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 104
    move-result v2

    .line 107
    sub-int/2addr v1, v2

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 109
    move-result v2

    .line 112
    sub-int/2addr v1, v2

    .line 113
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 114
    move-result p2

    .line 117
    sub-int/2addr v1, p2

    .line 118
    div-int/lit8 v1, v1, 0x2

    .line 119
    const p2, 0x7f0a01d4    # @id/center_left

    .line 121
    const v2, 0x7f0a01d5    # @id/center_right

    .line 124
    if-nez v0, :cond_3

    .line 127
    move v3, p2

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move v3, v2

    .line 131
    :goto_2
    if-nez v0, :cond_4

    .line 132
    move p2, v2

    .line 134
    :cond_4
    new-instance v0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;

    .line 135
    invoke-direct {v0, v3, v1, p2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;-><init>(III)V

    .line 137
    new-instance v2, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$2;

    .line 140
    invoke-direct {v2, v3, v1, p2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$2;-><init>(III)V

    .line 142
    new-instance p2, Lcom/android/systemui/shade/ConstraintsChanges;

    .line 145
    invoke-static {v4, v0}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 147
    move-result-object v0

    .line 150
    invoke-static {v4, v2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 151
    move-result-object v1

    .line 154
    invoke-direct {p2, v0, v1, v4}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 155
    goto :goto_5

    .line 158
    :cond_5
    :goto_3
    sget-object p2, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;->INSTANCE:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;

    .line 159
    and-int/lit8 v0, v1, 0x1

    .line 161
    if-eqz v0, :cond_6

    .line 163
    move-object p2, v2

    .line 165
    :cond_6
    new-instance v0, Lcom/android/systemui/shade/ConstraintsChanges;

    .line 166
    invoke-static {v4, p2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 168
    move-result-object p2

    .line 171
    invoke-static {v4, v2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 172
    move-result-object v1

    .line 175
    invoke-static {v4, v2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 176
    move-result-object v2

    .line 179
    invoke-direct {v0, p2, v1, v2}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 180
    goto :goto_4

    .line 183
    :cond_7
    sget-object p2, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;->INSTANCE:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;

    .line 184
    and-int/lit8 v0, v1, 0x1

    .line 186
    if-eqz v0, :cond_8

    .line 188
    move-object p2, v2

    .line 190
    :cond_8
    new-instance v0, Lcom/android/systemui/shade/ConstraintsChanges;

    .line 191
    invoke-static {v4, p2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 193
    move-result-object p2

    .line 196
    invoke-static {v4, v2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 197
    move-result-object v1

    .line 200
    invoke-static {v4, v2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt;->plus(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 201
    move-result-object v2

    .line 204
    invoke-direct {v0, p2, v1, v2}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 205
    :goto_4
    move-object p2, v0

    .line 208
    :goto_5
    iget-object v0, p2, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    .line 209
    if-eqz v0, :cond_9

    .line 211
    const v1, 0x7f0a0752    # @id/qqs_header_constraint

    .line 213
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 216
    move-result-object v2

    .line 219
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 223
    :cond_9
    iget-object v0, p2, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    .line 226
    if-eqz v0, :cond_a

    .line 228
    const v1, 0x7f0a0762    # @id/qs_header_constraint

    .line 230
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 233
    move-result-object v2

    .line 236
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 240
    :cond_a
    iget-object p2, p2, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    .line 243
    if-eqz p2, :cond_b

    .line 245
    const v0, 0x7f0a04b1    # @id/large_screen_header_constraint

    .line 247
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 250
    move-result-object v1

    .line 253
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 257
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateBatteryMode()V

    .line 260
    return-void
    .line 263
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    .line 2
    const-string/jumbo v0, "visible: "

    .line 4
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 7
    iget-boolean p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    .line 10
    const-string/jumbo v0, "shadeExpanded: "

    .line 12
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 15
    iget p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v1, "shadeExpandedFraction: "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    iget-boolean p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    .line 38
    const-string v0, "active: "

    .line 40
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 42
    iget p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "qsExpandedFraction: "

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    iget p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsScrollY:I

    .line 64
    const-string v0, "qsScrollY: "

    .line 66
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 71
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 73
    move-result p0

    .line 76
    const p2, 0x7f0a0752    # @id/qqs_header_constraint

    .line 77
    if-ne p0, p2, :cond_0

    .line 80
    const-string p0, "QQS Header"

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    const p2, 0x7f0a0762    # @id/qs_header_constraint

    .line 85
    if-ne p0, p2, :cond_1

    .line 88
    const-string p0, "QS Header"

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    const p2, 0x7f0a04b1    # @id/large_screen_header_constraint

    .line 93
    if-ne p0, p2, :cond_2

    .line 96
    const-string p0, "Large Screen Header"

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    const-string p2, "Unknown state "

    .line 101
    invoke-static {p2, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 106
    :goto_0
    const-string p2, "currentState: "

    .line 107
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 109
    return-void
    .line 112
.end method

.method public final launchClockActivity$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmIntent:Landroid/app/PendingIntent;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/systemui/shade/ShadeHeaderController;->DEFAULT_CLOCK_INTENT:Landroid/content/Intent;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 15
    :goto_0
    return-void
    .line 18
.end method

.method public final onInit()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->date:Landroid/widget/TextView;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 4
    new-instance v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->variableDateViewControllerFactory:Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;

    .line 8
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 10
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->handler:Landroid/os/Handler;

    .line 12
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 14
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;-><init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/VariableDateView;)V

    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;

    .line 24
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 26
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    .line 28
    iget-object v3, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 30
    invoke-direct {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;)V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 37
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v2

    .line 42
    const v3, 0x1010036    # @android:attr/textColorPrimary

    .line 43
    const/4 v4, 0x0

    .line 46
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 47
    move-result v2

    .line 50
    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    .line 51
    move v2, v4

    .line 53
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    move-result v5

    .line 59
    if-ge v2, v5, :cond_1

    .line 60
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    move-result-object v3

    .line 65
    instance-of v5, v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 66
    if-eqz v5, :cond_0

    .line 68
    check-cast v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 70
    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    .line 72
    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 74
    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    .line 77
    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    .line 79
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v0

    .line 88
    const v1, 0x1040977    # @android:string/whichEditApplicationLabel

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 96
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    .line 100
    iget-object v6, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeCarrierGroupControllerBuilder:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    new-instance v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 109
    iget-object v7, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 111
    iget-object v8, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    .line 113
    iget-object v9, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    .line 115
    iget-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 117
    iget-object v11, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

    .line 119
    iget-object v12, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mContext:Landroid/content/Context;

    .line 121
    iget-object v13, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mSlotIndexResolver:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SubscriptionManagerSlotIndexResolver;

    .line 123
    move-object v5, v1

    .line 125
    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SubscriptionManagerSlotIndexResolver;)V

    .line 126
    iput-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 129
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    new-instance v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;

    .line 136
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 146
    move-result v0

    .line 149
    if-nez v0, :cond_2

    .line 150
    const/4 v4, 0x1

    .line 152
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->setChipVisibility(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 156
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 158
    iget-boolean v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    .line 162
    iget-boolean v0, v0, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->updatePrivacyIconSlots()V

    .line 168
    return-void
    .line 171
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 4
    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateTransition()V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateCarrierGroupPadding()V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->insetListener:Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 21
    sget-object v0, Lcom/android/systemui/shade/ShadeHeaderController$onViewAttached$1;->INSTANCE:Lcom/android/systemui/shade/ShadeHeaderController$onViewAttached$1;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 28
    new-instance v0, Lcom/android/systemui/shade/ShadeHeaderController$onViewAttached$2;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/ShadeHeaderController$onViewAttached$2;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 39
    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 44
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->demoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 53
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->demoModeReceiver:Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 60
    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 65
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 72
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmCallback:Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;

    .line 76
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 78
    return-void
    .line 81
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 8
    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 10
    const-string v0, "ShadeHeaderController"

    .line 12
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 14
    invoke-virtual {v2, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 21
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->demoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->demoModeReceiver:Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;

    .line 30
    invoke-virtual {v0, v2}, Lcom/android/systemui/demomode/DemoModeController;->removeCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 35
    if-nez v0, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    move-object v1, v0

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 41
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 48
    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmCallback:Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;

    .line 52
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 54
    return-void
    .line 57
.end method

.method public final simulateViewDetached$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->onViewDetached()V

    .line 2
    return-void
    .line 5
.end method

.method public final updateBatteryMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->cutout:Landroid/view/DisplayCutout;

    .line 2
    iget v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 4
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

    .line 6
    iget v3, v2, Lcom/android/systemui/shade/QsBatteryModeController;->fadeInStartFraction:F

    .line 8
    cmpl-float v3, v1, v3

    .line 10
    const/4 v4, 0x3

    .line 12
    if-lez v3, :cond_0

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget v3, v2, Lcom/android/systemui/shade/QsBatteryModeController;->fadeOutCompleteFraction:F

    .line 20
    cmpg-float v1, v1, v3

    .line 22
    if-gez v1, :cond_3

    .line 24
    const/4 v1, 0x1

    .line 26
    if-eqz v0, :cond_1

    .line 27
    iget-object v2, v2, Lcom/android/systemui/shade/QsBatteryModeController;->insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->currentRotationHasCornerCutout()Z

    .line 31
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 41
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    if-eqz v0, :cond_2

    .line 50
    move v4, v1

    .line 52
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 v0, 0x0

    .line 58
    :goto_1
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 61
    move-result v0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->batteryIcon:Lcom/android/systemui/battery/BatteryMeterView;

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentShowMode(I)V

    .line 67
    :cond_4
    return-void
.end method

.method public final updateCarrierGroupPadding()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    .line 18
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 26
    const v2, 0x7f070ec7    # @dimen/qqs_expand_clock_scale '2.57'

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 30
    move-result v1

    .line 33
    mul-float/2addr v1, v0

    .line 34
    float-to-int v0, v1

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    .line 36
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Lcom/android/systemui/shade/ShadeHeaderController$updateCarrierGroupPadding$$inlined$doOnLayout$1;

    .line 43
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$updateCarrierGroupPadding$$inlined$doOnLayout$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 48
    :goto_0
    return-void
    .line 51
.end method

.method public final updatePosition$1()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "updatePosition: "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    const-wide/16 v1, 0x1000

    .line 27
    const-string v3, "LargeScreenHeaderController"

    .line 29
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 34
    iget v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 36
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateBatteryMode()V

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method public final updateQQSPaddings()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0710e4    # @dimen/status_bar_left_clock_starting_padding '0.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 16
    const v2, 0x7f0710e3    # @dimen/status_bar_left_clock_end_padding '2.0dp'

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 26
    move-result v2

    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 30
    move-result v3

    .line 33
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 34
    return-void
    .line 37
.end method

.method public final updateSingleCarrier(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 3
    if-eqz p1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    .line 7
    if-nez p0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    or-int/2addr p1, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    if-eqz p1, :cond_4

    .line 41
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 43
    goto :goto_3

    .line 46
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    .line 47
    if-nez p0, :cond_3

    .line 49
    goto :goto_2

    .line 51
    :cond_3
    move-object v0, p0

    .line 52
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    .line 53
    :cond_4
    :goto_3
    return-void
    .line 56
.end method

.method public final updateTransition()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    .line 2
    const-string v1, "LargeScreenHeaderController"

    .line 4
    const-wide/16 v2, 0x1000

    .line 6
    iget-object v4, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "Large screen constraints set"

    .line 12
    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 14
    const v0, 0x7f0a04b2    # @id/large_screen_header_transition

    .line 17
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "Small screen constraints set"

    .line 24
    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 26
    const v0, 0x7f0a03ed    # @id/header_transition

    .line 29
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    .line 32
    :goto_0
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    .line 35
    move-result v0

    .line 38
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    .line 39
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 45
    :cond_1
    iget v1, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 47
    if-ne v1, v0, :cond_2

    .line 49
    const/4 v0, 0x0

    .line 51
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 52
    goto :goto_1

    .line 55
    :cond_2
    iget v1, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 56
    if-ne v1, v0, :cond_3

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 62
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v4, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updatePosition$1()V

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    .line 72
    if-nez v0, :cond_4

    .line 74
    iget p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsScrollY:I

    .line 76
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setScrollY(I)V

    .line 78
    :cond_4
    return-void
    .line 81
.end method

.method public final updateVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 4
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    if-eq v1, v2, :cond_7

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_2

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    .line 21
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 23
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_1

    .line 26
    move-object v1, v2

    .line 28
    :cond_1
    iget-boolean v3, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    .line 29
    if-nez v3, :cond_2

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    iput-boolean v0, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    .line 34
    new-instance v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

    .line 36
    const/4 v3, 0x1

    .line 38
    invoke-direct {v0, v1, v3}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;I)V

    .line 39
    iget-object v1, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    .line 47
    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 51
    if-nez v0, :cond_3

    .line 53
    move-object v0, v2

    .line 55
    :cond_3
    iget-boolean v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mIsSingleCarrier:Z

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateSingleCarrier(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 61
    if-nez v0, :cond_4

    .line 63
    goto :goto_1

    .line 65
    :cond_4
    move-object v2, v0

    .line 66
    :goto_1
    new-instance v0, Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 67
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 69
    iput-object v0, v2, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mOnSingleCarrierChangedListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 72
    goto :goto_2

    .line 74
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 75
    if-nez p0, :cond_6

    .line 77
    move-object p0, v2

    .line 79
    :cond_6
    iput-object v2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mOnSingleCarrierChangedListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 80
    :cond_7
    :goto_2
    return-void
    .line 82
.end method
