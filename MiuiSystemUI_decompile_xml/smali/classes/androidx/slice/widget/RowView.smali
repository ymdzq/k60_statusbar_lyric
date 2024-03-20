.class public Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final mActionDivider:Landroid/view/View;

.field public final mActionSpinner:Landroid/widget/ProgressBar;

.field public final mActions:Landroid/util/ArrayMap;

.field public mAllowTwoLines:Z

.field public final mBottomDivider:Landroid/view/View;

.field public final mContent:Landroid/widget/LinearLayout;

.field public final mEndContainer:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field public mHeaderActions:Ljava/util/List;

.field public mIconSize:I

.field public mImageSize:I

.field public mIsHeader:Z

.field public mIsRangeSliding:Z

.field public mIsStarRating:Z

.field public mLastSentRangeUpdate:J

.field public final mLastUpdatedText:Landroid/widget/TextView;

.field public mLoadingActions:Ljava/util/Set;

.field public mMeasuredRangeHeight:I

.field public final mPrimaryText:Landroid/widget/TextView;

.field public mRangeBar:Landroid/view/View;

.field public mRangeItem:Landroidx/slice/SliceItem;

.field public mRangeMaxValue:I

.field public mRangeMinValue:I

.field public final mRangeUpdater:Landroidx/slice/widget/RowView$2;

.field public mRangeUpdaterRunning:Z

.field public mRangeValue:I

.field public final mRatingBarChangeListener:Landroidx/slice/widget/RowView$4;

.field public final mRootView:Landroid/widget/LinearLayout;

.field public mRowAction:Landroidx/slice/core/SliceActionImpl;

.field public mRowContent:Landroidx/slice/widget/RowContent;

.field public mRowIndex:I

.field public final mSecondaryText:Landroid/widget/TextView;

.field public mSeeMoreView:Landroid/view/View;

.field public final mSeekBarChangeListener:Landroidx/slice/widget/RowView$3;

.field public mSelectionItem:Landroidx/slice/SliceItem;

.field public mSelectionOptionKeys:Ljava/util/ArrayList;

.field public mSelectionOptionValues:Ljava/util/ArrayList;

.field public mSelectionSpinner:Landroid/widget/Spinner;

.field public mShowActionSpinner:Z

.field public final mStartContainer:Landroid/widget/LinearLayout;

.field public mStartItem:Landroidx/slice/SliceItem;

.field public final mSubContent:Landroid/widget/LinearLayout;

.field public final mToggles:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 24
    new-instance v0, Landroidx/slice/widget/RowView$2;

    .line 26
    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    .line 28
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Landroidx/slice/widget/RowView$2;

    .line 31
    new-instance v0, Landroidx/slice/widget/RowView$3;

    .line 33
    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$3;-><init>(Landroidx/slice/widget/RowView;)V

    .line 35
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroidx/slice/widget/RowView$3;

    .line 38
    new-instance v0, Landroidx/slice/widget/RowView$4;

    .line 40
    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$4;-><init>(Landroidx/slice/widget/RowView;)V

    .line 42
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRatingBarChangeListener:Landroidx/slice/widget/RowView$4;

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v0

    .line 54
    const v1, 0x7f070049    # @dimen/abc_slice_icon_size '24.0dp'

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result v0

    .line 61
    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v0

    .line 71
    const v1, 0x7f070058    # @dimen/abc_slice_small_image_size '48.0dp'

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    move-result v0

    .line 78
    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 81
    move-result-object p1

    .line 84
    const v0, 0x7f0d002b    # @layout/abc_slice_small_template 'res/layout/abc_slice_small_template.xml'

    .line 85
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    move-result-object p1

    .line 92
    check-cast p1, Landroid/widget/LinearLayout;

    .line 93
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 97
    const p1, 0x7f0a041c    # @id/icon_frame

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/LinearLayout;

    .line 107
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 109
    const p1, 0x1020002    # @android:id/content

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object p1

    .line 117
    check-cast p1, Landroid/widget/LinearLayout;

    .line 118
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0a08fb    # @id/subcontent

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    .line 131
    const v0, 0x1020016    # @android:id/title

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/TextView;

    .line 140
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 142
    const v0, 0x1020010    # @android:id/summary

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v0

    .line 150
    check-cast v0, Landroid/widget/TextView;

    .line 151
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a04b4    # @id/last_updated

    .line 155
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v0

    .line 161
    check-cast v0, Landroid/widget/TextView;

    .line 162
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0a0141    # @id/bottom_divider

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v0

    .line 172
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    .line 173
    const v0, 0x7f0a006c    # @id/action_divider

    .line 175
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v0

    .line 181
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    .line 182
    const v0, 0x7f0a0087    # @id/action_sent_indicator

    .line 184
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 190
    check-cast v0, Landroid/widget/ProgressBar;

    .line 191
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 195
    move-result-object v1

    .line 198
    const v2, 0x7f0401a9    # @attr/colorControlHighlight

    .line 199
    invoke-static {v2, v1}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(ILandroid/content/Context;)I

    .line 202
    move-result v1

    .line 205
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 206
    move-result-object v2

    .line 209
    if-eqz v2, :cond_0

    .line 210
    if-eqz v1, :cond_0

    .line 212
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 214
    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_0
    const v0, 0x1020018    # @android:id/widget_frame

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/LinearLayout;

    .line 229
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 231
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 233
    const/4 v0, 0x2

    .line 235
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 236
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 239
    return-void
    .line 242
.end method

.method private getRowContentHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 2
    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 4
    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 16
    if-nez v1, :cond_0

    .line 18
    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 20
    iget v1, v1, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    .line 22
    sub-int/2addr v0, v1

    .line 24
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 29
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    .line 31
    sub-int/2addr v0, p0

    .line 33
    :cond_1
    return v0
    .line 34
.end method

.method public static setViewSidePaddings(Landroid/view/View;II)V
    .locals 2

    .line 1
    if-gez p1, :cond_0

    .line 2
    if-gez p2, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz p0, :cond_4

    .line 9
    if-eqz v0, :cond_1

    .line 11
    goto :goto_3

    .line 13
    :cond_1
    if-ltz p1, :cond_2

    .line 14
    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 17
    move-result p1

    .line 20
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    move-result v0

    .line 24
    if-ltz p2, :cond_3

    .line 25
    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    move-result p2

    .line 31
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    move-result v1

    .line 35
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 36
    :cond_4
    :goto_3
    return-void
    .line 39
.end method


