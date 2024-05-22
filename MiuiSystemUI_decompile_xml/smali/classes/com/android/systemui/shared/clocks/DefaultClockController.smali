.class public final Lcom/android/systemui/shared/clocks/DefaultClockController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ClockController;


# instance fields
.field public final burmeseLineSpacing:F

.field public final burmeseNumerals:Ljava/lang/String;

.field public final clocks:Ljava/util/List;

.field public final config:Lcom/android/systemui/plugins/ClockConfig;

.field public final defaultLineSpacing:F

.field public final events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

.field public final hasStepClockAnimation:Z

.field public final largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

.field public final resources:Landroid/content/res/Resources;

.field public final smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/systemui/plugins/ClockSettings;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    .line 5
    iput-boolean p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->hasStepClockAnimation:Z

    .line 7
    const-string p5, "my"

    .line 9
    invoke-static {p5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 11
    move-result-object p5

    .line 14
    invoke-static {p5}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    .line 15
    move-result-object p5

    .line 18
    const-wide/32 v0, 0x499602d2

    .line 19
    invoke-virtual {p5, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 22
    move-result-object p5

    .line 25
    iput-object p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseNumerals:Ljava/lang/String;

    .line 26
    const p5, 0x7f070464    # @dimen/keyguard_clock_line_spacing_scale_burmese '1.0'

    .line 28
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getFloat(I)F

    .line 31
    move-result p5

    .line 34
    iput p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseLineSpacing:F

    .line 35
    const p5, 0x7f070463    # @dimen/keyguard_clock_line_spacing_scale '0.7'

    .line 37
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getFloat(I)F

    .line 40
    move-result p3

    .line 43
    iput p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->defaultLineSpacing:F

    .line 44
    new-instance p3, Lcom/android/systemui/plugins/ClockConfig;

    .line 46
    const/4 p5, 0x0

    .line 48
    const/4 v0, 0x3

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p3, p5, p5, v0, v1}, Lcom/android/systemui/plugins/ClockConfig;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->config:Lcom/android/systemui/plugins/ClockConfig;

    .line 54
    new-instance p3, Landroid/widget/FrameLayout;

    .line 56
    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 61
    const v0, 0x7f0d0069    # @layout/clock_default_small 'res/layout/clock_default_small.xml'

    .line 63
    invoke-virtual {p2, v0, p3, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 70
    if-eqz p4, :cond_0

    .line 72
    invoke-virtual {p4}, Lcom/android/systemui/plugins/ClockSettings;->getSeedColor()Ljava/lang/Integer;

    .line 74
    move-result-object v2

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move-object v2, v1

    .line 79
    :goto_0
    invoke-direct {p1, p0, v0, v2}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;)V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 83
    new-instance p1, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 85
    const v2, 0x7f0d0068    # @layout/clock_default_large 'res/layout/clock_default_large.xml'

    .line 87
    invoke-virtual {p2, v2, p3, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    move-result-object p2

    .line 93
    check-cast p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 94
    if-eqz p4, :cond_1

    .line 96
    invoke-virtual {p4}, Lcom/android/systemui/plugins/ClockSettings;->getSeedColor()Ljava/lang/Integer;

    .line 98
    move-result-object v1

    .line 101
    :cond_1
    invoke-direct {p1, p0, p2, v1}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;)V

    .line 102
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 105
    filled-new-array {v0, p2}, [Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 107
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    .line 115
    new-instance p1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    .line 117
    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;)V

    .line 119
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 124
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->onLocaleChanged(Ljava/util/Locale;)V

    .line 128
    return-void
    .line 131
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "smallClock="

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dump(Ljava/io/PrintWriter;)V

    .line 12
    const-string v0, "largeClock="

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dump(Ljava/io/PrintWriter;)V

    .line 24
    return-void
    .line 27
.end method

.method public final getConfig()Lcom/android/systemui/plugins/ClockConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->config:Lcom/android/systemui/plugins/ClockConfig;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getEvents()Lcom/android/systemui/plugins/ClockEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 2
    return-object p0
    .line 4
.end method

.method public final initialize(Landroid/content/res/Resources;FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->recomputePadding(Landroid/graphics/Rect;)V

    .line 5
    new-instance v1, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;

    .line 8
    iget-object v2, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 10
    invoke-direct {v1, p0, v2, p2, p3}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    .line 12
    iput-object v1, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 17
    new-instance v2, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    .line 19
    iget-object v3, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 21
    invoke-direct {v2, v3, p2, p3}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    .line 23
    iput-object v2, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->onColorPaletteChanged(Landroid/content/res/Resources;)V

    .line 30
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 37
    iget-object p0, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->onTimeTick()V

    .line 42
    iget-object p0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->onTimeTick()V

    .line 47
    return-void
    .line 50
.end method
