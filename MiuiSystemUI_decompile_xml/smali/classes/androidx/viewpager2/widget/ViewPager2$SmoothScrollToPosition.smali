.class public final Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPosition:I

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(ILandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mPosition:I

    .line 5
    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mPosition:I

    .line 4
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 6
    return-void
    .line 9
.end method
