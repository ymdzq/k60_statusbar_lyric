.class public Lcom/android/systemui/statusbar/policy/SmartReplyView;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

.field public static final MEASURE_SPEC_ANY_LENGTH:I


# instance fields
.field public final mBreakIterator:Ljava/text/BreakIterator;

.field public mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

.field public mCurrentBackgroundColor:I

.field public mCurrentColorized:Z

.field public mCurrentRippleColor:I

.field public mCurrentStrokeColor:I

.field public mCurrentTextColor:I

.field public final mDefaultBackgroundColor:I

.field public final mDefaultStrokeColor:I

.field public final mDefaultTextColor:I

.field public final mDefaultTextColorDarkBg:I

.field public mDidHideSystemReplies:Z

.field public final mHeightUpperLimit:I

.field public mLastDispatchDrawTime:J

.field public mLastDrawChildTime:J

.field public mLastMeasureTime:J

.field public mMaxNumActions:I

.field public mMaxSqueezeRemeasureAttempts:I

.field public mMinNumSystemGeneratedReplies:I

.field public final mMinStrokeContrast:D

.field public final mRippleColor:I

.field public final mRippleColorDarkBg:I

.field public mSmartRepliesGeneratedByAssistant:Z

.field public mSmartReplyContainer:Landroid/view/View;

.field public final mSpacing:I

.field public final mStrokeWidth:I

