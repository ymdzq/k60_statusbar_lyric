.class public Lmiuix/nestedheader/widget/NestedHeaderLayout;
.super Lmiuix/nestedheader/widget/NestedScrollingLayout;
.source "NestedHeaderLayout.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;
    }
.end annotation


# instance fields
.field private mAcceptHeaderRootViewAlpha:Z

.field private mAcceptTriggerRootViewAlpha:Z

.field private mAutoAnim:Z

.field private mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field private mClipOverBgBounds:Landroid/graphics/Rect;

.field private mEnableHeaderAutoClose:Z

.field private mHeaderBottomMargin:I

.field private mHeaderContentBottomMargin:I

.field private mHeaderContentId:I

.field private mHeaderContentMinHeight:F

.field private mHeaderContentView:Landroid/view/View;

.field private mHeaderMeasuredHeight:I

.field private mHeaderTopMargin:I

.field private mHeaderTotalHeight:I

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewId:I

.field private mHeaderVisibleHeight:I

.field private mIsCommonLiteStrategy:Z

.field private mIsMaskBitmapFromWindowBg:Z

.field private mIsShowOverBg:Z

.field private mIsStickyBeyondTrigger:Z

.field private mIsTouchStart:Z

.field private mLastScrollingProgress:I

.field private mMaskBackground:Landroid/graphics/drawable/Drawable;

.field private mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field private mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

.field private mOverBgView:Landroid/view/View;

.field private mRangeOffset:F

.field private mRootView:Landroid/view/View;

.field private mStickyTotalHeight:I

.field private mStickyView:Landroid/view/View;

.field private mStickyViewId:I

.field private mTriggerBottomMargin:I

.field private mTriggerContentBottomMargin:I

.field private mTriggerContentId:I

.field private mTriggerContentMinHeight:F

.field private mTriggerContentView:Landroid/view/View;

.field private mTriggerMeasuredHeight:I

.field private mTriggerTopMargin:I

.field private mTriggerView:Landroid/view/View;

.field private mTriggerViewId:I

.field private mValueTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 70
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 71
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 72
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    .line 73
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    .line 75
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 76
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 78
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 79
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 80
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    .line 81
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 82
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 83
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    .line 84
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    .line 86
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 87
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    .line 89
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    .line 711
    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;

    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 139
    sget-object v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 140
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerView:I

    sget v2, Lmiuix/nestedheader/R$id;->header_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    .line 141
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_stickyView:I

    sget v2, Lmiuix/nestedheader/R$id;->sticky_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyViewId:I

    .line 142
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerView:I

    sget v2, Lmiuix/nestedheader/R$id;->trigger_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    .line 144
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentId:I

    sget v2, Lmiuix/nestedheader/R$id;->header_content_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    .line 145
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentId:I

    sget v2, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    .line 147
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentMinHeight:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/nestedheader/R$dimen;->miuix_nested_header_layout_content_min_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 147
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    .line 149
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentMinHeight:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 149
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    .line 152
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    .line 153
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerAutoClose:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    .line 154
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_stickyBeyondTrigger:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    .line 156
    :try_start_0
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_maskBackground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x1010054    # @android:attr/windowBackground

    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    .line 159
    instance-of p1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_0

    .line 160
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maskBackground error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NestedHeaderLayout"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;ZZZZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I
    .locals 0

    .line 42
    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    return p0
.end method

.method static synthetic access$1000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    return p0
.end method

