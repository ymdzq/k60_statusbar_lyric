.class public final Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPosition:I

.field public final mRefs:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 10
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 18
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    .line 20
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object p0

    .line 25
    if-nez p0, :cond_2

    .line 26
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 29
    move-result v2

    .line 32
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    .line 33
    move-result v3

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    move-result p0

    .line 40
    sub-int/2addr v3, p0

    .line 41
    div-int/lit8 v3, v3, 0x2

    .line 42
    sub-int/2addr v2, v3

    .line 44
    const/4 p0, 0x0

    .line 45
    invoke-virtual {v0, v2, p0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 46
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;

    .line 49
    return-void
    .line 51
.end method
