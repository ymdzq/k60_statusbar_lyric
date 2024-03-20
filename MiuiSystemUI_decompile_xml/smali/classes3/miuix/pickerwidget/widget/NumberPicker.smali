.class public Lmiuix/pickerwidget/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

.field public static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final MARGIN_LABEL_LEFT:I

.field public final MARGIN_LABEL_TOP:I

.field public final mAdjustScroller:Landroid/widget/Scroller;

.field public mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field public mBottomSelectionDividerBottom:I

.field public mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field public final mComputeMaxWidth:Z

.field public mCurrentScrollOffset:I

.field public mDecrementVirtualButtonPressed:Z

.field public mDisplayedMaxText:Ljava/lang/String;

.field public mDisplayedMaxTextWidth:F

.field public mDisplayedValues:[Ljava/lang/String;

.field public final mFlingScroller:Landroid/widget/Scroller;

.field public mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field public final mHasSelectorWheel:Z

.field public final mIHoverStyle:Lmiuix/animation/IHoverStyle;

.field public final mId:I

.field public mIncrementVirtualButtonPressed:Z

.field public mIngonreMoveEvents:Z

.field public mInitialScrollOffset:I

.field public final mInputText:Landroid/widget/EditText;

.field public mIsHoverEnter:Z

.field public mLabel:Ljava/lang/CharSequence;

.field public mLabelPaint:Landroid/graphics/Paint;

.field public mLabelTextColor:I

.field public mLabelTextSize:I

.field public mLabelTextSizeThreshold:F

.field public mLabelTextSizeTrimFactor:F

.field public mLastDownEventTime:J

.field public mLastDownEventY:F

.field public mLastDownOrMoveEventY:F

.field public mLastHandledDownDpadKeyCode:I

.field public mLongPressUpdateInterval:J

.field public mMaxFlingSpeedFactor:F

.field public final mMaxHeight:I

.field public mMaxValue:I

.field public mMaxWidth:I

.field public final mMaximumFlingVelocity:I

.field public mMeasureBackgroundEnabled:Z

.field public final mMinHeight:I

.field public mMinValue:I

.field public final mMinWidth:I

.field public final mMinimumFlingVelocity:I

.field public mModDevice:Ljava/lang/String;

.field public mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

.field public mOriginLabelTextSize:I

.field public mOriginTextSizeHighlight:I

.field public mOriginTextSizeHint:I

.field public final mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

.field public mPreviousScrollerY:I

.field public mScrollState:I

.field public final mSelectionDividerHeight:I

.field public final mSelectionDividersDistance:I

.field public mSelectorElementHeight:I

.field public final mSelectorIndexToStringCache:Landroid/util/SparseArray;

.field public final mSelectorIndices:[I

.field public mSelectorTextGapHeight:I

.field public final mSelectorWheelPaint:Landroid/graphics/Paint;

.field public mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

.field public mShowSoftInputOnTap:Z

.field public mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

.field public mTextColorHighlight:I

.field public mTextColorHint:I

.field public mTextPadding:I

.field public final mTextSize:I

.field public mTextSizeHighlight:I

.field public mTextSizeHint:I

.field public mTextSizeThreshold:F

.field public mTopSelectionDividerTop:I

.field public final mTouchSlop:I

.field public mUpdateText:Ljava/lang/String;

.field public mValue:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mWrapSelectorWheel:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    .line 10
    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>(I)V

    .line 12
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    .line 15
    const/16 v0, 0xa

    .line 17
    new-array v0, v0, [C

    .line 19
    fill-array-data v0, :array_0

    .line 21
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 24
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
    .line 28
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04057f    # @attr/numberPickerStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v2, 0x190

    .line 7
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v2, 0x12c

    .line 8
    iput-wide v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 9
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 10
    iput-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v3, -0x80000000

    .line 11
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v3, 0x0

    .line 12
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v4, -0x1

    .line 13
    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const v5, 0x3f4ccccd    # 0.8f

    .line 14
    iput v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    iput v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 16
    iput-boolean v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 17
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070b1b    # @dimen/miuix_appcompat_number_picker_label_margin_left '2.0dp'

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070b1c    # @dimen/miuix_appcompat_number_picker_label_margin_top '0.0dp'

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lmiuix/pickerwidget/R$styleable;->NumberPicker:[I

    const v9, 0x7f14084f    # @style/Widget.NumberPicker.DayNight

    invoke-virtual {v7, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 23
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    const p3, 0x7f070b21    # @dimen/miuix_appcompat_number_picker_text_size_highlight_normal '24.0sp'

    .line 24
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const/16 v2, 0x8

    .line 25
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    const p3, 0x7f070b24    # @dimen/miuix_appcompat_number_picker_text_size_hint_normal '18.0sp'

    .line 26
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const/16 v7, 0x9

    .line 27
    invoke-virtual {p2, v7, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    const p3, 0x7f070b1e    # @dimen/miuix_appcompat_number_picker_label_text_size '10.0sp'

    .line 28
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const/4 v7, 0x4

    .line 29
    invoke-virtual {p2, v7, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    const p3, 0x7f06048a    # @color/miuix_appcompat_default_number_picker_highlight_color '@color/miuix_color_blue_light_primary_default'

    .line 30
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 31
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    const p3, 0x7f06048c    # @color/miuix_appcompat_default_number_picker_hint_color '#ff1b1b1b'

    .line 32
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 33
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    const p3, 0x7f060599    # @color/miuix_appcompat_number_picker_label_color '@color/miuix_color_blue_light_primary_default'

    .line 34
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const/4 v8, 0x6

    .line 35
    invoke-virtual {p2, v8, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    const p3, 0x7f070b1d    # @dimen/miuix_appcompat_number_picker_label_padding '16.0dp'

    .line 36
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const/4 v6, 0x5

    .line 37
    invoke-virtual {p2, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 38
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 40
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 41
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    .line 42
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 43
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 45
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 46
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 p2, 0x42340000    # 45.0f

    mul-float/2addr p2, v5

    float-to-int p2, p2

    .line 47
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 48
    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000    # 202.0f

    mul-float/2addr v5, p2

    float-to-int p2, v5

    .line 49
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    .line 50
    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 51
    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 52
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 53
    new-instance p2, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 54
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d020a    # @layout/miuix_appcompat_number_picker_layout 'res/layout/miuix_appcompat_number_picker_layout.xml'

    .line 56
    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a06bb    # @id/number_picker_input

    .line 57
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 58
    new-instance p3, Lmiuix/pickerwidget/widget/NumberPicker$3;

    invoke-direct {p3, p0}, Lmiuix/pickerwidget/widget/NumberPicker$3;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 59
    new-instance p3, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;

    invoke-direct {p3, p0}, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    filled-new-array {p3}, [Landroid/text/InputFilter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 60
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 61
    invoke-virtual {p2, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 62
    invoke-virtual {p2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    const p3, 0x800003

    .line 63
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setGravity(I)V

    const/4 p3, 0x0

    .line 64
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setScaleX(F)V

    .line 65
    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 66
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    invoke-virtual {p2, p3, v1, v3, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 67
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    .line 68
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/2addr p1, v2

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 72
    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 73
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 74
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 78
    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 79
    sget-object p3, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 80
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 85
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 88
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 89
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 90
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 92
    :cond_0
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 93
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$1;

    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$1;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 94
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$2;

    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$2;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static getAlphaGradient(IFZ)I
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_0

    .line 6
    return p0

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    neg-float p1, p1

    .line 11
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 12
    move-result p2

    .line 15
    int-to-float p2, p2

    .line 16
    mul-float/2addr p1, p2

    .line 17
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 18
    move-result p2

    .line 21
    int-to-float p2, p2

    .line 22
    add-float/2addr p1, p2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 25
    move-result p2

    .line 28
    int-to-float p2, p2

    .line 29
    mul-float/2addr p1, p2

    .line 30
    :goto_0
    float-to-int p1, p1

    .line 31
    const p2, 0xffffff

    .line 32
    and-int/2addr p0, p2

    .line 35
    shl-int/lit8 p1, p1, 0x18

    .line 36
    or-int/2addr p0, p1

    .line 38
    return p0
    .line 39
.end method

.method public static makeMeasureSpec(II)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    return p0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result v0

    .line 9
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result v1

    .line 13
    const/high16 v2, -0x80000000

    .line 14
    const/high16 v3, 0x40000000    # 2.0f

    .line 16
    if-eq v1, v2, :cond_3

    .line 18
    if-eqz v1, :cond_2

    .line 20
    if-ne v1, v3, :cond_1

    .line 22
    return p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p1, "Unknown measure mode: "

    .line 27
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 36
    :cond_2
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 37
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 42
    move-result p0

    .line 45
    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    move-result p0

    .line 49
    return p0
    .line 50
.end method


# virtual methods
.method public final changeValueByOne(Z)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 6
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 12
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 20
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 26
    if-eqz p1, :cond_1

    .line 28
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 30
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 35
    neg-int v5, p1

    .line 37
    const/16 v6, 0x12c

    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    iget-object v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 44
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    iget v11, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 49
    const/16 v12, 0x12c

    .line 51
    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 56
    goto :goto_1

    .line 59
    :cond_2
    const/4 v0, 0x1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 63
    add-int/2addr p1, v0

    .line 65
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 66
    goto :goto_1

    .line 69
    :cond_3
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 70
    sub-int/2addr p1, v0

    .line 72
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 73
    :goto_1
    return-void
    .line 76
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 19
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 22
    move-result v1

    .line 25
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 26
    if-nez v2, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    .line 30
    move-result v2

    .line 33
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 34
    :cond_1
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 36
    sub-int v2, v1, v2

    .line 38
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, v3, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 41
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 44
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 46
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 52
    if-ne v0, v1, :cond_3

    .line 54
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 62
    :cond_2
    invoke-virtual {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 65
    goto :goto_0

    .line 68
    :cond_3
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 69
    const/4 v1, 0x1

    .line 71
    if-eq v0, v1, :cond_5

    .line 72
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 78
    :cond_5
    :goto_0
    return-void
    .line 81
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x13

    .line 6
    const/16 v2, 0x14

    .line 8
    if-eq v0, v1, :cond_1

    .line 10
    if-eq v0, v2, :cond_1

    .line 12
    const/16 v1, 0x17

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    const/16 v1, 0x42

    .line 18
    if-eq v0, v1, :cond_0

    .line 20
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 23
    goto :goto_3

    .line 26
    :cond_1
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 27
    if-nez v1, :cond_2

    .line 29
    goto :goto_3

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    move-result v1

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    if-eq v1, v3, :cond_3

    .line 39
    goto :goto_3

    .line 41
    :cond_3
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 42
    if-ne v1, v0, :cond_9

    .line 44
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 47
    return v3

    .line 49
    :cond_4
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 50
    if-nez v1, :cond_6

    .line 52
    if-ne v0, v2, :cond_5

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 57
    move-result v1

    .line 60
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 61
    move-result v4

    .line 64
    if-le v1, v4, :cond_9

    .line 65
    goto :goto_1

    .line 67
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 68
    move-result v1

    .line 71
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 72
    move-result v4

    .line 75
    if-ge v1, v4, :cond_9

    .line 76
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 78
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 81
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 83
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 86
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 88
    move-result p1

    .line 91
    if-eqz p1, :cond_8

    .line 92
    if-ne v0, v2, :cond_7

    .line 94
    move p1, v3

    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const/4 p1, 0x0

    .line 98
    :goto_2
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 99
    :cond_8
    return v3

    .line 102
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 103
    move-result p0

    .line 106
    return p0
    .line 107
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v0

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 20
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 13
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method

.method public final drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 5
    return-void
    .line 8
.end method

.method public final ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 13
    if-lt p1, v1, :cond_3

    .line 15
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 17
    if-le p1, v2, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 22
    if-eqz v2, :cond_2

    .line 24
    sub-int p0, p1, v1

    .line 26
    aget-object p0, v2, p0

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    const-string p0, ""

    .line 36
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    return-void
    .line 41
.end method

.method public final ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 2
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 4
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 12
    move-result v1

    .line 15
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 16
    div-int/lit8 v3, v2, 0x2

    .line 18
    if-le v1, v3, :cond_1

    .line 20
    if-lez v0, :cond_0

    .line 22
    neg-int v2, v2

    .line 24
    :cond_0
    add-int/2addr v0, v2

    .line 25
    :cond_1
    move v5, v0

    .line 26
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 27
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/16 v6, 0x320

    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 37
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_2
    return v1
    .line 42
.end method

.method public final formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    check-cast p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    .line 6
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    .line 8
    invoke-static {p0, p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    invoke-static {p0, p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    :goto_0
    return-object p0
    .line 20
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 0

    .line 1
    const p0, 0x3f666666    # 0.9f

    .line 2
    return p0
    .line 5
.end method

.method public getDisplayedMaxText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, ""

    .line 6
    :cond_0
    return-object p0
    .line 8
.end method

.method public getDisplayedMaxTextWidth()F
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 8
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 10
    int-to-float v2, v2

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 22
    move-result v1

    .line 25
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    return v1
    .line 31
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getLabelWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 16
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
    .line 30
.end method

.method public getMarginLabelLeft()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 2
    return p0
    .line 4
.end method

.method public getMaxValue()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 2
    return p0
    .line 4
.end method

.method public getMinValue()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 2
    return p0
    .line 4
.end method

.method public getOriginTextSizeHighlight()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 2
    return p0
    .line 4
.end method

.method public getOriginTextSizeHint()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    .line 2
    return p0
    .line 4
.end method

.method public getOriginalLabelWidth()F
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 18
    move-result v0

    .line 21
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 22
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 24
    int-to-float v2, v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 30
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 32
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 38
    move-result v1

    .line 41
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    return v1

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
    .line 49
.end method

.method public final getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    if-nez v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 12
    array-length v1, v1

    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 21
    aget-object v1, v1, v0

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 35
    add-int/2addr p0, v0

    .line 37
    return p0

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    return p0

    .line 46
    :catch_0
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 47
    return p0
    .line 49
.end method

.method public getTextSizeHighlight()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 2
    return p0
    .line 4
.end method

.method public getTextSizeHint()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 2
    return p0
    .line 4
.end method

.method public getTopFadingEdgeStrength()F
    .locals 0

    .line 1
    const p0, 0x3f666666    # 0.9f

    .line 2
    return p0
    .line 5
.end method

.method public getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 2
    return p0
    .line 4
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 2
    return p0
    .line 4
.end method

.method public final initSoundPlayer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-string v0, "NumberPicker_sound_play"

    .line 6
    sget-object v1, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    .line 8
    const-class v1, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    .line 13
    move-object v3, v2

    .line 15
    check-cast v3, Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 22
    if-nez v3, :cond_0

    .line 24
    new-instance v3, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 26
    invoke-direct {v3}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;-><init>()V

    .line 28
    check-cast v2, Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    iget v0, v3, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    iput v0, v3, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 41
    :goto_0
    iget-object v0, v3, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 45
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v1

    .line 49
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 50
    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    .line 52
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 64
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    .line 65
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v2, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 68
    move-result-object p0

    .line 71
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v1

    .line 79
    throw p0

    .line 80
    :cond_1
    :goto_1
    return-void
    .line 81
.end method

.method public final initThreshHolds()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f070b9f    # @dimen/miuix_label_text_size_small '10.0dp'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 27
    const v1, 0x7f070c1f    # @dimen/miuix_text_size_small '28.0dp'

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    .line 36
    return-void
    .line 38
.end method

.method public final initializeSelectorWheel()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 5
    array-length v1, v0

    .line 7
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 8
    mul-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 11
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 15
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    sub-int/2addr v2, v1

    .line 20
    int-to-float v1, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    cmpg-float v3, v1, v2

    .line 23
    if-gez v3, :cond_0

    .line 25
    move v1, v2

    .line 27
    :cond_0
    array-length v0, v0

    .line 28
    int-to-float v0, v0

    .line 29
    div-float/2addr v1, v0

    .line 30
    const/high16 v0, 0x3f000000    # 0.5f

    .line 31
    add-float/2addr v1, v0

    .line 33
    float-to-int v0, v1

    .line 34
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 35
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 37
    add-int/2addr v1, v0

    .line 39
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 40
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 42
    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    .line 44
    move-result v0

    .line 47
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 48
    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    .line 50
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 55
    mul-int/lit8 v0, v0, 0x1

    .line 57
    sub-int/2addr v1, v0

    .line 59
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 60
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 62
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 64
    return-void
    .line 67
.end method

.method public final initializeSelectorWheelIndices()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 7
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 14
    array-length v3, v3

    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    add-int/lit8 v3, v2, -0x1

    .line 19
    add-int/2addr v3, v1

    .line 21
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 22
    if-eqz v4, :cond_1

    .line 24
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 26
    if-le v3, v4, :cond_0

    .line 28
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 30
    sub-int/2addr v3, v4

    .line 32
    sub-int/2addr v4, v5

    .line 33
    rem-int/2addr v3, v4

    .line 34
    add-int/2addr v3, v5

    .line 35
    add-int/lit8 v3, v3, -0x1

    .line 36
    goto :goto_1

    .line 38
    :cond_0
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 39
    if-ge v3, v5, :cond_1

    .line 41
    sub-int v3, v5, v3

    .line 43
    sub-int v5, v4, v5

    .line 45
    rem-int/2addr v3, v5

    .line 47
    sub-int/2addr v4, v3

    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    move v3, v4

    .line 51
    :cond_1
    :goto_1
    aput v3, v0, v2

    .line 52
    invoke-virtual {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    return-void
    .line 60
.end method

.method public final isInternationalBuild()Z
    .locals 6

    .line 1
    const-string v0, "ReflectUtil"

    .line 2
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 4
    if-nez v1, :cond_1

    .line 6
    const-string v1, "android.os.SystemProperties"

    .line 8
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    const-string v3, "Cant find class android.os.SystemProperties"

    .line 17
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    move-object v1, v2

    .line 22
    :goto_0
    const-class v3, Ljava/lang/String;

    .line 23
    filled-new-array {v3, v3}, [Ljava/lang/Class;

    .line 25
    move-result-object v3

    .line 28
    const-string v4, "ro.product.mod_device"

    .line 29
    const-string v5, ""

    .line 31
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 36
    const-string v5, "get"

    .line 37
    if-nez v1, :cond_0

    .line 39
    goto :goto_1

    .line 41
    :cond_0
    :try_start_1
    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    move-result-object v1

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception v1

    .line 55
    const-string v3, "Failed to call static method:"

    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 61
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 67
    :cond_1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 69
    const-string v0, "_global"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 73
    move-result p0

    .line 76
    return p0
    .line 77
.end method

.method public final moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    .line 10
    move-result p1

    .line 13
    sub-int/2addr v1, p1

    .line 14
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 15
    add-int/2addr p1, v1

    .line 17
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 18
    rem-int/2addr p1, v2

    .line 20
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 21
    sub-int/2addr v2, p1

    .line 23
    const/4 p1, 0x0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 27
    move-result v3

    .line 30
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 31
    div-int/lit8 v5, v4, 0x2

    .line 33
    if-le v3, v5, :cond_1

    .line 35
    if-lez v2, :cond_0

    .line 37
    sub-int/2addr v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    add-int/2addr v2, v4

    .line 41
    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 42
    invoke-virtual {p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 43
    return v0

    .line 46
    :cond_2
    return p1
    .line 47
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    .line 9
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 21
    :cond_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 23
    const-string p0, "NumberPicker_sound_play"

    .line 26
    sget-object v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    .line 28
    const-class v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;

    .line 30
    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    .line 33
    move-object v2, v1

    .line 35
    check-cast v2, Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 41
    check-cast v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 42
    if-eqz v2, :cond_1

    .line 44
    iget v3, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 48
    iput v3, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 50
    if-nez v3, :cond_1

    .line 52
    check-cast v1, Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0

    .line 67
    throw p0
    .line 68
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-boolean v2, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 6
    if-nez v2, :cond_0

    .line 8
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 14
    move-result v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 18
    move-result v3

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 22
    move-result v4

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 26
    move-result v5

    .line 29
    sub-int/2addr v4, v5

    .line 30
    add-int/2addr v4, v2

    .line 31
    sub-int/2addr v4, v3

    .line 32
    div-int/lit8 v4, v4, 0x2

    .line 33
    int-to-float v2, v4

    .line 35
    iget v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 36
    iget v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 38
    const/4 v5, 0x1

    .line 40
    mul-int/2addr v4, v5

    .line 41
    add-int/2addr v4, v3

    .line 42
    int-to-float v3, v4

    .line 43
    iget v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 44
    int-to-float v4, v4

    .line 46
    iget-object v6, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 47
    iget-object v7, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 49
    array-length v8, v7

    .line 51
    const/4 v9, 0x0

    .line 52
    move v10, v9

    .line 53
    :goto_0
    const/high16 v11, 0x40000000    # 2.0f

    .line 54
    if-ge v10, v8, :cond_5

    .line 56
    aget v12, v7, v10

    .line 58
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v12

    .line 63
    check-cast v12, Ljava/lang/String;

    .line 64
    sub-float v13, v3, v4

    .line 66
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 68
    move-result v13

    .line 71
    iget v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 72
    int-to-float v14, v14

    .line 74
    div-float/2addr v13, v14

    .line 75
    iget v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 76
    int-to-float v15, v14

    .line 78
    iget v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    .line 79
    cmpl-float v15, v15, v5

    .line 81
    const/high16 v16, 0x3f800000    # 1.0f

    .line 83
    if-lez v15, :cond_1

    .line 85
    float-to-int v14, v5

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 89
    move-result v5

    .line 92
    int-to-float v5, v5

    .line 93
    iget-object v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 96
    move-result v15

    .line 99
    div-float/2addr v5, v15

    .line 100
    cmpg-float v15, v5, v16

    .line 101
    if-gez v15, :cond_2

    .line 103
    iget v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 105
    int-to-float v14, v14

    .line 107
    mul-float/2addr v14, v5

    .line 108
    float-to-int v14, v14

    .line 109
    :cond_2
    :goto_1
    iget v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 110
    cmpl-float v15, v13, v16

    .line 112
    if-ltz v15, :cond_3

    .line 114
    int-to-float v5, v5

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    sub-int/2addr v5, v14

    .line 118
    int-to-float v5, v5

    .line 119
    mul-float/2addr v5, v13

    .line 120
    int-to-float v14, v14

    .line 121
    add-float/2addr v5, v14

    .line 122
    :goto_2
    iget-object v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 123
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    iget-object v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 128
    iget v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    .line 130
    invoke-static {v15, v13, v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(IFZ)I

    .line 132
    move-result v15

    .line 135
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 139
    int-to-float v14, v14

    .line 141
    sub-float v14, v5, v14

    .line 142
    div-float/2addr v14, v11

    .line 144
    add-float/2addr v14, v4

    .line 145
    iget-object v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 146
    invoke-virtual {v1, v12, v2, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    cmpg-float v14, v13, v16

    .line 151
    if-gez v14, :cond_4

    .line 153
    iget-object v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 155
    iget v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    .line 157
    const/4 v9, 0x1

    .line 159
    invoke-static {v15, v13, v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(IFZ)I

    .line 160
    move-result v13

    .line 163
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 167
    int-to-float v13, v13

    .line 169
    sub-float/2addr v5, v13

    .line 170
    div-float/2addr v5, v11

    .line 171
    add-float/2addr v5, v4

    .line 172
    iget-object v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 173
    invoke-virtual {v1, v12, v2, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    goto :goto_3

    .line 178
    :cond_4
    const/4 v9, 0x1

    .line 179
    :goto_3
    iget v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 180
    int-to-float v5, v5

    .line 182
    add-float/2addr v4, v5

    .line 183
    add-int/lit8 v10, v10, 0x1

    .line 184
    move v5, v9

    .line 186
    const/4 v9, 0x0

    .line 187
    goto/16 :goto_0

    .line 188
    :cond_5
    iget-object v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 190
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    move-result v4

    .line 195
    if-nez v4, :cond_7

    .line 196
    invoke-virtual/range {p0 .. p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    .line 198
    move-result v4

    .line 201
    if-nez v4, :cond_7

    .line 202
    iget-object v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 204
    iget-object v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 206
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 208
    move-result-object v5

    .line 211
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 212
    move-result v4

    .line 215
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 216
    move-result v5

    .line 219
    if-eqz v5, :cond_6

    .line 220
    iget v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 222
    div-float/2addr v5, v11

    .line 224
    sub-float/2addr v2, v5

    .line 225
    iget v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 226
    int-to-float v5, v5

    .line 228
    sub-float/2addr v2, v5

    .line 229
    sub-float/2addr v2, v4

    .line 230
    const/4 v4, 0x0

    .line 231
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 232
    move-result v2

    .line 235
    goto :goto_4

    .line 236
    :cond_6
    iget v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 237
    div-float/2addr v5, v11

    .line 239
    add-float/2addr v5, v2

    .line 240
    iget v2, v0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 241
    int-to-float v2, v2

    .line 243
    add-float/2addr v5, v2

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 245
    move-result v2

    .line 248
    int-to-float v2, v2

    .line 249
    sub-float/2addr v2, v4

    .line 250
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    .line 251
    move-result v2

    .line 254
    :goto_4
    iget v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 255
    int-to-float v4, v4

    .line 257
    div-float/2addr v4, v11

    .line 258
    sub-float/2addr v3, v4

    .line 259
    iget v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 260
    int-to-float v4, v4

    .line 262
    div-float/2addr v4, v11

    .line 263
    add-float/2addr v4, v3

    .line 264
    iget v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 265
    int-to-float v3, v3

    .line 267
    add-float/2addr v4, v3

    .line 268
    iget-object v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 269
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 271
    move-result-object v3

    .line 274
    iget-object v0, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 275
    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 277
    :cond_7
    return-void
    .line 280
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 12
    const/16 v1, 0x2000

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 17
    const/16 v1, 0x1000

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 22
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 27
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 30
    sub-int/2addr v1, v0

    .line 32
    int-to-float v1, v1

    .line 33
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 34
    add-int/2addr v2, v0

    .line 36
    int-to-float v0, v2

    .line 37
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 38
    int-to-float v2, v2

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v3, v1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 54
    if-nez v1, :cond_0

    .line 56
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 58
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 65
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 67
    sub-int/2addr v2, v3

    .line 69
    aget-object v1, v1, v2

    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    const-string v1, ""

    .line 83
    goto :goto_1

    .line 85
    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 86
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 98
    move-result-object p0

    .line 101
    const v0, 0x7f130794    # @string/miuix_access_state_desc 'Selected'

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    return-void
    .line 112
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    goto/16 :goto_5

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    return v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 22
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 25
    const/4 v2, 0x4

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    move-result v0

    .line 34
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 35
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 39
    move-result-wide v2

    .line 42
    iput-wide v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 43
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 45
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 47
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 49
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 51
    int-to-float v0, v0

    .line 53
    cmpg-float v0, p1, v0

    .line 54
    const/4 v2, 0x1

    .line 56
    if-gez v0, :cond_2

    .line 57
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 59
    if-nez p1, :cond_3

    .line 61
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 63
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 65
    iput v2, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 68
    const/4 v0, 0x2

    .line 70
    iput v0, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 71
    iget-object v0, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 73
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 75
    move-result v3

    .line 78
    int-to-long v3, v3

    .line 79
    invoke-virtual {v0, p1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 84
    int-to-float v0, v0

    .line 86
    cmpl-float p1, p1, v0

    .line 87
    if-lez p1, :cond_3

    .line 89
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 91
    if-nez p1, :cond_3

    .line 93
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 95
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 97
    iput v2, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 100
    iput v2, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 102
    iget-object v0, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 106
    move-result v3

    .line 109
    int-to-long v3, v3

    .line 110
    invoke-virtual {v0, p1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 114
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 116
    move-result p1

    .line 119
    if-nez p1, :cond_4

    .line 120
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 122
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 124
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 127
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 129
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 132
    goto/16 :goto_4

    .line 135
    :cond_4
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 137
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 139
    move-result p1

    .line 142
    if-nez p1, :cond_5

    .line 143
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 145
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 147
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 150
    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 152
    goto :goto_4

    .line 155
    :cond_5
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 156
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 158
    int-to-float v0, v0

    .line 160
    cmpg-float v0, p1, v0

    .line 161
    if-gez v0, :cond_7

    .line 163
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 165
    move-result p1

    .line 168
    int-to-long v3, p1

    .line 169
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 170
    if-nez p1, :cond_6

    .line 172
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 174
    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 176
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 179
    goto :goto_1

    .line 181
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 182
    :goto_1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 185
    iput-boolean v1, p1, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 187
    invoke-virtual {p0, p1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    goto :goto_4

    .line 192
    :cond_7
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 193
    int-to-float v0, v0

    .line 195
    cmpl-float p1, p1, v0

    .line 196
    if-lez p1, :cond_9

    .line 198
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 200
    move-result p1

    .line 203
    int-to-long v0, p1

    .line 204
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 205
    if-nez p1, :cond_8

    .line 207
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 209
    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 211
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 214
    goto :goto_2

    .line 216
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    :goto_2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 220
    iput-boolean v2, p1, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 222
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    goto :goto_4

    .line 227
    :cond_9
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 228
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 230
    if-nez p1, :cond_a

    .line 232
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 234
    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 236
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 239
    goto :goto_3

    .line 241
    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 242
    :goto_3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 245
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 247
    move-result v0

    .line 250
    int-to-long v0, v0

    .line 251
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    :goto_4
    return v2

    .line 255
    :cond_b
    :goto_5
    return v1
    .line 256
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 6
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 10
    move-result p2

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 14
    move-result p3

    .line 17
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 18
    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    .line 20
    move-result p4

    .line 23
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 24
    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    .line 26
    move-result p5

    .line 29
    sub-int/2addr p2, p4

    .line 30
    div-int/lit8 p2, p2, 0x2

    .line 31
    sub-int/2addr p3, p5

    .line 33
    div-int/lit8 p3, p3, 0x2

    .line 34
    add-int/2addr p4, p2

    .line 36
    add-int/2addr p5, p3

    .line 37
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 38
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    .line 40
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 45
    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 52
    move-result p1

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 56
    move-result p2

    .line 59
    sub-int/2addr p1, p2

    .line 60
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 61
    sub-int/2addr p1, p2

    .line 63
    div-int/lit8 p1, p1, 0x2

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 69
    move-result p1

    .line 72
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 73
    sub-int/2addr p1, p2

    .line 75
    div-int/lit8 p1, p1, 0x2

    .line 76
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 78
    sub-int/2addr p1, p3

    .line 80
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 81
    mul-int/lit8 p3, p3, 0x2

    .line 83
    add-int/2addr p3, p1

    .line 85
    add-int/2addr p3, p2

    .line 86
    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 89
    move-result p1

    .line 92
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 93
    move-result p2

    .line 96
    sub-int/2addr p1, p2

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 98
    move-result p2

    .line 101
    add-int/2addr p2, p1

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 103
    move-result p1

    .line 106
    sub-int/2addr p2, p1

    .line 107
    int-to-float p1, p2

    .line 108
    const/high16 p2, 0x40000000    # 2.0f

    .line 109
    div-float/2addr p1, p2

    .line 111
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    .line 112
    move-result p3

    .line 115
    const/4 p4, 0x0

    .line 116
    cmpl-float p3, p3, p4

    .line 117
    if-lez p3, :cond_2

    .line 119
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 121
    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 123
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 125
    int-to-float p3, p3

    .line 127
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    :goto_0
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 131
    div-float/2addr p3, p2

    .line 133
    add-float/2addr p3, p1

    .line 134
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 135
    int-to-float p4, p4

    .line 137
    add-float/2addr p3, p4

    .line 138
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    .line 139
    move-result p4

    .line 142
    add-float/2addr p4, p3

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 144
    move-result p3

    .line 147
    int-to-float p3, p3

    .line 148
    cmpl-float p3, p4, p3

    .line 149
    if-lez p3, :cond_2

    .line 151
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 153
    int-to-float p3, p3

    .line 155
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 156
    cmpl-float p4, p3, p4

    .line 158
    if-lez p4, :cond_2

    .line 160
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    .line 162
    mul-float/2addr p3, p4

    .line 164
    float-to-int p3, p3

    .line 165
    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 166
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 168
    int-to-float p3, p3

    .line 170
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 175
    move-result-object p1

    .line 178
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 179
    add-int/lit8 p2, p2, 0x14

    .line 181
    iget-boolean p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 183
    if-eqz p3, :cond_6

    .line 185
    instance-of p3, p1, Landroid/graphics/drawable/StateListDrawable;

    .line 187
    if-eqz p3, :cond_6

    .line 189
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 191
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    .line 193
    move-result p3

    .line 196
    const/4 p4, 0x0

    .line 197
    move p5, p4

    .line 198
    :goto_1
    if-ge p5, p3, :cond_6

    .line 199
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 201
    move-result-object v0

    .line 204
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 205
    if-eqz v1, :cond_5

    .line 207
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 209
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 211
    move-result v1

    .line 214
    move v2, p4

    .line 215
    :goto_2
    if-ge v2, v1, :cond_5

    .line 216
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    .line 218
    move-result v3

    .line 221
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 222
    move-result-object v3

    .line 225
    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    .line 226
    if-eqz v4, :cond_4

    .line 228
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 230
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 232
    move-result v4

    .line 235
    if-le v4, p2, :cond_3

    .line 236
    move v4, p2

    .line 238
    goto :goto_3

    .line 239
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 240
    move-result v4

    .line 243
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 244
    move-result v5

    .line 247
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 248
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 251
    goto :goto_2

    .line 253
    :cond_5
    add-int/lit8 p5, p5, 0x1

    .line 254
    goto :goto_1

    .line 256
    :cond_6
    return-void
    .line 257
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 10
    invoke-static {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 12
    move-result v0

    .line 15
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    .line 16
    invoke-static {p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 18
    move-result v1

    .line 21
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 22
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, -0x1

    .line 32
    if-eq v0, v3, :cond_1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result v0

    .line 38
    invoke-static {v0, p1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    .line 39
    move-result v1

    .line 42
    :cond_1
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 45
    move-result v0

    .line 48
    if-eq p1, v3, :cond_2

    .line 49
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result p1

    .line 54
    invoke-static {p1, p2, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    .line 55
    move-result v0

    .line 58
    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 59
    return-void
    .line 62
.end method

.method public final onScrollStateChange(I)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_2

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 13
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 29
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    :cond_2
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 47
    return-void
    .line 49
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_10

    .line 7
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto/16 :goto_5

    .line 13
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 23
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    move-result v0

    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eq v0, v3, :cond_6

    .line 36
    if-eq v0, v2, :cond_2

    .line 38
    const/4 v4, 0x3

    .line 40
    if-eq v0, v4, :cond_6

    .line 41
    goto/16 :goto_4

    .line 43
    :cond_2
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 45
    if-eqz v0, :cond_3

    .line 47
    goto/16 :goto_4

    .line 49
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 51
    move-result p1

    .line 54
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 55
    if-eq v0, v3, :cond_4

    .line 57
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 59
    sub-float v0, p1, v0

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 63
    move-result v0

    .line 66
    float-to-int v0, v0

    .line 67
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 68
    if-le v0, v1, :cond_5

    .line 70
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 72
    invoke-virtual {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 75
    goto :goto_0

    .line 78
    :cond_4
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 79
    sub-float v0, p1, v0

    .line 81
    float-to-int v0, v0

    .line 83
    invoke-virtual {p0, v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 87
    :cond_5
    :goto_0
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 90
    goto/16 :goto_4

    .line 92
    :cond_6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 94
    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    :cond_7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 101
    if-eqz v0, :cond_8

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    :cond_8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 108
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 110
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 113
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 115
    int-to-float v4, v4

    .line 117
    const/16 v5, 0x3e8

    .line 118
    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 120
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 123
    move-result v0

    .line 126
    float-to-int v0, v0

    .line 127
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 128
    move-result v4

    .line 131
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 132
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 134
    move-result v5

    .line 137
    if-lt v4, v5, :cond_9

    .line 138
    int-to-float v0, v0

    .line 140
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 141
    mul-float/2addr v0, v4

    .line 143
    float-to-int v0, v0

    .line 144
    :cond_9
    move v8, v0

    .line 145
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 146
    move-result v0

    .line 149
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 150
    if-le v0, v4, :cond_b

    .line 152
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 154
    if-lez v8, :cond_a

    .line 156
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 158
    const/4 v5, 0x0

    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    const/4 v9, 0x0

    .line 163
    const/4 v10, 0x0

    .line 164
    const/4 v11, 0x0

    .line 165
    const v12, 0x7fffffff

    .line 166
    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 169
    goto :goto_1

    .line 172
    :cond_a
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 173
    const/4 v5, 0x0

    .line 175
    const v6, 0x7fffffff

    .line 176
    const/4 v7, 0x0

    .line 179
    const/4 v9, 0x0

    .line 180
    const/4 v10, 0x0

    .line 181
    const/4 v11, 0x0

    .line 182
    const v12, 0x7fffffff

    .line 183
    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 186
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 189
    invoke-virtual {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 192
    goto :goto_3

    .line 195
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 196
    move-result v0

    .line 199
    float-to-int v0, v0

    .line 200
    int-to-float v4, v0

    .line 201
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 202
    sub-float/2addr v4, v5

    .line 204
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 205
    move-result v4

    .line 208
    float-to-int v4, v4

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 210
    move-result-wide v5

    .line 213
    iget-wide v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 214
    sub-long/2addr v5, v7

    .line 216
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 217
    if-gt v4, p1, :cond_f

    .line 219
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 221
    move-result p1

    .line 224
    int-to-long v7, p1

    .line 225
    cmp-long p1, v5, v7

    .line 226
    if-gez p1, :cond_f

    .line 228
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 230
    if-eqz p1, :cond_c

    .line 232
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 234
    goto :goto_2

    .line 236
    :cond_c
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 237
    div-int/2addr v0, p1

    .line 239
    sub-int/2addr v0, v3

    .line 240
    if-lez v0, :cond_d

    .line 241
    invoke-virtual {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 243
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 246
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 248
    iput v2, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 251
    iput v3, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 253
    iget-object v0, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 257
    goto :goto_2

    .line 260
    :cond_d
    if-gez v0, :cond_e

    .line 261
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 263
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 266
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 268
    iput v2, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 271
    iput v2, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 273
    iget-object v0, p1, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 277
    goto :goto_2

    .line 280
    :cond_e
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 281
    goto :goto_2

    .line 284
    :cond_f
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 285
    :goto_2
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 288
    :goto_3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 291
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 293
    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 297
    :goto_4
    return v3

    .line 299
    :cond_10
    :goto_5
    return v1
    .line 300
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 10
    move-result p2

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p2, :cond_1

    .line 15
    return v1

    .line 17
    :cond_1
    const/16 p2, 0x1000

    .line 18
    if-eq p1, p2, :cond_2

    .line 20
    const/16 v2, 0x2000

    .line 22
    if-eq p1, v2, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    if-ne p1, p2, :cond_3

    .line 27
    move v1, v0

    .line 29
    :cond_3
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 30
    return v0
    .line 33
.end method

.method public final removeAllCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    :cond_2
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 23
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 25
    return-void
    .line 28
.end method

.method public final scrollBy(II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 2
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    if-lez p2, :cond_0

    .line 9
    aget v2, p1, v1

    .line 11
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 13
    if-gt v2, v3, :cond_0

    .line 15
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 17
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 19
    return-void

    .line 21
    :cond_0
    if-nez v0, :cond_1

    .line 22
    if-gez p2, :cond_1

    .line 24
    aget v0, p1, v1

    .line 26
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 28
    if-lt v0, v2, :cond_1

    .line 30
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 32
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 34
    return-void

    .line 36
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 37
    add-int/2addr v0, p2

    .line 39
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 40
    :cond_2
    :goto_0
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 42
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 44
    sub-int v0, p2, v0

    .line 46
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 48
    const/4 v3, 0x0

    .line 50
    if-le v0, v2, :cond_5

    .line 51
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 53
    sub-int/2addr p2, v0

    .line 55
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 56
    array-length p2, p1

    .line 58
    sub-int/2addr p2, v1

    .line 59
    if-ltz p2, :cond_3

    .line 60
    array-length p2, p1

    .line 62
    sub-int/2addr p2, v1

    .line 63
    invoke-static {p1, v3, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_3
    aget p2, p1, v1

    .line 67
    sub-int/2addr p2, v1

    .line 69
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 70
    if-eqz v0, :cond_4

    .line 72
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 74
    if-ge p2, v0, :cond_4

    .line 76
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 78
    :cond_4
    aput p2, p1, v3

    .line 80
    invoke-virtual {p0, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 82
    aget p2, p1, v1

    .line 85
    invoke-virtual {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 87
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 90
    if-nez p2, :cond_2

    .line 92
    aget p2, p1, v1

    .line 94
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 96
    if-gt p2, v0, :cond_2

    .line 98
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 100
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 102
    goto :goto_0

    .line 104
    :cond_5
    :goto_1
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 105
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 107
    sub-int v0, p2, v0

    .line 109
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 111
    neg-int v2, v2

    .line 113
    if-ge v0, v2, :cond_8

    .line 114
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 116
    add-int/2addr p2, v0

    .line 118
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 119
    array-length p2, p1

    .line 121
    sub-int/2addr p2, v1

    .line 122
    if-ltz p2, :cond_6

    .line 123
    array-length p2, p1

    .line 125
    sub-int/2addr p2, v1

    .line 126
    invoke-static {p1, v1, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    :cond_6
    array-length p2, p1

    .line 130
    add-int/lit8 p2, p2, -0x2

    .line 131
    aget p2, p1, p2

    .line 133
    add-int/2addr p2, v1

    .line 135
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 136
    if-eqz v0, :cond_7

    .line 138
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 140
    if-le p2, v0, :cond_7

    .line 142
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 144
    :cond_7
    array-length v0, p1

    .line 146
    sub-int/2addr v0, v1

    .line 147
    aput p2, p1, v0

    .line 148
    invoke-virtual {p0, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 150
    aget p2, p1, v1

    .line 153
    invoke-virtual {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 155
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 158
    if-nez p2, :cond_5

    .line 160
    aget p2, p1, v1

    .line 162
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 164
    if-lt p2, v0, :cond_5

    .line 166
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 168
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 170
    goto :goto_1

    .line 172
    :cond_8
    return-void
    .line 173
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 7
    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 11
    const v0, 0x80001

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 20
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 23
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 26
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 29
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 32
    return-void
    .line 35
.end method

.method public setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 7
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 9
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 12
    return-void
    .line 15
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 2
    if-nez v0, :cond_0

    .line 4
    if-nez p1, :cond_1

    .line 6
    :cond_0
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    :cond_1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 18
    :cond_2
    return-void
    .line 21
.end method

.method public setLabelTextSizeThreshold(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 3
    move-result p1

    .line 6
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 7
    return-void
    .line 9
.end method

.method public setLabelTextSizeTrimFactor(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    cmpg-float v0, p1, v0

    .line 9
    if-gez v0, :cond_0

    .line 11
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    if-ltz v0, :cond_0

    .line 5
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 7
    :cond_0
    return-void
    .line 9
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_3

    .line 7
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 9
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 11
    if-ge p1, v0, :cond_1

    .line 13
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 15
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 17
    sub-int/2addr p1, v0

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 20
    array-length v0, v0

    .line 22
    if-le p1, v0, :cond_2

    .line 23
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 28
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 31
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 34
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 40
    return-void

    .line 43
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p1, "maxValue must be >= 0"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0
    .line 51
.end method

.method public setMeasureBackgroundEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_3

    .line 7
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 9
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 11
    if-le p1, v0, :cond_1

    .line 13
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 15
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 17
    sub-int/2addr v0, p1

    .line 19
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 20
    array-length p1, p1

    .line 22
    if-le v0, p1, :cond_2

    .line 23
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 28
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 31
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 34
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 40
    return-void

    .line 43
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p1, "minValue must be >= 0"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0
    .line 51
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 2
    return-void
    .line 4
.end method

.method public setOnScrollListener(Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    .line 2
    return-void
    .line 4
.end method

.method public setTextSizeHighlight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 4
    int-to-float p1, p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 10
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 14
    move-result p1

    .line 17
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 18
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 23
    return-void
    .line 26
.end method

.method public setTextSizeHint(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setTextSizeTrimFactor(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setValue(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final setValueInternal(IZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 7
    if-le p1, v0, :cond_0

    .line 9
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 11
    sub-int/2addr p1, v0

    .line 13
    sub-int/2addr v0, v2

    .line 14
    rem-int/2addr p1, v0

    .line 15
    add-int/2addr p1, v2

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 20
    if-ge p1, v2, :cond_2

    .line 22
    sub-int p1, v2, p1

    .line 24
    sub-int v2, v0, v2

    .line 26
    rem-int/2addr p1, v2

    .line 28
    sub-int/2addr v0, p1

    .line 29
    add-int/lit8 p1, v0, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 33
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result p1

    .line 38
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 39
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result p1

    .line 44
    :cond_2
    :goto_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 45
    if-ne v0, p1, :cond_3

    .line 47
    return-void

    .line 49
    :cond_3
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 50
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 52
    if-eqz p2, :cond_5

    .line 55
    const/4 p1, 0x4

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 58
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 61
    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    :cond_4
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    .line 72
    sget p2, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 74
    invoke-static {p0, p1, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 76
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    .line 79
    if-eqz p1, :cond_5

    .line 81
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 83
    invoke-interface {p1, p0, v0, p2}, Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 85
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 88
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 91
    return-void
    .line 94
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 2
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 4
    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 7
    array-length v1, v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    if-eqz v0, :cond_2

    .line 17
    :cond_1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 19
    if-eq p1, v0, :cond_2

    .line 21
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 23
    :cond_2
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 28
    return-void
    .line 31
.end method

.method public final tryComputeMaxWidth()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 7
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 9
    int-to-float v1, v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 15
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_3

    .line 18
    const/4 v0, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    const/16 v3, 0x9

    .line 22
    if-ge v1, v3, :cond_2

    .line 24
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 32
    move-result v3

    .line 35
    cmpl-float v4, v3, v0

    .line 36
    if-lez v4, :cond_1

    .line 38
    move v2, v1

    .line 40
    move v0, v3

    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 45
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    move-result v1

    .line 54
    int-to-float v3, v1

    .line 55
    mul-float/2addr v3, v0

    .line 56
    float-to-int v0, v3

    .line 57
    int-to-float v0, v0

    .line 58
    new-array v1, v1, [C

    .line 59
    add-int/lit8 v2, v2, 0x30

    .line 61
    int-to-char v2, v2

    .line 63
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 64
    new-instance v2, Ljava/lang/String;

    .line 67
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 69
    goto :goto_2

    .line 72
    :cond_3
    array-length v0, v0

    .line 73
    const/4 v2, 0x0

    .line 74
    const/high16 v3, -0x40800000    # -1.0f

    .line 75
    :goto_1
    if-ge v1, v0, :cond_5

    .line 77
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 79
    aget-object v4, v4, v1

    .line 81
    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 85
    move-result v5

    .line 88
    cmpl-float v6, v5, v3

    .line 89
    if-lez v6, :cond_4

    .line 91
    move-object v2, v4

    .line 93
    move v3, v5

    .line 94
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 95
    goto :goto_1

    .line 97
    :cond_5
    move v0, v3

    .line 98
    :goto_2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 99
    iput-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 103
    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    .line 105
    move-result v1

    .line 108
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 109
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    .line 111
    move-result v2

    .line 114
    add-int/2addr v2, v1

    .line 115
    int-to-float v1, v2

    .line 116
    add-float/2addr v0, v1

    .line 117
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 118
    move-result v1

    .line 121
    int-to-float v1, v1

    .line 122
    add-float/2addr v0, v1

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 124
    move-result v1

    .line 127
    int-to-float v1, v1

    .line 128
    add-float/2addr v0, v1

    .line 129
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 130
    int-to-float v1, v1

    .line 132
    cmpl-float v1, v1, v0

    .line 133
    if-eqz v1, :cond_7

    .line 135
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 137
    int-to-float v2, v1

    .line 139
    cmpl-float v2, v0, v2

    .line 140
    if-lez v2, :cond_6

    .line 142
    float-to-int v0, v0

    .line 144
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 145
    goto :goto_3

    .line 147
    :cond_6
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 148
    :cond_7
    :goto_3
    return-void
    .line 150
.end method

.method public final updateInputTextView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 19
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 40
.end method
