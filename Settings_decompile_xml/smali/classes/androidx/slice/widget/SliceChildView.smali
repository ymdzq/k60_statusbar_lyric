.class public abstract Landroidx/slice/widget/SliceChildView;
.super Landroid/widget/FrameLayout;
.source "SliceChildView.java"


# instance fields
.field protected mInsetBottom:I

.field protected mInsetEnd:I

.field protected mInsetStart:I

.field protected mInsetTop:I

.field protected mLastUpdated:J

.field protected mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field protected mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field protected mRowStyle:Landroidx/slice/widget/RowStyle;

.field protected mShowLastUpdated:Z

.field protected mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field protected mTintColor:I

.field protected mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const-wide/16 v0, -0x1

    .line 61
    iput-wide v0, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLoadingActions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public abstract resetView()V
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public setInsets(IIII)V
    .locals 0

    .line 123
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    .line 124
    iput p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 125
    iput p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    .line 126
    iput p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 0

    .line 179
    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 0

    .line 247
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-void
.end method

.method public setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 0

    .line 195
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 0

    .line 237
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 238
    iput-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 161
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    return-void
.end method
