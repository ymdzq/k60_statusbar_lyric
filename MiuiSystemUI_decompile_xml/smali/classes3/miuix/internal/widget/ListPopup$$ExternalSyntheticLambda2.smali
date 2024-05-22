.class public final synthetic Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;->f$0:Lmiuix/internal/widget/ListPopup;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 1
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;->f$0:Lmiuix/internal/widget/ListPopup;

    .line 2
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 6
    move-result v0

    .line 9
    sub-int v4, p3, v0

    .line 10
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 12
    if-eqz p3, :cond_0

    .line 14
    if-ltz v4, :cond_0

    .line 16
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 18
    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    .line 20
    move-result p3

    .line 23
    if-ge v4, p3, :cond_0

    .line 24
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 26
    move-object v2, p1

    .line 28
    move-object v3, p2

    .line 29
    move-wide v5, p4

    .line 30
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method
