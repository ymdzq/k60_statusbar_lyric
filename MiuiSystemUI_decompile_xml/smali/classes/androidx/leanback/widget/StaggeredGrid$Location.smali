.class public final Landroidx/leanback/widget/StaggeredGrid$Location;
.super Landroidx/leanback/widget/Grid$Location;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mOffset:I

.field public mSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Grid$Location;-><init>(I)V

    .line 2
    iput p2, p0, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 5
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 8
    return-void
    .line 10
.end method
