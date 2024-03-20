.class Lmiuix/nestedheader/widget/NestedHeaderLayout$1;
.super Ljava/lang/Object;
.source "NestedHeaderLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    sub-int/2addr p5, p9

    if-eqz p5, :cond_0

    .line 206
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget-boolean p2, p1, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 207
    invoke-static {p1, p2, p3, p3, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;ZZZZ)V

    .line 208
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p2

    add-int/2addr p2, p5

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$100(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I

    move-result p0

    neg-int p0, p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingProgressImmediately(I)V

    :cond_0
    return-void
.end method