.method static synthetic access$1002(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    return p1
.end method

.method static synthetic access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isScrolling(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncOverScrollTo(I)V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 42
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 42
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$402(Lmiuix/nestedheader/widget/NestedHeaderLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 42
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;
    .locals 0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    return p0
.end method

.method static synthetic access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    return p0
.end method

.method static synthetic access$900(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    return-void
.end method

.method private applyContentAlpha(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 855
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 856
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 857
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private autoAdsorption(I)V
    .locals 4

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 792
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 793
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    .line 794
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance v3, Lmiuix/nestedheader/widget/NestedHeaderLayout$4;

    invoke-direct {v3, p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$4;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)V

    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private checkSendHeaderChangeListener(IIZ)V
    .locals 0

    .line 0
    return-void
.end method

.method private isScrolling(Ljava/lang/String;)Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getAcceptedNestedFlingInConsumedProgress()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeContentViewList(Landroid/view/View;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 831
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    .line 835
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 836
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 837
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 838
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 841
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0

    .line 846
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 824
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->header_content_view:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 820
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V
    .locals 2

    .line 862
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p3

    add-int/2addr p0, p4

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 863
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1, v0, p3, v1, p0}, Landroid/view/View;->layout(IIII)V

    if-eq p1, p2, :cond_1

    .line 865
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 866
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p0

    if-eqz p5, :cond_0

    div-int/lit8 p4, p4, 0x2

    :cond_0
    add-int/2addr p3, p4

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 867
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p4

    invoke-virtual {p2, p3, p0, p4, p1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method private syncOverScrollTo(I)V
    .locals 0

    .line 809
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 810
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    .line 811
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private syncScrollingProgress(I)V
    .locals 0

    .line 815
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    .line 816
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private updateOverBgState(II)V
    .locals 5

    .line 545
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 546
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 547
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v0, :cond_1

    .line 548
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getNestedScrollableValue()I

    move-result v4

    if-lt v0, v4, :cond_0

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    if-ne p1, v0, :cond_0

    move p1, v3

    goto :goto_0

    .line 553
    :cond_0
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    neg-int v0, v0

    iget v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 556
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    if-gtz v0, :cond_2

    neg-int v0, p2

    if-ge p1, v0, :cond_2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-nez v0, :cond_2

    .line 557
    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 558
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    invoke-virtual {p0, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyBlur(Z)V

    goto :goto_1

    .line 560
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    if-gtz v0, :cond_3

    neg-int p2, p2

    if-lt p1, p2, :cond_4

    :cond_3
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-eqz p1, :cond_4

    .line 561
    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 562
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    invoke-virtual {p0, v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyBlur(Z)V

    .line 565
    :cond_4
    :goto_1
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 566
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 569
    :cond_5
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 570
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 571
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 574
    :cond_6
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_7

    .line 576
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 578
    :cond_7
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 579
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 578
    invoke-virtual {p2, v3, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 580
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 583
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    if-gtz v0, :cond_9

    neg-int v0, p2

    if-ge p1, v0, :cond_9

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-nez v0, :cond_9

    .line 584
    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 585
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 586
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    if-gtz v0, :cond_a

    neg-int p2, p2

    if-lt p1, p2, :cond_b

    :cond_a
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-eqz p1, :cond_b

    .line 587
    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 588
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :cond_b
    :goto_2
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_c

    .line 592
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 594
    :cond_c
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v3, v3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 595
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private updateScrollingRange(ZZZZ)V
    .locals 10

    .line 660
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 661
    iget-boolean v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v2, :cond_1

    neg-int v1, v1

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    .line 664
    :goto_1
    iput v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 665
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 667
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 668
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 669
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 670
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 671
    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v2, v6

    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v2, v6

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 672
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 673
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 674
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 676
    :cond_2
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    add-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v1, v2

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    .line 678
    :goto_2
    iput v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 679
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 681
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 682
    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v2

    iput v7, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 683
    iget-boolean v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v2, :cond_4

    neg-int v2, v7

    add-int/2addr v1, v2

    :cond_4
    move v7, v4

    goto :goto_3

    :cond_5
    move v7, v3

    .line 687
    :goto_3
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_7

    .line 689
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 690
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    .line 691
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    .line 692
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 693
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 694
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 695
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 697
    :cond_6
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    add-int/2addr v2, v5

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v2, v5

    add-int/2addr v3, v2

    goto :goto_4

    :cond_7
    move v4, v3

    .line 699
    :goto_4
    iget-boolean v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v2, :cond_8

    .line 700
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    neg-int v2, v2

    if-eqz v7, :cond_9

    .line 701
    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    .line 702
    iget v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    sub-int/2addr v2, v3

    goto :goto_5

    :cond_8
    move v2, v3

    :cond_9
    :goto_5
    move-object v0, p0

    move v3, v6

    move v5, v7

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 705
    invoke-virtual/range {v0 .. v9}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setScrollingRange(IIZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .locals 0

    .line 1105
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p0, :cond_0

    .line 1106
    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    :cond_0
    return-void
.end method

.method protected getHeaderCloseProgress()I
    .locals 2

    .line 333
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    add-int/2addr v0, p0

    return v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p0

    return p0
.end method

.method protected getHeaderProgressTo()I
    .locals 2

    .line 324
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    goto :goto_0
.end method

.method public getHeaderViewVisible()Z
    .locals 1

    .line 934
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 935
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getNestedScrollableValue()I
    .locals 1

    .line 173
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    add-int/2addr v0, p0

    neg-int p0, v0

    return p0
.end method

.method protected getScrollableViewMaxHeightWithoutOverlay()I
    .locals 3

    .line 351
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    :goto_0
    sub-int/2addr v0, p0

    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 358
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    sub-int/2addr v0, v1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    goto :goto_0
.end method

.method protected getStickyScrollToOnNested()I
    .locals 2

    .line 342
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 345
    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    goto :goto_0
.end method

.method public isHeaderOpen()Z
    .locals 1

    .line 1049
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public offsetTopAndBottom(I)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    .line 190
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 298
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1121
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p0, :cond_0

    .line 1122
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 196
    invoke-super {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onFinishInflate()V

    .line 197
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 198
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 199
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;

    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The headerView or triggerView or stickyView attribute is required and must refer to a valid child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const v1, 0x102001e    # @android:id/inputArea

    if-eqz v0, :cond_3

    .line 218
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 223
    :cond_3
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 224
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 229
    :cond_4
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 230
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    const/4 v2, 0x4

    .line 231
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 233
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 235
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 238
    :cond_5
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 239
    new-instance v0, Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    new-instance v4, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;

    invoke-direct {v4, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 283
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_7

    .line 284
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 285
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsCommonLiteStrategy:Z

    .line 286
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsCommonLiteStrategy:Z

    if-nez v0, :cond_8

    .line 287
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setSupportBlur(Z)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 289
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setEnableBlur(Z)V

    goto :goto_3

    .line 292
    :cond_8
    iput-boolean v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    :cond_9
    :goto_3
    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 369
    invoke-super/range {p0 .. p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v8

    .line 375
    :goto_0
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    if-eqz v1, :cond_1

    iget v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v8

    .line 376
    :goto_1
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move v11, v8

    .line 377
    :goto_2
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    move v12, v8

    .line 378
    :goto_3
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v8

    .line 379
    :goto_4
    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int v13, v0, v2

    if-eqz v11, :cond_5

    .line 383
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v0, v2

    move v14, v0

    goto :goto_5

    :cond_5
    move v14, v8

    :goto_5
    if-eqz v12, :cond_6

    .line 387
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 388
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    move v15, v2

    goto :goto_6

    :cond_6
    move v15, v8

    :goto_6
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_c

    .line 393
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    add-int/2addr v0, v1

    .line 394
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v16, v7, v1

    .line 396
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 397
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    add-int v2, v13, v9

    add-int/2addr v2, v14

    add-int/2addr v2, v1

    .line 399
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    if-eqz v1, :cond_7

    add-int/2addr v2, v15

    :cond_7
    move v3, v2

    .line 404
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v1, :cond_8

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    :cond_8
    sub-int v18, v17, v0

    .line 406
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object v1, v2

    move-object/from16 v2, v20

    move v8, v4

    move/from16 v4, v18

    move v10, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    .line 410
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v0, :cond_9

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    sub-int v0, v17, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    goto :goto_7

    .line 411
    :cond_9
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    sub-int v0, v17, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    :goto_7
    div-float/2addr v0, v1

    .line 412
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 413
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    if-eqz v2, :cond_a

    .line 414
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9

    .line 415
    :cond_a
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x0

    .line 416
    :goto_8
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 417
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 418
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    move-object/from16 v1, v20

    .line 421
    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    sub-float/2addr v0, v8

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    goto :goto_a

    :cond_c
    move v8, v4

    move v10, v5

    move/from16 v16, v7

    :goto_a
    if-eqz v11, :cond_13

    add-int v11, v13, v14

    .line 427
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_d

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    :cond_d
    move-object v5, v0

    .line 428
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    add-int v0, v13, v9

    .line 432
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    neg-int v2, v14

    add-int v0, v16, v0

    .line 433
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 435
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 436
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    add-int/2addr v1, v2

    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 437
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_e

    .line 439
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 441
    :cond_e
    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    sub-int/2addr v2, v1

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 444
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    const/4 v5, 0x0

    .line 441
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 446
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 447
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v1, v0

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v1, v0

    iput v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    goto/16 :goto_e

    :cond_f
    add-int v0, v13, v9

    .line 449
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int v3, v0, v1

    .line 450
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v21, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    .line 452
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_10

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    sub-int v0, v16, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    goto :goto_b

    .line 453
    :cond_10
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    sub-int v0, v16, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    :goto_b
    add-float/2addr v0, v1

    div-float/2addr v0, v1

    add-float v4, v0, v8

    .line 454
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 455
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    if-eqz v2, :cond_11

    .line 456
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d

    .line 457
    :cond_11
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v2, 0x0

    .line 458
    :goto_c
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 459
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 460
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_12
    :goto_d
    move-object/from16 v1, v21

    .line 463
    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    .line 464
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v0, v1

    iput v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    goto :goto_e

    :cond_13
    move v11, v13

    :goto_e
    add-int/2addr v14, v13

    add-int/2addr v14, v9

    if-eqz v12, :cond_15

    add-int/2addr v11, v15

    .line 472
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    .line 473
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    if-eqz v1, :cond_14

    add-int v1, v16, v14

    .line 475
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_f

    :cond_14
    add-int v1, v7, v14

    .line 478
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    .line 481
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_10

    .line 483
    :cond_15
    iget-boolean v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    if-eqz v0, :cond_16

    add-int v0, v16, v14

    .line 485
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_10

    :cond_16
    add-int v0, v7, v14

    .line 488
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_10
    add-int v0, v1, v15

    if-eqz v12, :cond_18

    .line 493
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17

    move v0, v1

    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_11

    .line 496
    :cond_17
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v2, :cond_18

    .line 497
    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    if-gez v2, :cond_18

    add-int/2addr v15, v2

    const/4 v2, 0x0

    .line 498
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v1, v15

    add-int v3, v7, v11

    add-int/2addr v3, v2

    .line 508
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-nez v2, :cond_1a

    .line 509
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v2, :cond_19

    .line 510
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_12

    .line 512
    :cond_19
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 515
    :cond_1a
    :goto_12
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, v3

    .line 517
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 518
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    sub-int v2, v7, v1

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    .line 519
    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    goto :goto_13

    :cond_1b
    sub-int v2, v7, v1

    if-gez v2, :cond_1c

    const/4 v2, 0x0

    .line 521
    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v2, 0x0

    .line 523
    :goto_14
    iput v7, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    .line 524
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    move-result v1

    invoke-virtual {v6, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateHeaderOpen(Z)V

    .line 525
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    if-eqz v1, :cond_1e

    .line 526
    iget-boolean v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    if-eqz v3, :cond_1d

    .line 529
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 530
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 531
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 530
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 532
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 533
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 532
    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 534
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_15

    :cond_1d
    const/4 v3, 0x1

    .line 536
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 537
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 538
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 537
    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 540
    :goto_15
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    invoke-direct {v6, v7, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    :cond_1e
    return-void
.end method

.method public onUpdateScrollingRangeOnLayout(ZIIII)V
    .locals 0

    .line 363
    invoke-super/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onUpdateScrollingRangeOnLayout(ZIIII)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 364
    invoke-direct {p0, p1, p2, p2, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 0

    .line 1090
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p0, :cond_0

    .line 1091
    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 0

    .line 1075
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p0, :cond_0

    .line 1076
    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    :cond_0
    return-void
.end method

.method public updateCoordinatorHeightGapInfo(II)V
    .locals 0

    .line 178
    invoke-super {p0, p1, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateCoordinatorHeightGapInfo(II)V

    .line 179
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 181
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingProgressImmediately(I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    invoke-direct {p0, p1, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    :goto_0
    return-void
.end method

.method public updateScrollingProgressImmediately(I)V
    .locals 0

    .line 880
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    .line 881
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method