.field public mTotalSqueezeRemeasureAttempts:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 3
    move-result v0

    .line 6
    sput v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    .line 9
    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;-><init>()V

    .line 11
    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 8
    const v2, 0x7f0710b3    # @dimen/smart_reply_button_max_height '100.0dp'

    .line 10
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 13
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    .line 17
    const v1, 0x7f06087a    # @color/smart_reply_button_background '#ffffffff'

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 22
    move-result v1

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    .line 26
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 28
    const v3, 0x7f06087c    # @color/smart_reply_button_text '@android:color/notification_secondary_text_color_current'

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 33
    move-result v2

    .line 36
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    .line 37
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 39
    const v3, 0x7f06087d    # @color/smart_reply_button_text_dark_bg '@android:color/notification_progress_background_color'

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 44
    move-result v2

    .line 47
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    .line 48
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 50
    const v3, 0x7f06087b    # @color/smart_reply_button_stroke '@android:color/accent_device_default'

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 55
    move-result v2

    .line 58
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    .line 59
    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 61
    const v4, 0x7f06075f    # @color/notification_ripple_untinted_color '#28000000'

    .line 63
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 66
    move-result v3

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    .line 70
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 72
    move-result v3

    .line 75
    const/16 v4, 0xff

    .line 76
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 78
    move-result v3

    .line 81
    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    .line 82
    invoke-static {v2, v1}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    .line 84
    move-result-wide v1

    .line 87
    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    .line 88
    sget-object v1, Lcom/android/systemui/R$styleable;->SmartReplyView:[I

    .line 90
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 92
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 96
    move-result p2

    .line 99
    move v1, v0

    .line 100
    move v2, v1

    .line 101
    move v3, v2

    .line 102
    :goto_0
    const/4 v4, 0x1

    .line 103
    if-ge v1, p2, :cond_2

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 106
    move-result v5

    .line 109
    if-ne v5, v4, :cond_0

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 112
    move-result v3

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    if-nez v5, :cond_1

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 119
    move-result v2

    .line 122
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    .line 129
    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 131
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    .line 133
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 137
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    .line 141
    new-instance p1, Ljava/util/PriorityQueue;

    .line 144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 146
    move-result p2

    .line 149
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    .line 150
    move-result p2

    .line 153
    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    .line 154
    invoke-direct {p1, p2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 159
    return-void
    .line 161
.end method

.method public static markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 24
    iget v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 26
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    iput p0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDispatchDrawTime:J

    .line 9
    return-void
    .line 11
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDrawChildTime:J

    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 20
    move-result p0

    .line 23
    return p0
    .line 24
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 9

    .line 1
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5
    const-string v0, "mMaxSqueezeRemeasureAttempts="

    .line 8
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 15
    const-string v0, "mTotalSqueezeRemeasureAttempts="

    .line 18
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 20
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 23
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 25
    const-string v0, "mMaxNumActions="

    .line 28
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    .line 33
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 35
    const-string v0, "mSmartRepliesGeneratedByAssistant="

    .line 38
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 43
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 45
    const-string v0, "mMinNumSystemGeneratedReplies="

    .line 48
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 55
    const-string v0, "mHeightUpperLimit="

    .line 58
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    .line 63
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 65
    const-string v0, "mDidHideSystemReplies="

    .line 68
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    .line 73
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    move-result-wide v0

    .line 81
    const-string v2, "lastMeasureAge (s)="

    .line 82
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastMeasureTime:J

    .line 87
    const-wide/16 v4, 0x0

    .line 89
    cmp-long v6, v2, v4

    .line 91
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 93
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 95
    if-nez v6, :cond_0

    .line 97
    move v2, v7

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    sub-long v2, v0, v2

    .line 101
    long-to-float v2, v2

    .line 103
    div-float/2addr v2, v8

    .line 104
    :goto_0
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 105
    const-string v2, "lastDrawChildAge (s)="

    .line 108
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 110
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDrawChildTime:J

    .line 113
    cmp-long v6, v2, v4

    .line 115
    if-nez v6, :cond_1

    .line 117
    move v2, v7

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    sub-long v2, v0, v2

    .line 121
    long-to-float v2, v2

    .line 123
    div-float/2addr v2, v8

    .line 124
    :goto_1
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 125
    const-string v2, "lastDispatchDrawAge (s)="

    .line 128
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDispatchDrawTime:J

    .line 133
    cmp-long v4, v2, v4

    .line 135
    if-nez v4, :cond_2

    .line 137
    goto :goto_2

    .line 139
    :cond_2
    sub-long/2addr v0, v2

    .line 140
    long-to-float v0, v0

    .line 141
    div-float v7, v0, v8

    .line 142
    :goto_2
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 147
    move-result v0

    .line 150
    const-string v1, "children: num="

    .line 151
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 156
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 159
    const/4 v1, 0x0

    .line 162
    :goto_3
    if-ge v1, v0, :cond_3

    .line 163
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 165
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    move-result-object v3

    .line 172
    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 173
    const-string v4, "["

    .line 175
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 180
    const-string v4, "] type="

    .line 183
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 188
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 190
    const-string v4, " squeezeStatus="

    .line 193
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 198
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 200
    const-string v4, " show="

    .line 203
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 205
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 208
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 210
    const-string v4, " noShowReason="

    .line 213
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 218
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string v3, " view="

    .line 223
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 231
    goto :goto_3

    .line 233
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 234
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 237
    return-void
    .line 240
.end method

.method public final filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v4

    .line 21
    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 24
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    instance-of v5, v3, Landroid/widget/Button;

    .line 30
    if-nez v5, :cond_0

    .line 32
    goto :goto_1

    .line 34
    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 35
    if-ne v4, p1, :cond_1

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
    .line 45
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 2
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(II)V

    .line 5
    return-object p0
    .line 8
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getHeightUpperLimit()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    .line 2
    return p0
    .line 4
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 2
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    const/4 p5, 0x1

    .line 7
    if-ne p1, p5, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    move p5, p3

    .line 11
    :goto_0
    sub-int/2addr p4, p2

    .line 12
    if-eqz p5, :cond_1

    .line 13
    iget p1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    .line 15
    sub-int/2addr p4, p1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget p4, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    .line 19
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result p1

    .line 24
    move p2, p3

    .line 25
    :goto_2
    if-ge p2, p1, :cond_5

    .line 26
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 36
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 38
    if-nez v1, :cond_2

    .line 40
    goto :goto_4

    .line 42
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    move-result v1

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    move-result v2

    .line 50
    if-eqz p5, :cond_3

    .line 51
    sub-int v3, p4, v1

    .line 53
    goto :goto_3

    .line 55
    :cond_3
    move v3, p4

    .line 56
    :goto_3
    add-int v4, v3, v1

    .line 57
    invoke-virtual {v0, v3, p3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 62
    add-int/2addr v1, v0

    .line 64
    if-eqz p5, :cond_4

    .line 65
    sub-int/2addr p4, v1

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    add-int/2addr p4, v1

    .line 69
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 70
    goto :goto_2

    .line 72
    :cond_5
    return-void
    .line 73
.end method

.method public final onMeasure(II)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    const v2, 0x7fffffff

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result v2

    .line 19
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v4

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_1
    if-ge v6, v4, :cond_1

    .line 26
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v7

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v7

    .line 35
    check-cast v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 36
    iput-boolean v5, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 38
    iput v5, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 40
    const-string/jumbo v8, "reset"

    .line 42
    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 45
    add-int/lit8 v6, v6, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    iput v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 50
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 52
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 54
    move-result v4

    .line 57
    const-string v6, "SmartReplyView"

    .line 58
    if-nez v4, :cond_2

    .line 60
    const-string v4, "Single line button queue leaked between onMeasure calls"

    .line 62
    invoke-static {v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 67
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 69
    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    .line 72
    iget v7, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    .line 74
    iget v8, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    .line 76
    add-int/2addr v7, v8

    .line 78
    invoke-direct {v4, v7, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    .line 79
    sget-object v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 82
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    .line 84
    move-result-object v8

    .line 87
    sget-object v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 88
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    .line 90
    move-result-object v10

    .line 93
    new-instance v11, Ljava/util/ArrayList;

    .line 94
    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    new-instance v8, Ljava/util/ArrayList;

    .line 102
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    .line 107
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v11

    .line 112
    const/4 v13, 0x0

    .line 113
    move v14, v5

    .line 114
    move v15, v14

    .line 115
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v16

    .line 119
    if-eqz v16, :cond_20

    .line 120
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v16

    .line 125
    move-object/from16 v5, v16

    .line 126
    check-cast v5, Landroid/view/View;

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    move-result-object v16

    .line 133
    move-object/from16 v3, v16

    .line 134
    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 136
    move-object/from16 v16, v11

    .line 138
    const/4 v11, -0x1

    .line 140
    if-eq v12, v11, :cond_3

    .line 141
    iget-object v11, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 143
    if-ne v11, v7, :cond_3

    .line 145
    if-lt v14, v12, :cond_3

    .line 147
    const-string v5, "max-actions-shown"

    .line 149
    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 151
    move-object/from16 v18, v10

    .line 153
    move/from16 v19, v12

    .line 155
    move/from16 v20, v14

    .line 157
    goto :goto_3

    .line 159
    :cond_3
    instance-of v11, v5, Landroid/widget/TextView;

    .line 160
    if-eqz v11, :cond_4

    .line 162
    move-object v11, v5

    .line 164
    check-cast v11, Landroid/widget/TextView;

    .line 165
    invoke-virtual {v11}, Landroid/widget/TextView;->nullLayouts()V

    .line 167
    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 170
    :cond_4
    sget v11, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 173
    invoke-virtual {v5, v11, v1}, Landroid/view/View;->measure(II)V

    .line 175
    move-object v11, v5

    .line 178
    check-cast v11, Landroid/widget/Button;

    .line 179
    invoke-virtual {v11}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 181
    move-result-object v18

    .line 184
    move/from16 v19, v12

    .line 185
    const-string v12, "Button layout is null after measure."

    .line 187
    if-nez v18, :cond_5

    .line 189
    invoke-static {v6, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_5
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v18, v10

    .line 197
    invoke-virtual {v11}, Landroid/widget/Button;->getLineCount()I

    .line 199
    move-result v10

    .line 202
    move/from16 v20, v14

    .line 203
    const/4 v14, 0x1

    .line 205
    if-ge v10, v14, :cond_6

    .line 206
    const-string v5, "line-count-0"

    .line 208
    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 210
    goto :goto_3

    .line 212
    :cond_6
    const/4 v14, 0x2

    .line 213
    if-le v10, v14, :cond_7

    .line 214
    const-string v5, "line-count-3+"

    .line 216
    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 218
    :goto_3
    move-object v3, v7

    .line 220
    move-object/from16 v22, v9

    .line 221
    move/from16 v14, v20

    .line 223
    goto/16 :goto_15

    .line 225
    :cond_7
    const/4 v14, 0x1

    .line 227
    if-ne v10, v14, :cond_8

    .line 228
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 230
    invoke-virtual {v10, v11}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_8
    new-instance v10, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    .line 235
    iget v11, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 237
    iget v14, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 239
    invoke-direct {v10, v11, v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    .line 241
    move-object/from16 v21, v10

    .line 244
    if-nez v13, :cond_9

    .line 246
    iget-object v10, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 248
    if-ne v10, v9, :cond_9

    .line 250
    new-instance v13, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    .line 252
    invoke-direct {v13, v11, v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    .line 254
    :cond_9
    if-nez v15, :cond_a

    .line 257
    const/4 v10, 0x0

    .line 259
    goto :goto_4

    .line 260
    :cond_a
    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 261
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 263
    move-result v11

    .line 266
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 267
    move-result v5

    .line 270
    iget v14, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 271
    add-int/2addr v10, v11

    .line 273
    add-int/2addr v10, v14

    .line 274
    iput v10, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 275
    iget v10, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 277
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 279
    move-result v5

    .line 282
    iput v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 283
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 285
    if-le v5, v2, :cond_1e

    .line 287
    :goto_5
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 289
    if-le v5, v2, :cond_1c

    .line 291
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 293
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 295
    move-result v5

    .line 298
    if-nez v5, :cond_1c

    .line 299
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 301
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 303
    move-result-object v5

    .line 306
    check-cast v5, Landroid/widget/Button;

    .line 307
    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 309
    move-result-object v10

    .line 312
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 313
    move-result-object v10

    .line 316
    invoke-virtual {v5}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 317
    move-result-object v11

    .line 320
    if-nez v11, :cond_b

    .line 321
    goto :goto_6

    .line 323
    :cond_b
    invoke-interface {v11, v10, v5}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 324
    move-result-object v10

    .line 327
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 328
    move-result-object v10

    .line 331
    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 332
    move-result v11

    .line 335
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 336
    invoke-virtual {v14, v10}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 338
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 341
    move-object/from16 v22, v9

    .line 343
    div-int/lit8 v9, v11, 0x2

    .line 345
    invoke-virtual {v14, v9}, Ljava/text/BreakIterator;->preceding(I)I

    .line 347
    move-result v9

    .line 350
    const/4 v14, -0x1

    .line 351
    if-ne v9, v14, :cond_c

    .line 352
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 354
    invoke-virtual {v9}, Ljava/text/BreakIterator;->next()I

    .line 356
    move-result v9

    .line 359
    if-ne v9, v14, :cond_c

    .line 360
    move-object/from16 v27, v3

    .line 362
    move-object/from16 v24, v7

    .line 364
    move-object/from16 v23, v13

    .line 366
    move/from16 v25, v15

    .line 368
    const/4 v0, -0x1

    .line 370
    const/4 v14, -0x1

    .line 371
    goto/16 :goto_e

    .line 372
    :cond_c
    invoke-virtual {v5}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    .line 374
    move-result-object v9

    .line 377
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 378
    invoke-virtual {v14}, Ljava/text/BreakIterator;->current()I

    .line 380
    move-result v14

    .line 383
    move-object/from16 v24, v7

    .line 384
    move-object/from16 v23, v13

    .line 386
    const/4 v13, 0x0

    .line 388
    invoke-static {v10, v13, v14, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 389
    move-result v7

    .line 392
    invoke-static {v10, v14, v11, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 393
    move-result v13

    .line 396
    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    .line 397
    move-result v14

    .line 400
    cmpl-float v7, v7, v13

    .line 401
    if-eqz v7, :cond_14

    .line 403
    if-lez v7, :cond_d

    .line 405
    const/4 v7, 0x1

    .line 407
    goto :goto_7

    .line 408
    :cond_d
    const/4 v7, 0x0

    .line 409
    :goto_7
    iget v13, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    .line 410
    move/from16 v25, v15

    .line 412
    const/4 v15, 0x0

    .line 414
    :goto_8
    if-ge v15, v13, :cond_13

    .line 415
    move/from16 v26, v13

    .line 417
    iget v13, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 419
    const/16 v17, 0x1

    .line 421
    add-int/lit8 v13, v13, 0x1

    .line 423
    iput v13, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 425
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 427
    if-eqz v7, :cond_e

    .line 429
    invoke-virtual {v13}, Ljava/text/BreakIterator;->previous()I

    .line 431
    move-result v13

    .line 434
    goto :goto_9

    .line 435
    :cond_e
    invoke-virtual {v13}, Ljava/text/BreakIterator;->next()I

    .line 436
    move-result v13

    .line 439
    :goto_9
    const/4 v0, -0x1

    .line 440
    if-ne v13, v0, :cond_f

    .line 441
    goto :goto_c

    .line 443
    :cond_f
    move-object/from16 v27, v3

    .line 444
    const/4 v0, 0x0

    .line 446
    invoke-static {v10, v0, v13, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 447
    move-result v3

    .line 450
    invoke-static {v10, v13, v11, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 451
    move-result v0

    .line 454
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 455
    move-result v13

    .line 458
    cmpg-float v28, v13, v14

    .line 459
    if-gez v28, :cond_15

    .line 461
    if-eqz v7, :cond_10

    .line 463
    cmpg-float v0, v3, v0

    .line 465
    if-gtz v0, :cond_11

    .line 467
    goto :goto_a

    .line 469
    :cond_10
    cmpl-float v0, v3, v0

    .line 470
    if-ltz v0, :cond_11

    .line 472
    :goto_a
    const/4 v0, 0x1

    .line 474
    goto :goto_b

    .line 475
    :cond_11
    const/4 v0, 0x0

    .line 476
    :goto_b
    if-eqz v0, :cond_12

    .line 477
    move v14, v13

    .line 479
    goto :goto_d

    .line 480
    :cond_12
    add-int/lit8 v15, v15, 0x1

    .line 481
    move-object/from16 v0, p0

    .line 483
    move v14, v13

    .line 485
    move/from16 v13, v26

    .line 486
    move-object/from16 v3, v27

    .line 488
    goto :goto_8

    .line 490
    :cond_13
    :goto_c
    move-object/from16 v27, v3

    .line 491
    goto :goto_d

    .line 493
    :cond_14
    move-object/from16 v27, v3

    .line 494
    move/from16 v25, v15

    .line 496
    :cond_15
    :goto_d
    float-to-double v9, v14

    .line 498
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 499
    move-result-wide v9

    .line 502
    double-to-int v0, v9

    .line 503
    move v14, v0

    .line 504
    const/4 v0, -0x1

    .line 505
    :goto_e
    if-ne v14, v0, :cond_16

    .line 506
    goto :goto_11

    .line 508
    :cond_16
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 509
    move-result v0

    .line 512
    invoke-virtual {v5}, Landroid/widget/TextView;->nullLayouts()V

    .line 513
    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 516
    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingStart()I

    .line 519
    move-result v3

    .line 522
    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingEnd()I

    .line 523
    move-result v7

    .line 526
    add-int/2addr v7, v3

    .line 527
    add-int/2addr v7, v14

    .line 528
    invoke-virtual {v5}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 529
    move-result-object v3

    .line 532
    const/4 v9, 0x0

    .line 533
    aget-object v3, v3, v9

    .line 534
    if-nez v3, :cond_17

    .line 536
    const/4 v3, 0x0

    .line 538
    goto :goto_f

    .line 539
    :cond_17
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 540
    move-result-object v3

    .line 543
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 544
    move-result v3

    .line 547
    invoke-virtual {v5}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    .line 548
    move-result v9

    .line 551
    add-int/2addr v3, v9

    .line 552
    :goto_f
    add-int/2addr v7, v3

    .line 553
    const/high16 v3, -0x80000000

    .line 554
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 556
    move-result v7

    .line 559
    invoke-virtual {v5, v7, v1}, Landroid/widget/Button;->measure(II)V

    .line 560
    invoke-virtual {v5}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 563
    move-result-object v3

    .line 566
    if-nez v3, :cond_18

    .line 567
    invoke-static {v6, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_18
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 572
    move-result v3

    .line 575
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 576
    move-result-object v7

    .line 579
    check-cast v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 580
    invoke-virtual {v5}, Landroid/widget/Button;->getLineCount()I

    .line 582
    move-result v9

    .line 585
    const/4 v10, 0x2

    .line 586
    if-gt v9, v10, :cond_1a

    .line 587
    if-lt v3, v0, :cond_19

    .line 589
    goto :goto_10

    .line 591
    :cond_19
    const/4 v9, 0x1

    .line 592
    iput v9, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 593
    sub-int v14, v0, v3

    .line 595
    const/4 v0, -0x1

    .line 597
    goto :goto_12

    .line 598
    :cond_1a
    :goto_10
    const/4 v0, 0x3

    .line 599
    iput v0, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 600
    :goto_11
    const/4 v0, -0x1

    .line 602
    const/4 v14, -0x1

    .line 603
    :goto_12
    if-eq v14, v0, :cond_1b

    .line 604
    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 606
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 608
    move-result v5

    .line 611
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 612
    move-result v3

    .line 615
    iput v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 616
    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 618
    sub-int/2addr v3, v14

    .line 620
    iput v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 621
    :cond_1b
    move-object/from16 v0, p0

    .line 623
    move-object/from16 v9, v22

    .line 625
    move-object/from16 v13, v23

    .line 627
    move-object/from16 v7, v24

    .line 629
    move/from16 v15, v25

    .line 631
    move-object/from16 v3, v27

    .line 633
    goto/16 :goto_5

    .line 635
    :cond_1c
    move-object/from16 v27, v3

    .line 637
    move-object/from16 v24, v7

    .line 639
    move-object/from16 v22, v9

    .line 641
    move-object/from16 v23, v13

    .line 643
    move/from16 v25, v15

    .line 645
    iget v0, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 647
    if-le v0, v2, :cond_1d

    .line 649
    const/4 v0, 0x3

    .line 651
    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    .line 652
    const-string v0, "overflow"

    .line 655
    move-object/from16 v3, v27

    .line 657
    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 659
    move/from16 v14, v20

    .line 661
    move-object/from16 v4, v21

    .line 663
    move-object/from16 v13, v23

    .line 665
    move-object/from16 v3, v24

    .line 667
    move/from16 v15, v25

    .line 669
    goto :goto_15

    .line 671
    :cond_1d
    move-object/from16 v3, v27

    .line 672
    const/4 v0, 0x2

    .line 674
    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    .line 675
    goto :goto_13

    .line 678
    :cond_1e
    move-object/from16 v24, v7

    .line 679
    move-object/from16 v22, v9

    .line 681
    move-object/from16 v23, v13

    .line 683
    move/from16 v25, v15

    .line 685
    :goto_13
    const/4 v0, 0x1

    .line 687
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 688
    const-string v0, "n/a"

    .line 690
    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 692
    add-int/lit8 v15, v25, 0x1

    .line 694
    iget-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 696
    move-object/from16 v3, v24

    .line 698
    if-ne v0, v3, :cond_1f

    .line 700
    add-int/lit8 v14, v20, 0x1

    .line 702
    goto :goto_14

    .line 704
    :cond_1f
    move/from16 v14, v20

    .line 705
    :goto_14
    move-object/from16 v13, v23

    .line 707
    :goto_15
    const/4 v5, 0x0

    .line 709
    move-object/from16 v0, p0

    .line 710
    move-object v7, v3

    .line 712
    move-object/from16 v11, v16

    .line 713
    move-object/from16 v10, v18

    .line 715
    move/from16 v12, v19

    .line 717
    move-object/from16 v9, v22

    .line 719
    goto/16 :goto_2

    .line 721
    :cond_20
    move-object/from16 v18, v10

    .line 723
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    .line 725
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 727
    if-eqz v2, :cond_27

    .line 729
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    .line 731
    const/4 v3, 0x1

    .line 733
    if-gt v2, v3, :cond_21

    .line 734
    goto :goto_17

    .line 736
    :cond_21
    move-object/from16 v10, v18

    .line 737
    check-cast v10, Ljava/util/ArrayList;

    .line 739
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 741
    move-result-object v2

    .line 744
    const/4 v3, 0x0

    .line 745
    :cond_22
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 746
    move-result v5

    .line 749
    if-eqz v5, :cond_23

    .line 750
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 752
    move-result-object v5

    .line 755
    check-cast v5, Landroid/view/View;

    .line 756
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 758
    move-result-object v5

    .line 761
    check-cast v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 762
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 764
    if-eqz v5, :cond_22

    .line 766
    add-int/lit8 v3, v3, 0x1

    .line 768
    goto :goto_16

    .line 770
    :cond_23
    if-eqz v3, :cond_25

    .line 771
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    .line 773
    if-lt v3, v2, :cond_24

    .line 775
    goto :goto_17

    .line 777
    :cond_24
    const/4 v14, 0x0

    .line 778
    goto :goto_18

    .line 779
    :cond_25
    :goto_17
    const/4 v14, 0x1

    .line 780
    :goto_18
    if-nez v14, :cond_27

    .line 781
    move-object/from16 v10, v18

    .line 783
    check-cast v10, Ljava/util/ArrayList;

    .line 785
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 787
    move-result-object v2

    .line 790
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    move-result v3

    .line 794
    if-eqz v3, :cond_26

    .line 795
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 797
    move-result-object v3

    .line 800
    check-cast v3, Landroid/view/View;

    .line 801
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 803
    move-result-object v3

    .line 806
    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 807
    const/4 v14, 0x0

    .line 809
    iput-boolean v14, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 810
    const-string v4, "not-enough-system-replies"

    .line 812
    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 814
    goto :goto_19

    .line 816
    :cond_26
    const/4 v3, 0x1

    .line 817
    const/4 v14, 0x0

    .line 818
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    .line 819
    move-object v4, v13

    .line 821
    goto :goto_1a

    .line 822
    :cond_27
    const/4 v3, 0x1

    .line 823
    const/4 v14, 0x0

    .line 824
    :goto_1a
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 825
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    .line 827
    iget v2, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 830
    const/high16 v5, 0x40000000    # 2.0f

    .line 832
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 834
    move-result v5

    .line 837
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 838
    move-result v6

    .line 841
    move v13, v14

    .line 842
    :goto_1b
    if-ge v13, v6, :cond_2c

    .line 843
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 845
    move-result-object v7

    .line 848
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 849
    move-result-object v8

    .line 852
    check-cast v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 853
    iget-boolean v9, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 855
    if-nez v9, :cond_28

    .line 857
    const/high16 v8, -0x80000000

    .line 859
    const/4 v10, 0x3

    .line 861
    goto :goto_1d

    .line 862
    :cond_28
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 863
    move-result v9

    .line 866
    iget v8, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 867
    const/4 v10, 0x3

    .line 869
    if-ne v8, v10, :cond_29

    .line 870
    move v8, v3

    .line 872
    const v9, 0x7fffffff

    .line 873
    goto :goto_1c

    .line 876
    :cond_29
    move v8, v14

    .line 877
    :goto_1c
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 878
    move-result v11

    .line 881
    if-eq v11, v2, :cond_2a

    .line 882
    move v8, v3

    .line 884
    :cond_2a
    if-eqz v8, :cond_2b

    .line 885
    const/high16 v8, -0x80000000

    .line 887
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 889
    move-result v9

    .line 892
    invoke-virtual {v7, v9, v5}, Landroid/view/View;->measure(II)V

    .line 893
    goto :goto_1d

    .line 896
    :cond_2b
    const/high16 v8, -0x80000000

    .line 897
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    .line 899
    goto :goto_1b

    .line 901
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 902
    move-result v2

    .line 905
    iget v3, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    .line 906
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 908
    add-int/2addr v3, v5

    .line 910
    iget v5, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    .line 911
    add-int/2addr v3, v5

    .line 913
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 914
    move-result v2

    .line 917
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 918
    move-result v3

    .line 921
    iget v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 922
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 924
    move-result v3

    .line 927
    move/from16 v4, p1

    .line 928
    invoke-static {v3, v4}, Landroid/view/ViewGroup;->resolveSize(II)I

    .line 930
    move-result v3

    .line 933
    invoke-static {v2, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    .line 934
    move-result v1

    .line 937
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 938
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 941
    move-result-wide v1

    .line 944
    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastMeasureTime:J

    .line 945
    return-void
    .line 947
.end method

.method public setBackgroundTintColor(IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentColorized:Z

    .line 6
    if-ne p2, v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 11
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentColorized:Z

    .line 13
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->isColorDark(I)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    .line 24
    :goto_0
    const/high16 v2, -0x1000000

    .line 26
    or-int/2addr p1, v2

    .line 28
    invoke-static {v1, p1, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    .line 29
    move-result v1

    .line 32
    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 33
    if-eqz p2, :cond_2

    .line 35
    goto :goto_1

    .line 37
    :cond_2
    iget p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    .line 38
    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    .line 40
    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    .line 42
    move-result v1

    .line 45
    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentStrokeColor:I

    .line 46
    if-eqz v0, :cond_3

    .line 48
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    .line 50
    goto :goto_2

    .line 52
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    .line 53
    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 57
    move-result p1

    .line 60
    const/4 p2, 0x0

    .line 61
    :goto_3
    if-ge p2, p1, :cond_4

    .line 62
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/Button;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;)V

    .line 70
    add-int/lit8 p2, p2, 0x1

    .line 73
    goto :goto_3

    .line 75
    :cond_4
    return-void
    .line 76
.end method

.method public final setButtonColors(Landroid/widget/Button;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 15
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    .line 17
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 19
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 23
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 30
    instance-of v2, v1, Landroid/graphics/drawable/InsetDrawable;

    .line 31
    if-eqz v2, :cond_0

    .line 33
    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 35
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v1

    .line 40
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    .line 41
    if-eqz v2, :cond_0

    .line 43
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 45
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 47
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 49
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    .line 52
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentStrokeColor:I

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 62
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    return-void
    .line 67
.end method

.method public setMaxNumActions(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    .line 2
    return-void
    .line 4
.end method

.method public setMaxSqueezeRemeasureAttempts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    .line 2
    return-void
    .line 4
.end method

.method public setMinNumSystemGeneratedReplies(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    .line 2
    return-void
    .line 4
.end method
