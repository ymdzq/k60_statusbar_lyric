.class public final Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$Item;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mData:Ljava/lang/Object;

.field public final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$Item;->mType:I

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    instance-of p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    const/4 p1, 0x2

    .line 19
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$Item;->mType:I

    .line 20
    :goto_0
    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    throw p0
    .line 28
.end method
