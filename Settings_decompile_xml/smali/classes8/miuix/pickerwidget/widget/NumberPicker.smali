.class public Lmiuix/pickerwidget/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$CustomEditText;,
        Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;,
        Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;,
        Lmiuix/pickerwidget/widget/NumberPicker$Formatter;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;,
        Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DIGIT_CHARACTERS:[C

.field private static final PRESSED_STATE_SET:[I

.field static final TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private MARGIN_LABEL_LEFT:I

.field private MARGIN_LABEL_TOP:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedMaxText:Ljava/lang/String;

.field private mDisplayedMaxTextWidth:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIHoverStyle:Lmiuix/animation/IHoverStyle;

.field private final mId:I

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsHoverEnter:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLabelTextSizeThreshold:F

.field private mLabelTextSizeTrimFactor:F

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLongPressUpdateInterval:J

.field private mMaxFlingSpeedFactor:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMeasureBackgroundEnabled:Z

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModDevice:Ljava/lang/String;

.field private mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

.field private mOriginLabelTextSize:I

.field private mOriginTextSizeHighlight:I

.field private mOriginTextSizeHint:I

.field private final mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

.field private mTextColorHighlight:I

.field private mTextColorHint:I

.field private mTextPadding:I

.field private final mTextSize:I

.field private mTextSizeHighlight:I

.field private mTextSizeHint:I

.field private mTextSizeThreshold:F

.field private mTextSizeTrimFactor:F

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUpdateText:Ljava/lang/String;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    sget v0, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    const v0, 0x10100a7    # @android:attr/state_pressed

    .line 532
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->PRESSED_STATE_SET:[I

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 2249
    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 629
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 639
    sget v0, Lmiuix/pickerwidget/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 650
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v1, 0x2

    .line 146
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v1, 0x190

    .line 293
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v1, 0x12c

    .line 348
    iput-wide v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 353
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 358
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v1, -0x80000000

    .line 373
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v1, 0x0

    .line 464
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 515
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const v3, 0x3f733333    # 0.95f

    .line 592
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeTrimFactor:F

    const v3, 0x3f4ccccd    # 0.8f

    .line 597
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 612
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 619
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 620
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 651
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 653
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 654
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 656
    invoke-direct {p0, p2, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->parseStyle(Landroid/util/AttributeSet;I)V

    .line 658
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 660
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 664
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 662
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 665
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 p2, 0x42340000    # 45.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 667
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 669
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000    # 202.0f

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 671
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    .line 678
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 680
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 686
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 688
    new-instance p2, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    xor-int p2, v0, v0

    .line 695
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 697
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 699
    sget p3, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 702
    sget p2, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 703
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V

    .line 704
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    .line 707
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 709
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 710
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 712
    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 715
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSelectorWheelPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 716
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initLabelPaint()V

    .line 719
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 720
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 722
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 725
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 726
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 730
    :cond_0
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 731
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$1;

    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$1;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 751
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$2;

    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$2;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    return p1
.end method

.method static synthetic access$1100(Lmiuix/pickerwidget/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1300(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1402(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1480(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1602(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1680(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$200(Lmiuix/pickerwidget/widget/NumberPicker;)Lmiuix/animation/IHoverStyle;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    return-object p0
.end method

.method static synthetic access$2002(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$300(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->exitHoverView()V

    return-void
.end method

.method static synthetic access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900()[C
    .locals 1

    .line 76
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1913
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1914
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1915
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1918
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1920
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1922
    :cond_1
    iget-object v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1924
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1927
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1929
    :cond_3
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 2044
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 2045
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2047
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 2048
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 2049
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 2051
    :cond_1
    aput v0, p1, v2

    .line 2052
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private drawLabelText(Landroid/graphics/Canvas;FFF)V
    .locals 2

    .line 1723
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result p4

    if-nez p4, :cond_1

    .line 1724
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    .line 1725
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 1726
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    sub-float/2addr p2, p4

    const/4 p4, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    .line 1728
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1730
    :goto_0
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float p4, p4

    div-float/2addr p4, v1

    sub-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float p4, p4

    div-float/2addr p4, v1

    add-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    .line 1731
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawScrollValue(Landroid/graphics/Canvas;FF)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1694
    iget v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1695
    iget-object v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1696
    iget-object v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1697
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    aget v9, v5, v8

    .line 1698
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sub-float v10, p3, v3

    .line 1699
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1700
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v12, v11

    .line 1701
    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-lez v12, :cond_0

    float-to-int v11, v13

    goto :goto_1

    .line 1704
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    div-float/2addr v12, v13

    cmpg-float v13, v12, v14

    if-gez v13, :cond_1

    .line 1706
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v11, v11

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1709
    :cond_1
    :goto_1
    iget v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    invoke-direct {v0, v10, v11, v12}, Lmiuix/pickerwidget/widget/NumberPicker;->getTextSize(FII)F

    move-result v11

    .line 1710
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1711
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    invoke-direct {v0, v10, v13, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1712
    iget v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v3

    iget-object v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v12, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    cmpg-float v12, v10, v14

    if-gez v12, :cond_2

    .line 1714
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    const/4 v15, 0x1

    invoke-direct {v0, v10, v14, v15}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1715
    iget v10, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v10, v10

    sub-float/2addr v11, v10

    div-float/2addr v11, v13

    add-float/2addr v11, v3

    iget-object v10, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1717
    :cond_2
    iget v9, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 2060
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2061
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 2065
    :cond_0
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 2068
    :cond_1
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 2070
    aget-object p0, v2, p0

    goto :goto_1

    .line 2072
    :cond_2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 2075
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2327
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2329
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2330
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 2333
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2334
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private exitHoverView()V
    .locals 2

    .line 770
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 771
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 772
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, v0}, Lmiuix/animation/IHoverStyle;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 2000
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 2003
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 2005
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2008
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 2079
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getAlphaGradient(FIZ)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    neg-float p0, p1

    .line 1757
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_0

    .line 1758
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :goto_0
    const p1, 0xffffff

    and-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 2202
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2204
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2209
    :goto_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2211
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2212
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2213
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2222
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    .line 2228
    :catch_0
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method private getTextSize(FII)F
    .locals 0

    .line 0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    int-to-float p0, p3

    return p0

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p0, p3

    mul-float/2addr p1, p0

    int-to-float p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    .line 2015
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2016
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 2017
    :cond_0
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    .line 2018
    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    .line 2028
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 2029
    array-length v0, p1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2031
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 2032
    iget-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_1

    .line 2033
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 2035
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 2036
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initInputText()V
    .locals 4

    .line 806
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$3;

    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$3;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 816
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;

    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    filled-new-array {v1}, [Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 820
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 821
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 823
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 825
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setScaleX(F)V

    .line 826
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 827
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method private initLabelPaint()V
    .locals 2

    .line 848
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 849
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 850
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 851
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 852
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initSelectorWheelPaint()Landroid/graphics/Paint;
    .locals 3

    .line 836
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 837
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 838
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 839
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 840
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 841
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 842
    sget-object v1, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 843
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private initSoundPlayer()V
    .locals 2

    .line 972
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_0

    const-string v0, "NumberPicker_sound_play"

    .line 973
    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    .line 974
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 975
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v1, v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->init(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private initThreshHolds()V
    .locals 2

    .line 831
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_label_text_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 832
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_text_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1956
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 1957
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1935
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1936
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1937
    array-length v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1938
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    .line 1942
    :cond_0
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1943
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1944
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1948
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1949
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1951
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1952
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1865
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1866
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1867
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1868
    :goto_0
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 1870
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1871
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1873
    :cond_0
    aput v3, v0, v2

    .line 1874
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isInternationalBuild()Z
    .locals 5

    .line 2941
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "android.os.SystemProperties"

    .line 2942
    invoke-static {v0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2943
    const-class v1, Ljava/lang/String;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ro.product.mod_device"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get"

    invoke-static {v0, v1, v4, v2, v3}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 2945
    :cond_0
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    const-string v0, "_global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 1826
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 1827
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 1836
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1834
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1832
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 1007
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1008
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1009
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 1010
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 1012
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 1020
    invoke-virtual {p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(I)V
    .locals 2

    const/4 v0, 0x4

    .line 2128
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 2129
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->playSound()V

    .line 2130
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 2131
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2132
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 2

    .line 1980
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 1984
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1985
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x0

    .line 1987
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 1988
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->stopSoundPlay()V

    .line 1990
    :cond_2
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1964
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1965
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1966
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 1968
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1970
    :cond_1
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1971
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private parseStyle(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 781
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 782
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/pickerwidget/R$styleable;->NumberPicker:[I

    sget v3, Lmiuix/pickerwidget/R$style;->Widget_NumberPicker_DayNight:I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 784
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 785
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHighlight:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_highlight_normal:I

    .line 786
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 785
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 787
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHint:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_hint_normal:I

    .line 788
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 787
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 789
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_labelTextSize:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_text_size:I

    .line 790
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 789
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 791
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHighlight:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_highlight_color:I

    .line 792
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 791
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    .line 793
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHint:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_hint_color:I

    .line 794
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 793
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    .line 795
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelTextColor:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_number_picker_label_color:I

    .line 796
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 795
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    .line 797
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelPadding:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_padding:I

    .line 798
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 797
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 799
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 800
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 801
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 802
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    return-void
.end method

.method private playSound()V
    .locals 0

    .line 987
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    .line 988
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->play()V

    :cond_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2165
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2166
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2168
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2170
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 2142
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2143
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2145
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2147
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2148
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    .line 2236
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2237
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 2239
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2241
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$702(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2242
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$802(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2243
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshWheel()V
    .locals 0

    .line 2936
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2937
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private releaseSoundPlayer()V
    .locals 2

    .line 980
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 981
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->release(I)V

    const/4 v0, 0x0

    .line 982
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    :cond_0
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2186
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2187
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2189
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2190
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2192
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2193
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2195
    :cond_2
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2177
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2178
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 2155
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2156
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1853
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1854
    invoke-static {p0, p3, p1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1886
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 1887
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1889
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1890
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1892
    :goto_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_1

    return-void

    .line 1896
    :cond_1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1897
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 1899
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->notifyChange(I)V

    .line 1901
    :cond_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1902
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private stopSoundPlay()V
    .locals 0

    .line 993
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    .line 994
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->stop()V

    :cond_0
    return-void
.end method

.method private trimLabelTextSize(F)V
    .locals 3

    .line 1736
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1737
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 1738
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1739
    :goto_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    int-to-float v0, v0

    .line 1741
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 1742
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 7

    .line 1358
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1365
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2

    .line 1368
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v2, v1

    move v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1374
    :cond_2
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    .line 1376
    new-array v1, v1, [C

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 1377
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1378
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    .line 1380
    :cond_3
    array-length v0, v0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_1
    if-ge v1, v0, :cond_5

    .line 1382
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1383
    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v6, v5, v3

    if-lez v6, :cond_4

    move-object v2, v4

    move v3, v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v3

    .line 1390
    :goto_2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 1391
    iput-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 1392
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1393
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1394
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    .line 1395
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    float-to-int v0, v0

    .line 1396
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3

    .line 1398
    :cond_6
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    :cond_7
    :goto_3
    return-void
.end method

.method private updateInputTextView()Z
    .locals 2

    .line 2110
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    move-result-object v0

    .line 2111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2112
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eqz v1, :cond_0

    .line 2113
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_0

    .line 2114
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2115
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 2083
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2084
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 2089
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 2090
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1219
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1220
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1222
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1226
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1227
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1228
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1229
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1231
    :cond_1
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 1232
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1233
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1234
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1236
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 1174
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_3

    .line 1178
    :cond_1
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_3

    .line 1181
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_3

    .line 1195
    :cond_3
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_9

    const/4 p1, -0x1

    .line 1196
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1183
    :cond_4
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 1184
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_9

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 1185
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1186
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1187
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1188
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 1189
    :goto_2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3

    .line 1202
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1162
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1165
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1211
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1214
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 890
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 892
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1771
    const-class p0, Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    .line 0
    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method protected getDisplayedMaxText()Ljava/lang/String;
    .locals 0

    .line 1422
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method protected getDisplayedMaxTextWidth()F
    .locals 3

    .line 1432
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1433
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1434
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1435
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return v1
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1614
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method protected getLabelWidth()F
    .locals 1

    .line 1404
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMarginLabelLeft()I
    .locals 0

    .line 877
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    return p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1576
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1538
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method public getOriginTextSizeHighlight()I
    .locals 0

    .line 881
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    return p0
.end method

.method public getOriginTextSizeHint()I
    .locals 0

    .line 885
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    return p0
.end method

.method public getOriginalLabelWidth()F
    .locals 3

    .line 1411
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1413
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1414
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1415
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    .line 0
    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1529
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1666
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1667
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1749
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1750
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1672
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1673
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->releaseSoundPlayer()V

    .line 1674
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    const-string p0, "NumberPicker_sound_play"

    .line 1675
    invoke-static {p0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1680
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1681
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1684
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 1685
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    .line 1686
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 1688
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1689
    invoke-direct {p0, p1, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->drawScrollValue(Landroid/graphics/Canvas;FF)F

    move-result v2

    .line 1690
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->drawLabelText(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1776
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1777
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1778
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    const/16 v1, 0x2000

    .line 1779
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x1000

    .line 1780
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1782
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1784
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 1787
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1790
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1792
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lmiuix/pickerwidget/R$string;->miuix_access_state_desc:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1028
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1031
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1034
    :cond_1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1035
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 1038
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 1039
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 1041
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 1042
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 1043
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 1046
    :cond_2
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 1047
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 1048
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 1053
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1054
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1055
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1056
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 1057
    :cond_4
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1058
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1059
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 1060
    :cond_5
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 1062
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 1061
    invoke-direct {p0, v1, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 1063
    :cond_6
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 1065
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 1064
    invoke-direct {p0, v2, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 1067
    :cond_7
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 1068
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 897
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 898
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 901
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 902
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 905
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 906
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 907
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 908
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 911
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 915
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 916
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeFadingEdges()V

    .line 917
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 919
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 923
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 924
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->trimLabelTextSize(F)V

    .line 927
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 928
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    add-int/lit8 p2, p2, 0x14

    .line 929
    iget-boolean p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    if-eqz p3, :cond_5

    instance-of p3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p3, :cond_5

    .line 931
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 933
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_5

    .line 935
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 936
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_4

    .line 937
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 938
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    move v2, p4

    :goto_1
    if-ge v2, v1, :cond_4

    .line 940
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 941
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 942
    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_3

    .line 943
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 944
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    if-le v4, p2, :cond_2

    move v4, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 955
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 956
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 960
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 961
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 962
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 964
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 966
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 968
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1078
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1081
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1082
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1084
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    goto/16 :goto_3

    .line 1088
    :cond_2
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 1091
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1092
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 1093
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1094
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 1095
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1096
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1099
    :cond_4
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 1100
    invoke-virtual {p0, v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 1101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1103
    :cond_5
    :goto_0
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 1108
    :cond_6
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 1109
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 1110
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1111
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1112
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1113
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 1114
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_7

    int-to-float v0, v0

    .line 1115
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1117
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_8

    .line 1118
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->fling(I)V

    .line 1119
    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 1121
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 1122
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 1123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 1124
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_c

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_c

    .line 1125
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_9

    .line 1126
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_1

    .line 1128
    :cond_9
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v3

    if-lez v0, :cond_a

    .line 1131
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1132
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_a
    if-gez v0, :cond_b

    .line 1135
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1136
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 1139
    :cond_b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_1

    .line 1143
    :cond_c
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1145
    :goto_1
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1147
    :goto_2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1148
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_d
    :goto_4
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1799
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 1802
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 v2, 0x2000

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    if-ne p1, p2, :cond_3

    move v1, v0

    .line 1808
    :cond_3
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    return v0
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1242
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1243
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt v2, v3, :cond_0

    .line 1245
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    if-nez v0, :cond_1

    if-gez p2, :cond_1

    .line 1248
    aget v0, p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_1

    .line 1250
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1253
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1254
    :cond_2
    :goto_0
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v0, v2, :cond_3

    .line 1255
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1256
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1257
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1258
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 1259
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1262
    :cond_3
    :goto_1
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    .line 1263
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1264
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1265
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1266
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 1267
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1627
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1630
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1633
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1636
    :cond_1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1638
    :goto_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1639
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1640
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1314
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1317
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 1318
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1319
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 1278
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1279
    :cond_1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 1280
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1650
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1590
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1596
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 1597
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1598
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1600
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1601
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1602
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1603
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1604
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1605
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1594
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1552
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1558
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 1559
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1560
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1562
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length p1, p1

    if-le v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1563
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1564
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1565
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1566
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1567
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1556
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1520
    iput-wide p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setTextSizeHighlight(I)V
    .locals 1

    .line 860
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 861
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 862
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 863
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 864
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextSizeHint(I)V
    .locals 0

    .line 872
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 873
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1351
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1502
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 1503
    :cond_1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1504
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1506
    :cond_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->refreshWheel()V

    return-void
.end method
