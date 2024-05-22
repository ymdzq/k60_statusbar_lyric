.class public final Landroidx/slice/widget/SliceViewPolicy;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

.field public mMaxHeight:I

.field public mMaxSmallHeight:I

.field public mMode:I

.field public mScrollable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    .line 6
    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxSmallHeight:I

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    .line 11
    const/4 v0, 0x2

    .line 13
    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 14
    return-void
    .line 16
.end method
