.class public final Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mSliceView:Landroidx/slice/widget/SliceView;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumePanelSlicesAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanelSlicesAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/systemui/volume/VolumePanelSlicesAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    const v0, 0x7f0a0897    # @id/slice_view

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 13
    check-cast p2, Landroidx/slice/widget/SliceView;

    .line 14
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->mSliceView:Landroidx/slice/widget/SliceView;

    .line 16
    const/4 p0, 0x2

    .line 18
    invoke-virtual {p2, p0}, Landroidx/slice/widget/SliceView;->setMode(I)V

    .line 19
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p2, v0}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    .line 23
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 26
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mOnSliceActionListener:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 29
    invoke-virtual {p2, p0}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 31
    return-void
    .line 34
.end method
