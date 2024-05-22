.class public abstract Landroidx/leanback/R$styleable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LeanbackGuidedStepTheme:[I

.field public static final PagingIndicator:[I

.field public static final lbBaseCardView:[I

.field public static final lbBaseCardView_Layout:[I

.field public static final lbDatePicker:[I

.field public static final lbImageCardView:[I

.field public static final lbPicker:[I

.field public static final lbPinPicker:[I

.field public static final lbResizingTextView:[I

.field public static final lbSearchOrbView:[I

.field public static final lbSlide:[I

.field public static final lbTimePicker:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x33

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Landroidx/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    .line 9
    const/4 v0, 0x7

    .line 11
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_1

    .line 14
    sput-object v0, Landroidx/leanback/R$styleable;->PagingIndicator:[I

    .line 17
    const/16 v0, 0x8

    .line 19
    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_2

    .line 23
    sput-object v0, Landroidx/leanback/R$styleable;->lbBaseCardView:[I

    .line 26
    const v0, 0x7f040463    # @attr/layout_viewType

    .line 28
    filled-new-array {v0}, [I

    .line 31
    move-result-object v0

    .line 34
    sput-object v0, Landroidx/leanback/R$styleable;->lbBaseCardView_Layout:[I

    .line 35
    const v0, 0x101033f    # @android:attr/minDate

    .line 37
    const v1, 0x1010340    # @android:attr/maxDate

    .line 40
    const v2, 0x7f04021c

    .line 43
    const v3, 0x7f0405bc    # @attr/pickerItemLayout

    .line 46
    const v4, 0x7f0405bd

    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 52
    move-result-object v0

    .line 55
    sput-object v0, Landroidx/leanback/R$styleable;->lbDatePicker:[I

    .line 56
    const v0, 0x7f0403d8    # @attr/infoAreaBackground

    .line 58
    const v1, 0x7f040466    # @attr/lbImageCardViewType

    .line 61
    filled-new-array {v0, v1}, [I

    .line 64
    move-result-object v0

    .line 67
    sput-object v0, Landroidx/leanback/R$styleable;->lbImageCardView:[I

    .line 68
    filled-new-array {v3, v4}, [I

    .line 70
    move-result-object v0

    .line 73
    sput-object v0, Landroidx/leanback/R$styleable;->lbPicker:[I

    .line 74
    const v0, 0x7f0401cc

    .line 76
    filled-new-array {v0, v3, v4}, [I

    .line 79
    move-result-object v0

    .line 82
    sput-object v0, Landroidx/leanback/R$styleable;->lbPinPicker:[I

    .line 83
    const v0, 0x7f040649    # @attr/resizedPaddingAdjustmentTop

    .line 85
    const v1, 0x7f04064a    # @attr/resizedTextSize

    .line 88
    const v2, 0x7f0404a8

    .line 91
    const v5, 0x7f040647    # @attr/resizeTrigger

    .line 94
    const v6, 0x7f040648    # @attr/resizedPaddingAdjustmentBottom

    .line 97
    filled-new-array {v2, v5, v6, v0, v1}, [I

    .line 100
    move-result-object v0

    .line 103
    sput-object v0, Landroidx/leanback/R$styleable;->lbResizingTextView:[I

    .line 104
    const v0, 0x7f04067e    # @attr/searchOrbIcon

    .line 106
    const v1, 0x7f04067f    # @attr/searchOrbIconColor

    .line 109
    const v2, 0x7f04067c    # @attr/searchOrbBrightColor

    .line 112
    const v5, 0x7f04067d    # @attr/searchOrbColor

    .line 115
    filled-new-array {v2, v5, v0, v1}, [I

    .line 118
    move-result-object v0

    .line 121
    sput-object v0, Landroidx/leanback/R$styleable;->lbSearchOrbView:[I

    .line 122
    const v0, 0x10103e2    # @android:attr/startDelay

    .line 124
    const v1, 0x7f040467

    .line 127
    const v2, 0x1010141    # @android:attr/interpolator

    .line 130
    const v5, 0x1010198    # @android:attr/duration

    .line 133
    filled-new-array {v2, v5, v0, v1}, [I

    .line 136
    move-result-object v0

    .line 139
    sput-object v0, Landroidx/leanback/R$styleable;->lbSlide:[I

    .line 140
    const v0, 0x7f0403e0

    .line 142
    const v1, 0x7f04089d

    .line 145
    filled-new-array {v0, v3, v4, v1}, [I

    .line 148
    move-result-object v0

    .line 151
    sput-object v0, Landroidx/leanback/R$styleable;->lbTimePicker:[I

    .line 152
    return-void

    .line 154
    nop

    .line 155
    :array_0
    .array-data 4
        0x7f040345    # @attr/guidanceBreadcrumbStyle
        0x7f040346    # @attr/guidanceContainerStyle
        0x7f040347    # @attr/guidanceDescriptionStyle
        0x7f040348
        0x7f040349    # @attr/guidanceIconStyle
        0x7f04034a    # @attr/guidanceTitleStyle
        0x7f04034d
        0x7f04034e
        0x7f04034f
        0x7f040350    # @attr/guidedActionContentWidthWeight
        0x7f040351    # @attr/guidedActionContentWidthWeightTwoPanels
        0x7f040352    # @attr/guidedActionDescriptionMinLines
        0x7f040353    # @attr/guidedActionDisabledChevronAlpha
        0x7f040354    # @attr/guidedActionEnabledChevronAlpha
        0x7f040355    # @attr/guidedActionItemCheckmarkStyle
        0x7f040356    # @attr/guidedActionItemChevronStyle
        0x7f040357    # @attr/guidedActionItemContainerStyle
        0x7f040358    # @attr/guidedActionItemContentStyle
        0x7f040359    # @attr/guidedActionItemDescriptionStyle
        0x7f04035a    # @attr/guidedActionItemIconStyle
        0x7f04035b    # @attr/guidedActionItemTitleStyle
        0x7f04035c    # @attr/guidedActionPressedAnimation
        0x7f04035d    # @attr/guidedActionTitleMaxLines
        0x7f04035e    # @attr/guidedActionTitleMinLines
        0x7f04035f
        0x7f040360    # @attr/guidedActionUnpressedAnimation
        0x7f040361    # @attr/guidedActionVerticalPadding
        0x7f040362    # @attr/guidedActionsBackground
        0x7f040363    # @attr/guidedActionsBackgroundDark
        0x7f040364
        0x7f040365    # @attr/guidedActionsElevation
        0x7f040366
        0x7f040367    # @attr/guidedActionsListStyle
        0x7f040368    # @attr/guidedActionsSelectorDrawable
        0x7f040369
        0x7f04036a
        0x7f04036b
        0x7f04036c    # @attr/guidedButtonActionsListStyle
        0x7f04036d    # @attr/guidedButtonActionsWidthWeight
        0x7f04036e    # @attr/guidedStepBackground
        0x7f04036f
        0x7f040370
        0x7f040371    # @attr/guidedStepHeightWeight
        0x7f040372    # @attr/guidedStepImeAppearingAnimation
        0x7f040373    # @attr/guidedStepImeDisappearingAnimation
        0x7f040374    # @attr/guidedStepKeyline
        0x7f040375
        0x7f040376
        0x7f040377    # @attr/guidedStepTheme
        0x7f040378    # @attr/guidedStepThemeFlag
        0x7f040379    # @attr/guidedSubActionsListStyle
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x7f040096
        0x7f040097
        0x7f04009b
        0x7f040264
        0x7f040269
        0x7f04026a
        0x7f040465
    .end array-data

    :array_2
    .array-data 4
        0x7f040074
        0x7f04011e    # @attr/cardBackground
        0x7f040122    # @attr/cardForeground
        0x7f040126    # @attr/cardType
        0x7f0402d4
        0x7f0403d9    # @attr/infoVisibility
        0x7f040690
        0x7f040691
    .end array-data
.end method