# virtual methods
.method public final addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .locals 8

    .line 1
    new-instance v6, Landroidx/slice/widget/SliceActionView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 8
    invoke-direct {v6, v0, v1}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;Landroidx/slice/widget/RowStyle;)V

    .line 10
    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 16
    move-result v0

    .line 19
    const/16 v1, 0x8

    .line 20
    const/4 v2, 0x0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    .line 28
    move-result p3

    .line 31
    xor-int/lit8 v0, p3, 0x1

    .line 32
    if-eqz p3, :cond_1

    .line 34
    const/4 v1, 0x3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_0
    new-instance v3, Landroidx/slice/widget/EventInfo;

    .line 39
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 41
    move-result v4

    .line 44
    iget v5, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 45
    invoke-direct {v3, v4, v0, v1, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 47
    const/4 v7, 0x1

    .line 50
    if-eqz p4, :cond_2

    .line 51
    iput v2, v3, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 53
    iput v2, v3, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 55
    iput v7, v3, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 57
    :cond_2
    iget-object p4, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 59
    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 61
    move-object v0, v6

    .line 63
    move-object v1, p1

    .line 64
    move-object v2, v3

    .line 65
    move-object v3, p4

    .line 66
    move v4, p2

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 68
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 71
    iget-object p4, p1, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 73
    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result p2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    invoke-virtual {v6, v7}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    .line 81
    :cond_3
    if-eqz p3, :cond_4

    .line 84
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 86
    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    goto :goto_1

    .line 91
    :cond_4
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 92
    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_1
    return-void
    .line 97
.end method

.method public final addItem(Landroidx/slice/SliceItem;IZ)Z
    .locals 9

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 7
    :goto_0
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 9
    const-string/jumbo v2, "slice"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_1

    .line 20
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 22
    const-string v4, "action"

    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    :cond_1
    const-string/jumbo v1, "shortcut"

    .line 32
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    .line 41
    invoke-direct {v1, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 43
    invoke-virtual {p0, v1, p2, v0, p3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 46
    return v3

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 50
    move-result-object p3

    .line 53
    invoke-virtual {p3}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 54
    move-result-object p3

    .line 57
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 61
    if-nez p3, :cond_3

    .line 62
    return v2

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 69
    move-result-object p1

    .line 72
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/slice/SliceItem;

    .line 77
    :cond_4
    iget-object p3, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 79
    const-string v1, "image"

    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p3

    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz p3, :cond_5

    .line 88
    iget-object p3, p1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 90
    check-cast p3, Landroidx/core/graphics/drawable/IconCompat;

    .line 92
    move-object v4, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    iget-object p3, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 96
    const-string v4, "long"

    .line 98
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result p3

    .line 103
    if-eqz p3, :cond_6

    .line 104
    move-object v4, p1

    .line 106
    move-object p3, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_6
    move-object p3, v1

    .line 109
    move-object v4, p3

    .line 110
    :goto_1
    if-eqz p3, :cond_13

    .line 111
    const-string v1, "no_tint"

    .line 113
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 115
    move-result v1

    .line 118
    xor-int/2addr v1, v3

    .line 119
    const-string v4, "raw"

    .line 120
    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 122
    move-result v4

    .line 125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 126
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 130
    move-result-object v5

    .line 133
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 134
    new-instance v6, Landroid/widget/ImageView;

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v7

    .line 141
    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 145
    move-result-object v7

    .line 148
    invoke-virtual {p3, v7}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 149
    move-result-object p3

    .line 152
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 153
    if-eqz v7, :cond_8

    .line 155
    iget v7, v7, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    .line 157
    const/4 v8, 0x0

    .line 159
    cmpl-float v7, v7, v8

    .line 160
    if-lez v7, :cond_7

    .line 162
    move v7, v3

    .line 164
    goto :goto_2

    .line 165
    :cond_7
    move v7, v2

    .line 166
    :goto_2
    if-eqz v7, :cond_8

    .line 167
    move v7, v3

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    move v7, v2

    .line 171
    :goto_3
    if-eqz v7, :cond_9

    .line 172
    const-string v7, "large"

    .line 174
    invoke-virtual {p1, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 176
    move-result p1

    .line 179
    if-eqz p1, :cond_9

    .line 180
    new-instance p1, Landroidx/slice/CornerDrawable;

    .line 182
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 184
    iget v7, v7, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    .line 186
    invoke-direct {p1, p3, v7}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 188
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    goto :goto_4

    .line 194
    :cond_9
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :goto_4
    const/4 p1, -0x1

    .line 198
    if-eqz v1, :cond_a

    .line 199
    if-eq p2, p1, :cond_a

    .line 201
    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 203
    :cond_a
    iget-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 206
    if-eqz p2, :cond_b

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 210
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    goto :goto_5

    .line 216
    :cond_b
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    :goto_5
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 220
    if-eqz p2, :cond_e

    .line 222
    iget v0, p2, Landroidx/slice/widget/RowStyle;->mIconSize:I

    .line 224
    if-lez v0, :cond_c

    .line 226
    goto :goto_6

    .line 228
    :cond_c
    iget v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 229
    :goto_6
    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 231
    iget p2, p2, Landroidx/slice/widget/RowStyle;->mImageSize:I

    .line 233
    if-lez p2, :cond_d

    .line 235
    goto :goto_7

    .line 237
    :cond_d
    iget p2, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 238
    :goto_7
    iput p2, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 240
    :cond_e
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 242
    move-result-object p2

    .line 245
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    if-eqz v4, :cond_f

    .line 248
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 250
    move-result v0

    .line 253
    int-to-float v0, v0

    .line 254
    div-float/2addr v0, v5

    .line 255
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 256
    move-result v0

    .line 259
    goto :goto_8

    .line 260
    :cond_f
    iget v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 261
    :goto_8
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 263
    if-eqz v4, :cond_10

    .line 265
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 267
    move-result p3

    .line 270
    int-to-float p3, p3

    .line 271
    div-float/2addr p3, v5

    .line 272
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 273
    move-result p3

    .line 276
    goto :goto_9

    .line 277
    :cond_10
    iget p3, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 278
    :goto_9
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 280
    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    if-eqz v1, :cond_12

    .line 285
    iget p2, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 287
    if-ne p2, p1, :cond_11

    .line 289
    iget p0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 291
    div-int/lit8 p0, p0, 0x2

    .line 293
    goto :goto_a

    .line 295
    :cond_11
    iget p0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 296
    sub-int/2addr p2, p0

    .line 298
    div-int/lit8 p0, p2, 0x2

    .line 299
    goto :goto_a

    .line 301
    :cond_12
    move p0, v2

    .line 302
    :goto_a
    invoke-virtual {v6, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 303
    move-object v1, v6

    .line 306
    goto :goto_b

    .line 307
    :cond_13
    if-eqz v4, :cond_15

    .line 308
    new-instance v1, Landroid/widget/TextView;

    .line 310
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 312
    move-result-object p2

    .line 315
    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 319
    move-result-object p2

    .line 322
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    .line 323
    move-result-wide v4

    .line 326
    invoke-static {v4, v5, p2}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(JLandroid/content/Context;)Ljava/lang/CharSequence;

    .line 327
    move-result-object p1

    .line 330
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 334
    if-eqz p1, :cond_14

    .line 336
    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    .line 338
    int-to-float p1, p1

    .line 340
    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 341
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 344
    invoke-virtual {p0}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    .line 346
    move-result p0

    .line 349
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    :cond_14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 353
    :cond_15
    :goto_b
    if-eqz v1, :cond_16

    .line 356
    move v2, v3

    .line 358
    :cond_16
    return v2
    .line 359
.end method

.method public final addSubtitle(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 2
    if-eqz v0, :cond_16

    .line 4
    iget-object v0, v0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto/16 :goto_d

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 23
    iget-object v2, v0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    .line 25
    if-nez v2, :cond_2

    .line 27
    iget-object v2, v0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 32
    iget-object v2, v0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    .line 34
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    .line 36
    const/4 v3, 0x0

    .line 38
    if-eqz v0, :cond_6

    .line 39
    iget-wide v4, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    .line 41
    const-wide/16 v6, -0x1

    .line 43
    cmp-long v0, v4, v6

    .line 45
    if-eqz v0, :cond_6

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    move-result-wide v6

    .line 52
    sub-long/2addr v6, v4

    .line 53
    const-wide v4, 0x7528ad000L

    .line 54
    cmp-long v0, v6, v4

    .line 59
    if-lez v0, :cond_3

    .line 61
    div-long/2addr v6, v4

    .line 63
    long-to-int v0, v6

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v4

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 72
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 76
    const v6, 0x7f11000b    # @plurals/abc_slice_duration_years

    .line 77
    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const-wide/32 v4, 0x5265c00

    .line 85
    cmp-long v0, v6, v4

    .line 88
    if-lez v0, :cond_4

    .line 90
    div-long/2addr v6, v4

    .line 92
    long-to-int v0, v6

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v4

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v5

    .line 101
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 102
    move-result-object v5

    .line 105
    const v6, 0x7f110009    # @plurals/abc_slice_duration_days

    .line 106
    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const-wide/32 v4, 0xea60

    .line 114
    cmp-long v0, v6, v4

    .line 117
    if-lez v0, :cond_5

    .line 119
    div-long/2addr v6, v4

    .line 121
    long-to-int v0, v6

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 123
    move-result-object v4

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v5

    .line 130
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 131
    move-result-object v5

    .line 134
    const v6, 0x7f11000a    # @plurals/abc_slice_duration_min

    .line 135
    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move-object v0, v3

    .line 143
    :goto_1
    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object v4

    .line 149
    const v5, 0x7f130030    # @string/abc_slice_updated 'Updated %1$s'

    .line 150
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 156
    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 160
    goto :goto_2

    .line 161
    :cond_6
    move-object v0, v3

    .line 162
    :goto_2
    if-eqz v2, :cond_7

    .line 163
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    .line 165
    move-result-object v3

    .line 168
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    move-result v4

    .line 172
    const/4 v5, 0x0

    .line 173
    if-eqz v4, :cond_9

    .line 174
    if-eqz v2, :cond_8

    .line 176
    const-string v4, "partial"

    .line 178
    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 180
    move-result v2

    .line 183
    if-eqz v2, :cond_8

    .line 184
    goto :goto_3

    .line 186
    :cond_8
    move v2, v5

    .line 187
    goto :goto_4

    .line 188
    :cond_9
    :goto_3
    move v2, v1

    .line 189
    :goto_4
    if-eqz v2, :cond_c

    .line 190
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 192
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 197
    if-eqz v4, :cond_c

    .line 199
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 201
    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 203
    if-eqz v7, :cond_a

    .line 205
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    .line 207
    goto :goto_5

    .line 209
    :cond_a
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    .line 210
    :goto_5
    int-to-float v4, v4

    .line 212
    invoke-virtual {v6, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 216
    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 218
    invoke-virtual {v6}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    .line 220
    move-result v6

    .line 223
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-boolean v4, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 227
    if-eqz v4, :cond_b

    .line 229
    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 231
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    .line 233
    goto :goto_6

    .line 235
    :cond_b
    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 236
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    .line 238
    :goto_6
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 240
    invoke-virtual {v6, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 242
    :cond_c
    const/4 v4, 0x2

    .line 245
    if-eqz v0, :cond_f

    .line 246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    move-result v3

    .line 251
    if-nez v3, :cond_d

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    const-string v6, " \u00b7 "

    .line 256
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 267
    :cond_d
    new-instance v3, Landroid/text/SpannableString;

    .line 268
    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 270
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 273
    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 278
    move-result v7

    .line 281
    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 282
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 285
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 290
    if-eqz v3, :cond_f

    .line 292
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 294
    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 296
    if-eqz v7, :cond_e

    .line 298
    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    .line 300
    goto :goto_7

    .line 302
    :cond_e
    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    .line 303
    :goto_7
    int-to-float v3, v3

    .line 305
    invoke-virtual {v6, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 309
    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 311
    invoke-virtual {v6}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    .line 313
    move-result v6

    .line 316
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    :cond_f
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    move-result v6

    .line 325
    const/16 v7, 0x8

    .line 326
    if-eqz v6, :cond_10

    .line 328
    move v6, v7

    .line 330
    goto :goto_8

    .line 331
    :cond_10
    move v6, v5

    .line 332
    :goto_8
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 336
    if-eqz v2, :cond_11

    .line 338
    move v7, v5

    .line 340
    :cond_11
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 344
    iget-boolean v3, v3, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 346
    if-eqz v3, :cond_13

    .line 348
    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    .line 350
    if-eqz v3, :cond_12

    .line 352
    goto :goto_9

    .line 354
    :cond_12
    move v3, v5

    .line 355
    goto :goto_a

    .line 356
    :cond_13
    :goto_9
    move v3, v1

    .line 357
    :goto_a
    if-eqz v3, :cond_14

    .line 358
    if-nez p1, :cond_14

    .line 360
    if-eqz v2, :cond_14

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    move-result p1

    .line 367
    if-eqz p1, :cond_14

    .line 368
    goto :goto_b

    .line 370
    :cond_14
    move v4, v1

    .line 371
    :goto_b
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 372
    if-ne v4, v1, :cond_15

    .line 374
    goto :goto_c

    .line 376
    :cond_15
    move v1, v5

    .line 377
    :goto_c
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 378
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 381
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 383
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 386
    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 388
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 391
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 393
    :cond_16
    :goto_d
    return-void
    .line 396
.end method

.method public getEndItemKeys()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 7
    if-eqz p0, :cond_1

    .line 9
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 11
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    new-instance v2, Landroidx/slice/core/SliceActionImpl;

    .line 20
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/slice/SliceItem;

    .line 26
    invoke-direct {v2, v3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 28
    iget-object v2, v2, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    .line 31
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
    .line 41
.end method

.method public getPrimaryActionItem()Landroidx/slice/SliceItem;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public getPrimaryActionKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    .line 14
    invoke-direct {v1, v0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 16
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 19
    iget-object p0, v1, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    .line 21
    return-object p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
    .line 25
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 2
    if-eqz v0, :cond_b

    .line 4
    iget-object v1, v0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 19
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, -0x1

    .line 33
    sparse-switch v2, :sswitch_data_0

    .line 34
    goto :goto_0

    .line 37
    :sswitch_0
    const-string v2, "date_picker"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    const/4 v4, 0x2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_1
    const-string/jumbo v2, "time_picker"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    move v4, v3

    .line 59
    goto :goto_0

    .line 60
    :sswitch_2
    const-string/jumbo v2, "toggle"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    move v4, v1

    .line 71
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 72
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 75
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 77
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .line 83
    goto :goto_1

    .line 85
    :pswitch_0
    invoke-virtual {p0, v3}, Landroidx/slice/widget/RowView;->onClickPicker(Z)V

    .line 86
    return-void

    .line 89
    :pswitch_1
    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->onClickPicker(Z)V

    .line 90
    return-void

    .line 93
    :pswitch_2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 94
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 96
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 101
    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .line 102
    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 105
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 107
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 112
    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .line 113
    :goto_1
    if-eqz v0, :cond_7

    .line 115
    instance-of p1, p1, Landroidx/slice/widget/SliceActionView;

    .line 117
    if-nez p1, :cond_7

    .line 119
    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 121
    if-nez p0, :cond_5

    .line 123
    goto/16 :goto_2

    .line 125
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    .line 127
    move-result p0

    .line 130
    if-eqz p0, :cond_6

    .line 131
    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 133
    if-eqz p0, :cond_b

    .line 135
    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 137
    if-eqz p0, :cond_b

    .line 139
    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    .line 141
    move-result p0

    .line 144
    if-eqz p0, :cond_b

    .line 145
    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 147
    check-cast p0, Landroid/widget/Checkable;

    .line 149
    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    .line 151
    goto :goto_2

    .line 154
    :cond_6
    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    .line 155
    goto :goto_2

    .line 158
    :cond_7
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 159
    iget-boolean p1, p1, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 161
    if-eqz p1, :cond_8

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 165
    goto :goto_2

    .line 168
    :cond_8
    :try_start_0
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 169
    iget-object p1, p1, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 173
    move-result-object v0

    .line 176
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p1, v0, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 178
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 181
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 183
    if-eqz p1, :cond_9

    .line 185
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 187
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 190
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 192
    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 194
    check-cast p1, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 196
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 203
    :cond_9
    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 206
    if-eqz p1, :cond_a

    .line 208
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 210
    if-eqz p1, :cond_a

    .line 212
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 214
    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 216
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 218
    check-cast p1, Landroidx/slice/widget/SliceAdapter;

    .line 220
    invoke-virtual {p1, v0, v1}, Landroidx/slice/widget/SliceAdapter;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 222
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 227
    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 229
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_a
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_2

    .line 237
    :catch_0
    move-exception p0

    .line 238
    const-string p1, "RowView"

    .line 239
    const-string v0, "PendingIntent for slice cannot be sent"

    .line 241
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :cond_b
    :goto_2
    return-void

    .line 246
    nop

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 262
.end method

.method public final onClickPicker(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "ASDF"

    .line 7
    const-string v1, ":"

    .line 9
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 14
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 15
    iget-object v2, v2, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 29
    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 31
    const-string v1, "long"

    .line 33
    const-string v2, "millis"

    .line 35
    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 37
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    return-void

    .line 43
    :cond_1
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 46
    move-result-object v2

    .line 49
    new-instance v3, Ljava/util/Date;

    .line 50
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    .line 52
    move-result-wide v4

    .line 55
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 56
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 59
    if-eqz p1, :cond_2

    .line 62
    new-instance p1, Landroid/app/DatePickerDialog;

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v7

    .line 69
    const v8, 0x7f14017a    # @style/DialogTheme

    .line 70
    new-instance v9, Landroidx/slice/widget/RowView$DateSetListener;

    .line 73
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 75
    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 77
    invoke-direct {v9, p0, v0, v1}, Landroidx/slice/widget/RowView$DateSetListener;-><init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V

    .line 79
    const/4 p0, 0x1

    .line 82
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    .line 83
    move-result v10

    .line 86
    const/4 p0, 0x2

    .line 87
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    .line 88
    move-result v11

    .line 91
    const/4 p0, 0x5

    .line 92
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    .line 93
    move-result v12

    .line 96
    move-object v6, p1

    .line 97
    invoke-direct/range {v6 .. v12}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 98
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    new-instance p1, Landroid/app/TimePickerDialog;

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 107
    move-result-object v3

    .line 110
    const v4, 0x7f14017a    # @style/DialogTheme

    .line 111
    new-instance v5, Landroidx/slice/widget/RowView$TimeSetListener;

    .line 114
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 116
    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 118
    invoke-direct {v5, p0, v0, v1}, Landroidx/slice/widget/RowView$TimeSetListener;-><init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V

    .line 120
    const/16 p0, 0xb

    .line 123
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    .line 125
    move-result p0

    .line 128
    const/16 v0, 0xc

    .line 129
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    .line 131
    move-result v6

    .line 134
    const/4 v7, 0x0

    .line 135
    move-object v0, p1

    .line 136
    move-object v1, v3

    .line 137
    move v2, v4

    .line 138
    move-object v3, v5

    .line 139
    move v4, p0

    .line 140
    move v5, v6

    .line 141
    move v6, v7

    .line 142
    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 143
    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    .line 146
    :goto_0
    return-void
    .line 149
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    .line 2
    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 6
    if-ne p1, p2, :cond_2

    .line 8
    if-ltz p3, :cond_2

    .line 10
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p1

    .line 17
    if-lt p3, p1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 25
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 28
    check-cast p1, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 30
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 37
    :cond_1
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    :try_start_0
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 50
    move-result-object p0

    .line 53
    new-instance p3, Landroid/content/Intent;

    .line 54
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 56
    const/high16 p4, 0x10000000

    .line 59
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    move-result-object p3

    .line 64
    const-string p4, "android.app.slice.extra.SELECTION"

    .line 65
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {p2, p0, p1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    const-string p1, "RowView"

    .line 76
    const-string p2, "PendingIntent for slice cannot be sent"

    .line 78
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_2
    :goto_0
    return-void
    .line 83
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 2
    move-result p1

    .line 5
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 6
    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 8
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 10
    move-result p4

    .line 13
    add-int/2addr p4, p1

    .line 14
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    .line 15
    move-result p5

    .line 18
    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 19
    add-int/2addr p5, v0

    .line 21
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 22
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 25
    if-eqz p2, :cond_0

    .line 27
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 29
    if-nez p2, :cond_0

    .line 31
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 33
    iget p2, p2, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    .line 35
    iget p3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    .line 37
    sub-int/2addr p2, p3

    .line 39
    div-int/lit8 p2, p2, 0x2

    .line 40
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    .line 42
    move-result p3

    .line 45
    add-int/2addr p3, p2

    .line 46
    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 47
    add-int/2addr p3, p2

    .line 49
    iget p2, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    .line 50
    add-int/2addr p2, p3

    .line 52
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 55
    move-result p4

    .line 58
    add-int/2addr p4, p1

    .line 59
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/view/View;->layout(IIII)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 64
    if-eqz p2, :cond_1

    .line 66
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    .line 68
    move-result p2

    .line 71
    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 72
    add-int/2addr p2, p3

    .line 74
    iget-object p3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 75
    invoke-virtual {p3}, Landroid/widget/Spinner;->getMeasuredHeight()I

    .line 77
    move-result p3

    .line 80
    add-int/2addr p3, p2

    .line 81
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 82
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    .line 84
    move-result p4

    .line 87
    add-int/2addr p4, p1

    .line 88
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/Spinner;->layout(IIII)V

    .line 89
    :cond_1
    :goto_0
    return-void
    .line 92
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    .line 2
    move-result p2

    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 16
    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 18
    add-int/2addr p2, v3

    .line 20
    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 21
    add-int/2addr p2, v3

    .line 23
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    move-result p2

    .line 27
    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 28
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 33
    move-result p2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 38
    const/16 v2, 0x8

    .line 40
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    move p2, v1

    .line 45
    :goto_0
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 46
    if-eqz v2, :cond_1

    .line 48
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 50
    if-nez v3, :cond_1

    .line 52
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 54
    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    .line 56
    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 58
    add-int/2addr v3, v4

    .line 60
    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 61
    add-int/2addr v3, v4

    .line 63
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result v0

    .line 67
    invoke-virtual {p0, v2, p1, v0}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 68
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 73
    move-result v0

    .line 76
    iput v0, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    .line 77
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    move-result v0

    .line 84
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 85
    move-result p2

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 90
    if-eqz v2, :cond_2

    .line 92
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 94
    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    .line 96
    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 98
    add-int/2addr v3, v4

    .line 100
    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 101
    add-int/2addr v3, v4

    .line 103
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 104
    move-result v0

    .line 107
    invoke-virtual {p0, v2, p1, v0}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 108
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 111
    invoke-virtual {v0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    .line 113
    move-result v0

    .line 116
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 117
    move-result p2

    .line 120
    :cond_2
    :goto_1
    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    .line 121
    add-int/2addr p2, v0

    .line 123
    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    .line 124
    add-int/2addr p2, v0

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    .line 127
    move-result v0

    .line 130
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 131
    move-result p2

    .line 134
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 135
    if-eqz v0, :cond_3

    .line 137
    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 139
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 141
    invoke-virtual {v0, v2, v3}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 143
    move-result v0

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    move v0, v1

    .line 148
    :goto_2
    invoke-static {p2, p1, v1}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    .line 149
    move-result p1

    .line 152
    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 153
    add-int/2addr v0, p2

    .line 155
    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 156
    add-int/2addr v0, p2

    .line 158
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 159
    return-void
    .line 162
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final populateViews(Z)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    move p1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    .line 15
    :cond_1
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 18
    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    .line 20
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    if-eq v2, v3, :cond_2

    .line 25
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 27
    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    .line 29
    move-result v2

    .line 32
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 33
    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 36
    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    .line 38
    move-result v2

    .line 41
    const/16 v4, 0x8

    .line 42
    if-eqz v2, :cond_5

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    move-result-object p1

    .line 53
    const v2, 0x7f0d0028    # @layout/abc_slice_row_show_more 'res/layout/abc_slice_row_show_more.xml'

    .line 54
    invoke-virtual {p1, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/Button;

    .line 61
    new-instance v1, Landroidx/slice/widget/RowView$1;

    .line 63
    invoke-direct {v1, p0, p1}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 71
    if-eq v1, v3, :cond_3

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 75
    :cond_3
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 78
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 80
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 85
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 87
    iget-object v2, v2, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 89
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 97
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 102
    :cond_4
    return-void

    .line 105
    :cond_5
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 106
    iget-object v2, v2, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 108
    const/4 v5, 0x0

    .line 110
    if-eqz v2, :cond_6

    .line 111
    iget-object v2, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 113
    check-cast v2, Ljava/lang/CharSequence;

    .line 115
    goto :goto_1

    .line 117
    :cond_6
    move-object v2, v5

    .line 118
    :goto_1
    if-eqz v2, :cond_7

    .line 119
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    :cond_7
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 126
    iget-boolean v6, v2, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 128
    if-eqz v6, :cond_8

    .line 130
    iget-boolean v7, v2, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    .line 132
    if-nez v7, :cond_8

    .line 134
    move-object v7, v5

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    iget-object v7, v2, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 138
    :goto_2
    iput-object v7, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 140
    if-eqz v7, :cond_a

    .line 142
    if-eqz v6, :cond_9

    .line 144
    iget-boolean v2, v2, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    .line 146
    if-eqz v2, :cond_a

    .line 148
    :cond_9
    move v2, v0

    .line 150
    goto :goto_3

    .line 151
    :cond_a
    move v2, v1

    .line 152
    :goto_3
    if-eqz v2, :cond_b

    .line 153
    iget v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 155
    invoke-virtual {p0, v7, v2, v0}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    .line 157
    move-result v2

    .line 160
    :cond_b
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 161
    if-eqz v2, :cond_c

    .line 163
    move v2, v1

    .line 165
    goto :goto_4

    .line 166
    :cond_c
    move v2, v4

    .line 167
    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 171
    iget-object v2, v2, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 173
    if-eqz v2, :cond_d

    .line 175
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 177
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    .line 179
    move-result-object v7

    .line 182
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_d
    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 186
    if-eqz v6, :cond_10

    .line 188
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 190
    iget-boolean v8, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 192
    if-eqz v8, :cond_e

    .line 194
    iget v6, v6, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    .line 196
    goto :goto_5

    .line 198
    :cond_e
    iget v6, v6, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    .line 199
    :goto_5
    int-to-float v6, v6

    .line 201
    invoke-virtual {v7, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 202
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 205
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 207
    iget-object v8, v7, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    .line 209
    if-eqz v8, :cond_f

    .line 211
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 213
    move-result v7

    .line 216
    goto :goto_6

    .line 217
    :cond_f
    iget-object v7, v7, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 218
    iget v7, v7, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 220
    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    :cond_10
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 225
    if-eqz v2, :cond_11

    .line 227
    move v7, v1

    .line 229
    goto :goto_7

    .line 230
    :cond_11
    move v7, v4

    .line 231
    :goto_7
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    if-eqz v2, :cond_12

    .line 235
    move v2, v0

    .line 237
    goto :goto_8

    .line 238
    :cond_12
    move v2, v1

    .line 239
    :goto_8
    invoke-virtual {p0, v2}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    .line 240
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    .line 243
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 245
    iget-boolean v6, v6, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    .line 247
    if-eqz v6, :cond_13

    .line 249
    move v6, v1

    .line 251
    goto :goto_9

    .line 252
    :cond_13
    move v6, v4

    .line 253
    :goto_9
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 257
    iget-object v2, v2, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 259
    const/4 v6, 0x2

    .line 261
    if-eqz v2, :cond_17

    .line 262
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 264
    if-eq v2, v7, :cond_17

    .line 266
    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    .line 268
    invoke-direct {v7, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 270
    iput-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 273
    invoke-virtual {v7}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    .line 275
    move-result-object v2

    .line 278
    if-eqz v2, :cond_17

    .line 279
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 281
    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    .line 283
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 290
    move-result v7

    .line 293
    sparse-switch v7, :sswitch_data_0

    .line 294
    :goto_a
    move v2, v3

    .line 297
    goto :goto_b

    .line 298
    :sswitch_0
    const-string v7, "date_picker"

    .line 299
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result v2

    .line 304
    if-nez v2, :cond_14

    .line 305
    goto :goto_a

    .line 307
    :cond_14
    move v2, v6

    .line 308
    goto :goto_b

    .line 309
    :sswitch_1
    const-string/jumbo v7, "time_picker"

    .line 310
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    move-result v2

    .line 316
    if-nez v2, :cond_15

    .line 317
    goto :goto_a

    .line 319
    :cond_15
    move v2, v0

    .line 320
    goto :goto_b

    .line 321
    :sswitch_2
    const-string/jumbo v7, "toggle"

    .line 322
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    move-result v2

    .line 328
    if-nez v2, :cond_16

    .line 329
    goto :goto_a

    .line 331
    :cond_16
    move v2, v1

    .line 332
    :goto_b
    packed-switch v2, :pswitch_data_0

    .line 333
    goto :goto_c

    .line 336
    :pswitch_0
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 337
    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 339
    return-void

    .line 342
    :pswitch_1
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 343
    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 345
    return-void

    .line 348
    :pswitch_2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 349
    iget v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 351
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 353
    invoke-virtual {p0, p1, v2, v3, v1}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 355
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 358
    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 360
    return-void

    .line 363
    :cond_17
    :goto_c
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 364
    iget-object v2, v2, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 366
    if-eqz v2, :cond_30

    .line 368
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 370
    if-eqz v7, :cond_18

    .line 372
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 374
    invoke-virtual {p0, v7, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 376
    :cond_18
    iput-object v2, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 379
    const-string v7, "int"

    .line 381
    const-string v8, "range_mode"

    .line 383
    invoke-static {v2, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 385
    move-result-object v2

    .line 388
    if-eqz v2, :cond_1a

    .line 389
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    .line 391
    move-result v2

    .line 394
    if-ne v2, v6, :cond_19

    .line 395
    move v2, v0

    .line 397
    goto :goto_d

    .line 398
    :cond_19
    move v2, v1

    .line 399
    :goto_d
    iput-boolean v2, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    .line 400
    :cond_1a
    if-nez p1, :cond_2f

    .line 402
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 404
    const-string v2, "min"

    .line 406
    invoke-static {p1, v7, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 408
    move-result-object p1

    .line 411
    if-eqz p1, :cond_1b

    .line 412
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    .line 414
    move-result p1

    .line 417
    goto :goto_e

    .line 418
    :cond_1b
    move p1, v1

    .line 419
    :goto_e
    iput p1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 420
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 422
    const-string v9, "max"

    .line 424
    invoke-static {v2, v7, v9}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 426
    move-result-object v2

    .line 429
    iget-boolean v9, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    .line 430
    if-eqz v9, :cond_1c

    .line 432
    const/4 v9, 0x5

    .line 434
    goto :goto_f

    .line 435
    :cond_1c
    const/16 v9, 0x64

    .line 436
    :goto_f
    if-eqz v2, :cond_1d

    .line 438
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    .line 440
    move-result v9

    .line 443
    :cond_1d
    iput v9, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 444
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 446
    const-string/jumbo v9, "value"

    .line 448
    invoke-static {v2, v7, v9}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 451
    move-result-object v2

    .line 454
    if-eqz v2, :cond_1e

    .line 455
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    .line 457
    move-result v2

    .line 460
    sub-int/2addr v2, p1

    .line 461
    goto :goto_10

    .line 462
    :cond_1e
    move v2, v1

    .line 463
    :goto_10
    iput v2, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 464
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 466
    if-nez p1, :cond_1f

    .line 468
    new-instance p1, Landroid/os/Handler;

    .line 470
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 472
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 475
    :cond_1f
    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    .line 477
    const/4 v2, -0x2

    .line 479
    if-eqz p1, :cond_20

    .line 480
    new-instance p1, Landroid/widget/RatingBar;

    .line 482
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 484
    move-result-object v0

    .line 487
    invoke-direct {p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 491
    move-result-object v0

    .line 494
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 495
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 497
    move-result-object v0

    .line 500
    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 501
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 503
    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 505
    const/high16 v0, 0x3f800000    # 1.0f

    .line 508
    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 510
    iget v0, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 513
    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 515
    iget v0, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 518
    int-to-float v0, v0

    .line 520
    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 521
    invoke-virtual {p1, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 524
    new-instance v0, Landroid/widget/LinearLayout;

    .line 527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 529
    move-result-object v4

    .line 532
    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 533
    const/16 v4, 0x11

    .line 536
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 538
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 544
    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 546
    invoke-virtual {v0, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 552
    invoke-direct {v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 554
    invoke-virtual {p0, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRatingBarChangeListener:Landroidx/slice/widget/RowView$4;

    .line 560
    invoke-virtual {p1, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 562
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 565
    goto/16 :goto_18

    .line 567
    :cond_20
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 569
    invoke-static {p1, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 571
    move-result-object p1

    .line 574
    if-eqz p1, :cond_21

    .line 575
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    .line 577
    move-result p1

    .line 580
    if-ne p1, v0, :cond_21

    .line 581
    move p1, v0

    .line 583
    goto :goto_11

    .line 584
    :cond_21
    move p1, v1

    .line 585
    :goto_11
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 586
    iget-object v6, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 588
    const-string v7, "action"

    .line 590
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    move-result v6

    .line 595
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 596
    if-nez v7, :cond_22

    .line 598
    move v7, v0

    .line 600
    goto :goto_12

    .line 601
    :cond_22
    move v7, v1

    .line 602
    :goto_12
    if-eqz v6, :cond_24

    .line 603
    if-eqz v7, :cond_23

    .line 605
    new-instance v5, Landroid/widget/SeekBar;

    .line 607
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 609
    move-result-object v7

    .line 612
    invoke-direct {v5, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 613
    goto :goto_14

    .line 616
    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 617
    move-result-object v5

    .line 620
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 621
    move-result-object v5

    .line 624
    const v7, 0x7f0d002a    # @layout/abc_slice_seekbar_view 'res/layout/abc_slice_seekbar_view.xml'

    .line 625
    invoke-virtual {v5, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 628
    move-result-object v5

    .line 631
    check-cast v5, Landroid/widget/SeekBar;

    .line 632
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 634
    if-eqz v7, :cond_28

    .line 636
    if-eqz v5, :cond_28

    .line 638
    iget v7, v7, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    .line 640
    if-ltz v7, :cond_28

    .line 642
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 644
    move-result-object v8

    .line 647
    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 648
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    goto :goto_14

    .line 653
    :cond_24
    if-eqz v7, :cond_25

    .line 654
    new-instance v7, Landroid/widget/ProgressBar;

    .line 656
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 658
    move-result-object v8

    .line 661
    const v9, 0x1010078    # @android:attr/progressBarStyleHorizontal

    .line 662
    invoke-direct {v7, v8, v5, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 665
    move-object v5, v7

    .line 668
    goto :goto_13

    .line 669
    :cond_25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 670
    move-result-object v5

    .line 673
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 674
    move-result-object v5

    .line 677
    const v7, 0x7f0d0022    # @layout/abc_slice_progress_inline_view 'res/layout/abc_slice_progress_inline_view.xml'

    .line 678
    invoke-virtual {v5, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 681
    move-result-object v5

    .line 684
    check-cast v5, Landroid/widget/ProgressBar;

    .line 685
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 687
    if-eqz v7, :cond_27

    .line 689
    if-eqz v5, :cond_26

    .line 691
    iget v7, v7, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    .line 693
    if-ltz v7, :cond_26

    .line 695
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 697
    move-result-object v8

    .line 700
    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 701
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    :cond_26
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 706
    iget v8, v7, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    .line 708
    iget v7, v7, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    .line 710
    invoke-static {v5, v8, v7}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 712
    :cond_27
    :goto_13
    if-eqz p1, :cond_28

    .line 715
    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 717
    :cond_28
    :goto_14
    if-eqz p1, :cond_29

    .line 720
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 722
    move-result-object v7

    .line 725
    goto :goto_15

    .line 726
    :cond_29
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 727
    move-result-object v7

    .line 730
    :goto_15
    iget v8, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 731
    if-eq v8, v3, :cond_2b

    .line 733
    if-eqz v7, :cond_2b

    .line 735
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 737
    if-eqz p1, :cond_2a

    .line 740
    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    goto :goto_16

    .line 745
    :cond_2a
    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    :cond_2b
    :goto_16
    iget p1, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 749
    iget v7, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 751
    sub-int/2addr p1, v7

    .line 753
    invoke-virtual {v5, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 754
    iget p1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 757
    invoke-virtual {v5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 759
    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 762
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 765
    if-nez p1, :cond_2c

    .line 767
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 769
    invoke-direct {p1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 771
    invoke-virtual {p0, v5, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    goto :goto_17

    .line 777
    :cond_2c
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    .line 778
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 783
    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 785
    :goto_17
    iput-object v5, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 788
    if-eqz v6, :cond_2f

    .line 790
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 792
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    .line 794
    move-result-object p1

    .line 797
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 798
    check-cast v0, Landroid/widget/SeekBar;

    .line 800
    if-eqz p1, :cond_2d

    .line 802
    iget-object p1, p1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 804
    check-cast p1, Landroidx/core/graphics/drawable/IconCompat;

    .line 806
    if-eqz p1, :cond_2d

    .line 808
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 810
    move-result-object v2

    .line 813
    invoke-virtual {p1, v2}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 814
    move-result-object p1

    .line 817
    if-eqz p1, :cond_2d

    .line 818
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 820
    :cond_2d
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 823
    move-result-object p1

    .line 826
    iget v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 827
    if-eq v2, v3, :cond_2e

    .line 829
    if-eqz p1, :cond_2e

    .line 831
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 833
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 836
    :cond_2e
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroidx/slice/widget/RowView$3;

    .line 839
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 841
    :cond_2f
    :goto_18
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 844
    if-nez p1, :cond_30

    .line 846
    return-void

    .line 848
    :cond_30
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 849
    iget-object p1, p1, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 851
    if-eqz p1, :cond_36

    .line 853
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    .line 855
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 857
    if-nez v0, :cond_31

    .line 859
    new-instance v0, Landroid/os/Handler;

    .line 861
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 863
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 866
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    .line 868
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 873
    new-instance v0, Ljava/util/ArrayList;

    .line 875
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    .line 880
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 882
    move-result-object p1

    .line 885
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 886
    move-result-object p1

    .line 889
    move v0, v1

    .line 890
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 891
    move-result v2

    .line 894
    if-ge v0, v2, :cond_35

    .line 895
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 897
    move-result-object v2

    .line 900
    check-cast v2, Landroidx/slice/SliceItem;

    .line 901
    const-string/jumbo v3, "selection_option"

    .line 903
    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 906
    move-result v3

    .line 909
    if-nez v3, :cond_32

    .line 910
    goto :goto_1a

    .line 912
    :cond_32
    const-string/jumbo v3, "selection_option_key"

    .line 913
    const-string/jumbo v4, "text"

    .line 916
    invoke-static {v2, v4, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 919
    move-result-object v3

    .line 922
    const-string/jumbo v5, "selection_option_value"

    .line 923
    invoke-static {v2, v4, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 926
    move-result-object v2

    .line 929
    if-eqz v3, :cond_34

    .line 930
    if-nez v2, :cond_33

    .line 932
    goto :goto_1a

    .line 934
    :cond_33
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 935
    iget-object v3, v3, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 937
    check-cast v3, Ljava/lang/CharSequence;

    .line 939
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 941
    move-result-object v3

    .line 944
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    .line 948
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    .line 950
    move-result-object v2

    .line 953
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_34
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    .line 957
    goto :goto_19

    .line 959
    :cond_35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 960
    move-result-object p1

    .line 963
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 964
    move-result-object p1

    .line 967
    const v0, 0x7f0d0025    # @layout/abc_slice_row_selection 'res/layout/abc_slice_row_selection.xml'

    .line 968
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 971
    move-result-object p1

    .line 974
    check-cast p1, Landroid/widget/Spinner;

    .line 975
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 977
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 979
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 981
    move-result-object v0

    .line 984
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    .line 985
    const v2, 0x7f0d0027    # @layout/abc_slice_row_selection_text 'res/layout/abc_slice_row_selection_text.xml'

    .line 987
    invoke-direct {p1, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 990
    const v0, 0x7f0d0026    # @layout/abc_slice_row_selection_dropdown_text 'res/layout/abc_slice_row_selection_dropdown_text.xml'

    .line 993
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 996
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 999
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1001
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 1004
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1006
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 1009
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1011
    return-void

    .line 1014
    :cond_36
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 1015
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 1018
    return-void

    .line 1021
    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    .line 1022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 1036
.end method

.method public final resetView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 3
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 7
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    .line 10
    return-void
    .line 13
.end method

.method public final resetViewState()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 9
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 14
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 19
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 22
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 24
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 27
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 29
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 32
    const/16 v2, 0x8

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 39
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 62
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 67
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 70
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 82
    if-eqz v0, :cond_0

    .line 84
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 86
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 88
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 91
    :cond_0
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 93
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 95
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 97
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 99
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 101
    const-wide/16 v4, 0x0

    .line 103
    iput-wide v4, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 105
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 109
    if-eqz v0, :cond_2

    .line 111
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 113
    if-nez v4, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 117
    goto :goto_0

    .line 120
    :cond_1
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 123
    :goto_0
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 126
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 133
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 140
    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 144
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 147
    :cond_3
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    .line 149
    return-void
    .line 151
.end method

.method public final sendSliderValue()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 11
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 18
    new-instance v2, Landroid/content/Intent;

    .line 19
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 21
    const/high16 v3, 0x10000000

    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    move-result-object v2

    .line 29
    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    .line 30
    iget v4, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 45
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 48
    check-cast p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    const-string v0, "RowView"

    .line 59
    const-string v1, "PendingIntent for slice cannot be sent"

    .line 61
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_1
    :goto_0
    return-void
    .line 66
.end method

.method public setAllowTwoLines(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setInsets(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 5
    return-void
    .line 8
.end method

.method public setLastUpdated(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 5
    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    .line 13
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 6
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 15
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 18
    return-void
    .line 21
.end method

.method public setShowLastUpdated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p5}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 2
    const/4 p4, 0x0

    .line 5
    if-eqz p1, :cond_3

    .line 6
    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 8
    if-eqz p5, :cond_3

    .line 10
    invoke-virtual {p5}, Landroidx/slice/widget/RowContent;->isValid()Z

    .line 12
    move-result p5

    .line 15
    if-eqz p5, :cond_3

    .line 16
    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 18
    if-eqz p5, :cond_0

    .line 20
    new-instance v0, Landroidx/slice/SliceStructure;

    .line 22
    iget-object p5, p5, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 24
    invoke-direct {v0, p5}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/SliceItem;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    new-instance p5, Landroidx/slice/SliceStructure;

    .line 31
    iget-object v1, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 33
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 35
    move-result-object v1

    .line 38
    invoke-direct {p5, v1}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    .line 39
    const/4 v1, 0x1

    .line 42
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0, p5}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    move v2, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v2, p4

    .line 53
    :goto_1
    if-eqz v0, :cond_2

    .line 54
    iget-object v0, v0, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    .line 56
    if-eqz v0, :cond_2

    .line 58
    iget-object p5, p5, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    .line 60
    invoke-virtual {v0, p5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p5

    .line 65
    if-eqz p5, :cond_2

    .line 66
    move p5, v1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move p5, p4

    .line 70
    :goto_2
    if-eqz p5, :cond_3

    .line 71
    if-eqz v2, :cond_3

    .line 73
    goto :goto_3

    .line 75
    :cond_3
    move v1, p4

    .line 76
    :goto_3
    iput-boolean p4, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 77
    iput-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 79
    check-cast p1, Landroidx/slice/widget/RowContent;

    .line 81
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 83
    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 85
    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 87
    return-void
    .line 90
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 9
    if-nez p1, :cond_0

    .line 11
    goto/16 :goto_4

    .line 13
    :cond_0
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 15
    iget v0, p1, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    .line 17
    iget p1, p1, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    .line 19
    invoke-static {p2, v0, p1}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 21
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 24
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 26
    iget v0, p2, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    .line 28
    iget p2, p2, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    .line 30
    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 32
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 35
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 37
    iget v0, p2, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    .line 39
    iget p2, p2, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    .line 41
    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 43
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    .line 46
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 48
    iget v0, p2, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    .line 50
    iget p2, p2, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    .line 52
    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 54
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 57
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 59
    iget v0, p2, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    .line 61
    iget p2, p2, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    .line 63
    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 65
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    .line 68
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 70
    iget v0, p2, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    .line 72
    iget p2, p2, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    .line 74
    if-gez v0, :cond_1

    .line 76
    if-gez p2, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 82
    :goto_0
    if-eqz p1, :cond_5

    .line 83
    if-eqz v1, :cond_2

    .line 85
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v1

    .line 91
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    if-ltz v0, :cond_3

    .line 94
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 96
    :cond_3
    if-ltz p2, :cond_4

    .line 99
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 101
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    .line 107
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 109
    iget p2, p2, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    .line 111
    if-eqz p1, :cond_6

    .line 113
    if-ltz p2, :cond_6

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    move-result-object v0

    .line 120
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_6
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 126
    iget-object p2, p1, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    .line 128
    if-eqz p2, :cond_7

    .line 130
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 132
    move-result p1

    .line 135
    goto :goto_2

    .line 136
    :cond_7
    iget-object p1, p1, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 137
    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 139
    :goto_2
    const/4 p2, -0x1

    .line 141
    if-eq p1, p2, :cond_9

    .line 142
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 144
    iget-object p2, p1, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    .line 146
    if-eqz p2, :cond_8

    .line 148
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 150
    move-result p1

    .line 153
    goto :goto_3

    .line 154
    :cond_8
    iget-object p1, p1, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 155
    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 157
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->setTint(I)V

    .line 159
    :cond_9
    :goto_4
    return-void
    .line 162
.end method

.method public setTint(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final setViewClickable(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    move-object v1, p0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object v1, v0

    .line 7
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p0

    .line 16
    const v0, 0x101030e    # @android:attr/selectableItemBackground

    .line 17
    invoke-static {v0, p0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 23
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 27
    return-void
    .line 30
.end method

.method public final updateActionSpinner()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    .line 2
    iget-boolean p0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p0, 0x8

    .line 10
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    return-void
    .line 15
.end method

.method public final updateEndItems()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 2
    if-eqz v0, :cond_15

    .line 4
    iget-object v0, v0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto/16 :goto_b

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 18
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 21
    iget-object v1, v0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 23
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    move-object v1, v2

    .line 29
    :cond_1
    iget-boolean v0, v0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 30
    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 34
    if-eqz v0, :cond_2

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 44
    iget-boolean v0, v0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    .line 46
    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    move-object v6, v0

    .line 57
    move v3, v2

    .line 58
    move v4, v3

    .line 59
    move v5, v4

    .line 60
    move v7, v5

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 62
    move-result v8

    .line 65
    const-string v9, "action"

    .line 66
    const/4 v10, 0x1

    .line 68
    if-ge v3, v8, :cond_8

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v8

    .line 74
    instance-of v8, v8, Landroidx/slice/SliceItem;

    .line 75
    if-eqz v8, :cond_3

    .line 77
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v8

    .line 82
    check-cast v8, Landroidx/slice/SliceItem;

    .line 83
    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v8

    .line 89
    check-cast v8, Landroidx/slice/core/SliceActionImpl;

    .line 90
    iget-object v8, v8, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 92
    :goto_1
    const/4 v11, 0x3

    .line 94
    if-ge v4, v11, :cond_7

    .line 95
    iget v11, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 97
    invoke-virtual {p0, v8, v11, v2}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    .line 99
    move-result v11

    .line 102
    if-eqz v11, :cond_7

    .line 103
    if-nez v6, :cond_4

    .line 105
    invoke-static {v8, v9, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 107
    move-result-object v11

    .line 110
    if-eqz v11, :cond_4

    .line 111
    move-object v6, v8

    .line 113
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 114
    if-ne v4, v10, :cond_7

    .line 116
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 118
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 120
    move-result v5

    .line 123
    if-nez v5, :cond_5

    .line 124
    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 126
    move-result-object v5

    .line 129
    const-string v7, "image"

    .line 130
    invoke-static {v5, v7, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 132
    move-result-object v5

    .line 135
    if-nez v5, :cond_5

    .line 136
    move v5, v10

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    move v5, v2

    .line 140
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 141
    move-result v7

    .line 144
    if-ne v7, v10, :cond_6

    .line 145
    invoke-static {v8, v9, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 147
    move-result-object v7

    .line 150
    if-eqz v7, :cond_6

    .line 151
    move v7, v10

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    move v7, v2

    .line 155
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 156
    goto :goto_0

    .line 158
    :cond_8
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 159
    const/16 v3, 0x8

    .line 161
    if-lez v4, :cond_9

    .line 163
    move v8, v2

    .line 165
    goto :goto_4

    .line 166
    :cond_9
    move v8, v3

    .line 167
    :goto_4
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    .line 171
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 173
    if-eqz v8, :cond_b

    .line 175
    if-nez v5, :cond_a

    .line 177
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 179
    iget-boolean v5, v5, Landroidx/slice/widget/RowContent;->mShowActionDivider:Z

    .line 181
    if-eqz v5, :cond_b

    .line 183
    if-eqz v7, :cond_b

    .line 185
    :cond_a
    move v3, v2

    .line 187
    :cond_b
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 191
    if-eqz v1, :cond_c

    .line 193
    invoke-static {v1, v9, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 195
    move-result-object v0

    .line 198
    if-eqz v0, :cond_c

    .line 199
    move v0, v10

    .line 201
    goto :goto_5

    .line 202
    :cond_c
    move v0, v2

    .line 203
    :goto_5
    if-eqz v6, :cond_d

    .line 204
    move v1, v10

    .line 206
    goto :goto_6

    .line 207
    :cond_d
    move v1, v2

    .line 208
    :goto_6
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 209
    if-eqz v3, :cond_e

    .line 211
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 213
    invoke-virtual {p0, v0, v10}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 215
    goto :goto_8

    .line 218
    :cond_e
    if-eq v1, v0, :cond_12

    .line 219
    if-eq v4, v10, :cond_f

    .line 221
    if-eqz v0, :cond_12

    .line 223
    :cond_f
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 225
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 227
    move-result v0

    .line 230
    if-nez v0, :cond_10

    .line 231
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 233
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 235
    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    move-result-object v0

    .line 246
    check-cast v0, Landroidx/slice/core/SliceActionImpl;

    .line 247
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 249
    goto :goto_7

    .line 251
    :cond_10
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 252
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 254
    move-result v0

    .line 257
    if-nez v0, :cond_11

    .line 258
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 260
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 262
    move-result v0

    .line 265
    if-ne v0, v10, :cond_11

    .line 266
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 268
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 273
    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .line 274
    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->getAction()Landroidx/slice/core/SliceActionImpl;

    .line 276
    move-result-object v0

    .line 279
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 280
    :cond_11
    :goto_7
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 282
    invoke-virtual {p0, v0, v10}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 284
    move v0, v10

    .line 287
    goto :goto_9

    .line 288
    :cond_12
    :goto_8
    move v0, v2

    .line 289
    :goto_9
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 290
    if-eqz v1, :cond_13

    .line 292
    if-nez v0, :cond_13

    .line 294
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 296
    iget-object v1, v1, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 298
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 300
    move-result v0

    .line 303
    if-eqz v0, :cond_13

    .line 304
    iput-boolean v10, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 306
    :cond_13
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 308
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    .line 310
    move-result v0

    .line 313
    if-eqz v0, :cond_14

    .line 314
    goto :goto_a

    .line 316
    :cond_14
    const/4 v2, 0x2

    .line 317
    :goto_a
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 318
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 320
    :cond_15
    :goto_b
    return-void
    .line 323
.end method
