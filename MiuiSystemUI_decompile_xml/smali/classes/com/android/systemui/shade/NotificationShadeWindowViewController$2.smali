.class public final Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0a015d    # @id/brightness_mirror_container

    .line 6
    if-ne p1, v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 11
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
