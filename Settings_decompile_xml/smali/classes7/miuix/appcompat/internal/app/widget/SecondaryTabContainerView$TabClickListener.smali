.class Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "SecondaryTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabClickListener"
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V
    .locals 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;->mRefs:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 408
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 412
    :cond_1
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    .line 413
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    .line 414
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->access$300(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 416
    invoke-static {p0, v3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->access$400(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object v4

    if-ne v4, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v2

    .line 417
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 419
    :cond_3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$500(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 420
    invoke-static {v0, v2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$100(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Z)V

    :cond_4
    return-void
.end method
