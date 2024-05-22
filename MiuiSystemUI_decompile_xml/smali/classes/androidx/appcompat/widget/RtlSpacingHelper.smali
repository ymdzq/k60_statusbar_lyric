.class public final Landroidx/appcompat/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mEnd:I

.field public mExplicitLeft:I

.field public mExplicitRight:I

.field public mIsRelative:Z

.field public mIsRtl:Z

.field public mLeft:I

.field public mRight:I

.field public mStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 8
    const/high16 v1, -0x80000000

    .line 10
    iput v1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    .line 12
    iput v1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    .line 14
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 16
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 20
    iput-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final setRelative(II)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    .line 2
    iput p2, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 7
    iget-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 9
    const/high16 v1, -0x80000000

    .line 11
    if-eqz v0, :cond_1

    .line 13
    if-eq p2, v1, :cond_0

    .line 15
    iput p2, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 17
    :cond_0
    if-eq p1, v1, :cond_3

    .line 19
    iput p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    if-eq p1, v1, :cond_2

    .line 24
    iput p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 26
    :cond_2
    if-eq p2, v1, :cond_3

    .line 28
    iput p2, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 30
    :cond_3
    :goto_0
    return-void
    .line 32
.end method
