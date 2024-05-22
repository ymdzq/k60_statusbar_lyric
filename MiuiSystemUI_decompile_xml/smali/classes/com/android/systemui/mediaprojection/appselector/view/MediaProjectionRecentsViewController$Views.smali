.class public final Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final progress:Landroid/view/View;

.field public final recentsContainer:Landroid/view/View;

.field public final recycler:Landroidx/recyclerview/widget/RecyclerView;

.field public final root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->root:Landroid/view/ViewGroup;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->recentsContainer:Landroid/view/View;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->progress:Landroid/view/View;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    return-void
    .line 13
.end method
