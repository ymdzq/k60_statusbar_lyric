.class public final Lcom/android/keyguard/KeyguardStatusAreaView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TRANSLATE_X_AOD:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;


# instance fields
.field public translateXFromAod:F

.field public translateXFromClockDesign:F

.field public translateXFromUnfold:F

.field public translateYFromClockDesign:F

.field public translateYFromClockSize:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;-><init>(I)V

    .line 5
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 10
    const v2, 0x7f0a09e0    # @id/translate_x_clock_design_animator_end_tag

    .line 12
    const v3, 0x7f0a09e2    # @id/translate_x_clock_design_animator_tag

    .line 15
    const v4, 0x7f0a09e1    # @id/translate_x_clock_design_animator_start_tag

    .line 18
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 21
    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 24
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;

    .line 26
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;-><init>(I)V

    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 32
    const v2, 0x7f0a09dd    # @id/translate_x_aod_animator_end_tag

    .line 34
    const v3, 0x7f0a09df    # @id/translate_x_aod_animator_tag

    .line 37
    const v4, 0x7f0a09de    # @id/translate_x_aod_animator_start_tag

    .line 40
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 43
    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_AOD:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 46
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;

    .line 48
    const/4 v1, 0x3

    .line 50
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;-><init>(I)V

    .line 51
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 54
    const v2, 0x7f0a09e6    # @id/translate_y_clock_size_animator_end_tag

    .line 56
    const v3, 0x7f0a09e8    # @id/translate_y_clock_size_animator_tag

    .line 59
    const v4, 0x7f0a09e7    # @id/translate_y_clock_size_animator_start_tag

    .line 62
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 65
    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 68
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;

    .line 70
    const/4 v1, 0x2

    .line 72
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;-><init>(I)V

    .line 73
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 76
    const v2, 0x7f0a09e3    # @id/translate_y_clock_design_animator_end_tag

    .line 78
    const v3, 0x7f0a09e5    # @id/translate_y_clock_design_animator_tag

    .line 81
    const v4, 0x7f0a09e4    # @id/translate_y_clock_design_animator_start_tag

    .line 84
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 87
    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 90
    return-void
    .line 92
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getTranslateXFromAod()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromAod:F

    .line 2
    return p0
    .line 4
.end method

.method public final getTranslateXFromClockDesign()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromClockDesign:F

    .line 2
    return p0
    .line 4
.end method

.method public final getTranslateXFromUnfold()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromUnfold:F

    .line 2
    return p0
    .line 4
.end method

.method public final getTranslateYFromClockDesign()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockDesign:F

    .line 2
    return p0
    .line 4
.end method

.method public final getTranslateYFromClockSize()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockSize:F

    .line 2
    return p0
    .line 4
.end method

.method public final setTranslateXFromAod(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromAod:F

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromAod()F

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromClockDesign()F

    .line 8
    move-result v0

    .line 11
    add-float/2addr v0, p1

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromUnfold()F

    .line 13
    move-result p1

    .line 16
    add-float/2addr p1, v0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 18
    return-void
    .line 21
.end method

.method public final setTranslateXFromClockDesign(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromClockDesign:F

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromAod()F

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromClockDesign()F

    .line 8
    move-result v0

    .line 11
    add-float/2addr v0, p1

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromUnfold()F

    .line 13
    move-result p1

    .line 16
    add-float/2addr p1, v0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 18
    return-void
    .line 21
.end method

.method public final setTranslateXFromUnfold(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromUnfold:F

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromAod()F

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromClockDesign()F

    .line 8
    move-result v0

    .line 11
    add-float/2addr v0, p1

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromUnfold()F

    .line 13
    move-result p1

    .line 16
    add-float/2addr p1, v0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 18
    return-void
    .line 21
.end method

.method public final setTranslateYFromClockDesign(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockDesign:F

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateYFromClockSize()F

    .line 4
    move-result v0

    .line 7
    add-float/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 9
    return-void
    .line 12
.end method

.method public final setTranslateYFromClockSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockSize:F

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateYFromClockDesign()F

    .line 4
    move-result v0

    .line 7
    add-float/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 9
    return-void
    .line 12
.end method
