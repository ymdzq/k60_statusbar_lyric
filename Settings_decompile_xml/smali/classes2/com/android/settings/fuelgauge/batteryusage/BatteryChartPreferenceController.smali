.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryChartPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field private mBatteryChartViewGroup:Landroid/view/View;

.field mBatteryUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChartSummaryTextView:Landroid/widget/TextView;

.field mDailyChartIndex:I

.field final mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

.field mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field private mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

.field private final mHandler:Landroid/os/Handler;

.field private final mHourlyChartFadeInAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private final mHourlyChartFadeOutAdapter:Landroid/animation/AnimatorListenerAdapter;

.field mHourlyChartIndex:I

.field final mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

.field mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field private mHourlyChartVisible:Z

.field private mHourlyViewModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mIs24HourFormat:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mOnBatteryUsageUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;

.field private mOnScreenOnTimeUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;

.field mPrefContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$IDTCmVypHhPQWazQdRkLR_x4f_0(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryHistoryMap$0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZnXhatXkSvphyTZ9MEMkvf8aMxs(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartViewInner$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$_Rvfzg--PERwLdpat9FhW9SDaMA(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartViewInner$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bn_s9nNbY2XMWHxwj7WSi_fL_2U(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartView$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mL6FbgvzCztLIN6G_zNi_Itw2SE(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartViewInner$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zW81lAmx1fX9pKHiVdkHsQN1yhE(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartViewInner$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIs24HourFormat(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetLast(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;)V
    .locals 3

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 109
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartVisible:Z

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    .line 127
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->createHourlyChartAnimatorListenerAdapter(Z)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeInAdapter:Landroid/animation/AnimatorListenerAdapter;

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->createHourlyChartAnimatorListenerAdapter(Z)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeOutAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 131
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    .line 134
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    .line 141
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 142
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    .line 143
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private animateBatteryChartViewGroup()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 446
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 447
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private animateBatteryHourlyChartView(Z)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartVisible:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 458
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 460
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 461
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeInAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 462
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeOutAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 468
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 469
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private createHourlyChartAnimatorListenerAdapter(Z)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 483
    :goto_0
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    return-object v0
.end method

.method private getAccessibilityAnnounceMessage()Ljava/lang/String;
    .locals 2

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->battery_usage_breakdown_title_since_last_full_charge:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->battery_usage_breakdown_title_for_slot:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getAppBatteryUsageData(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 607
    :cond_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getAppBatteryUsageData(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 611
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 612
    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    if-eqz v2, :cond_2

    .line 613
    iget v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-wide v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 616
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static getAppBatteryUsageData(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 576
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getHistoryMapSinceLastFullCharge(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 577
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getBatterySinceLastFullChargeUsageData() size=%d time=%d/ms"

    .line 580
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageData(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const/4 v0, -0x1

    .line 589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 588
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 589
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez p0, :cond_2

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v3

    :cond_3
    :goto_0
    return-object v3
.end method

.method private static getLast(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 595
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTotalForegroundUsageTime()J
    .locals 4

    .line 522
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, -0x1

    .line 527
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 528
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez p0, :cond_1

    return-wide v0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 534
    iget-wide v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method static getTotalHours(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getDailyBatteryLevels()Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object p0

    .line 568
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    long-to-int p0, v1

    return p0
.end method

.method private isAllSelected()Z
    .locals 2

    .line 544
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isBatteryLevelDataInOneDay()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBatteryLevelDataInOneDay()Z
    .locals 1

    .line 540
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBatteryUsageMapNullOrEmpty()Z
    .locals 3

    .line 550
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 555
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-eqz p0, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$setBatteryChartView$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryChartViewInner(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    return-void
.end method

.method private synthetic lambda$setBatteryChartViewInner$2()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 285
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getAccessibilityAnnounceMessage()Ljava/lang/String;

    move-result-object p0

    .line 284
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setBatteryChartViewInner$3(I)V
    .locals 3

    .line 277
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDailyChartSelect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const/4 v0, -0x1

    .line 282
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    .line 284
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x708

    goto :goto_0

    :cond_1
    const/16 p1, 0x707

    .line 290
    :goto_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 286
    invoke-virtual {v1, v2, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic lambda$setBatteryChartViewInner$4()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 306
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getAccessibilityAnnounceMessage()Ljava/lang/String;

    move-result-object p0

    .line 305
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setBatteryChartViewInner$5(I)V
    .locals 3

    .line 295
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 299
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne v0, p1, :cond_1

    return-void

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHourlyChartSelect:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryChartPreferenceController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    .line 305
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-ne p1, v1, :cond_2

    const/16 p1, 0x6e7

    goto :goto_0

    :cond_2
    const/16 p1, 0x6e6

    .line 311
    :goto_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 307
    invoke-virtual {v0, v2, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic lambda$setBatteryHistoryMap$0(Ljava/util/Map;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    .line 222
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->logScreenUsageTime()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void
.end method

.method private logScreenUsageTime()V
    .locals 5

    .line 502
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 506
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 505
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 506
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v0, :cond_1

    return-void

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getScreenOnTime()J

    move-result-wide v3

    long-to-int v0, v3

    const/16 v3, 0x718

    .line 511
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 518
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getTotalForegroundUsageTime()J

    move-result-wide v2

    long-to-int p0, v2

    const/16 v2, 0x719

    .line 515
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method private refreshUiWithLevelDataCase()Z
    .locals 6

    const/4 v0, 0x1

    .line 374
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setChartSummaryVisible(Z)V

    .line 376
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isBatteryLevelDataInOneDay()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iput v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    goto :goto_0

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 383
    iput v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->setSelectedIndex(I)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    .line 389
    :goto_0
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v1, v2, :cond_2

    .line 391
    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryHourlyChartView(Z)V

    goto :goto_1

    .line 393
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryHourlyChartView(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 395
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 396
    iget v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 397
    iput v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 399
    :cond_3
    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->setSelectedIndex(I)V

    .line 400
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    .line 403
    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method private refreshUiWithNoLevelDataCase()Z
    .locals 6

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setChartSummaryVisible(Z)V

    .line 353
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    .line 359
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    return v0

    :cond_0
    const/4 v4, -0x1

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 363
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private setBatteryChartViewInner(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 1

    .line 275
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 276
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V

    .line 293
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 294
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void
.end method

.method private setChartSummaryVisible(Z)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 475
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 191
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "battery_chart"

    return-object p0
.end method

.method getSlotInformation()Ljava/lang/String;
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getFullText(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getFullText(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isBatteryLevelDataInOneDay()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 431
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->battery_usage_day_and_hour:I

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "daily_chart_index"

    .line 155
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const-string v0, "hourly_chart_index"

    .line 157
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 159
    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "onCreate() dailyIndex=%d hourlyIndex=%d"

    .line 159
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    .line 185
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    .line 166
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x758

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "daily_chart_index"

    .line 174
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "hourly_chart_index"

    .line 175
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "onSaveInstanceState() dailyIndex=%d hourlyIndex=%d"

    .line 176
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method refreshUi()Z
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUiWithLevelDataCase()Z

    move-result v0

    goto :goto_1

    .line 329
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUiWithNoLevelDataCase()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    return v1

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnBatteryUsageUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-eqz v0, :cond_4

    .line 341
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnScreenOnTimeUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;

    .line 342
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getScreenOnTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-interface {v1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;->onScreenOnTimeUpdated(Ljava/lang/Long;Ljava/lang/String;)V

    .line 345
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnBatteryUsageUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isBatteryUsageMapNullOrEmpty()Z

    move-result p0

    .line 345
    invoke-interface {v1, v0, v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;->onBatteryUsageUpdated(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;Ljava/lang/String;Z)V

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 2

    .line 258
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->battery_chart_group:I

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eq v0, p2, :cond_2

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryChartViewGroup()V

    .line 266
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 269
    sget p2, Lcom/android/settings/R$id;->chart_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    :cond_4
    return-void
.end method

.method setBatteryHistoryMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBatteryHistoryMap() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    .line 214
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryChartViewGroup()V

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    .line 219
    invoke-static {v0, v2, p1, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->getBatteryLevelData(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object p1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryLevelData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v2, 0x709

    .line 229
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getTotalHours(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)I

    move-result v3

    .line 226
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 232
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 233
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 235
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void

    .line 239
    :cond_1
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 240
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getDailyBatteryLevels()Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getLevels()Ljava/util/List;

    move-result-object v1

    .line 241
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getDailyBatteryLevels()Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->CENTER_OF_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$LabelTextGenerator;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    .line 246
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getHourlyBatteryLevelsPerDay()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    .line 247
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 248
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getLevels()Ljava/util/List;

    move-result-object v4

    .line 249
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v1

    sget-object v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->BETWEEN_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    .line 251
    invoke-virtual {v6, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->updateSpecialCaseContext(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    move-result-object v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$LabelTextGenerator;)V

    .line 247
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void
.end method

.method setOnBatteryUsageUpdatedListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnBatteryUsageUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;

    return-void
.end method

.method setOnScreenOnTimeUpdatedListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnScreenOnTimeUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;

    return-void
.end method
