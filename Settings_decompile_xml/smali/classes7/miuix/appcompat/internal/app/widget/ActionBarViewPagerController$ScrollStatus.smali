.class Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollStatus"
.end annotation


# instance fields
.field mFromPos:I

.field private mOffsetAtScroll:F

.field private mPosAtScroll:I

.field mScrollBegin:Z

.field mScrollEnd:Z

.field mToPos:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;-><init>()V

    return-void
.end method

.method private onScrollBegin(IF)V
    .locals 2

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    .line 76
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p1, 0x1

    .line 77
    :goto_0
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 78
    :cond_2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    return-void
.end method

.method private onScrollEnd()V
    .locals 1

    .line 82
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    return-void
.end method

.method private onScrollPositionChange(IF)V
    .locals 0

    .line 68
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    .line 69
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    return-void
.end method


# virtual methods
.method update(IF)V
    .locals 1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->onScrollEnd()V

    goto :goto_0

    .line 60
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    if-eq v0, p1, :cond_1

    .line 61
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->onScrollPositionChange(IF)V

    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    if-eqz v0, :cond_2

    .line 63
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->onScrollBegin(IF)V

    :cond_2
    :goto_0
    return-void
.end method
