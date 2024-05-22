.class public final Landroidx/leanback/widget/picker/Picker$1;
.super Landroidx/leanback/widget/OnChildViewHolderSelectedListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/picker/Picker;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/Picker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    .line 2
    invoke-direct {p0}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChildViewHolderSelected(Landroidx/leanback/widget/BaseGridView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 10
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/Picker;->updateColumnAlpha(I)V

    .line 14
    if-eqz p2, :cond_0

    .line 17
    iget-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 24
    check-cast p2, Landroidx/leanback/widget/picker/PickerColumn;

    .line 25
    iget p2, p2, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 27
    add-int/2addr p2, p3

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/picker/Picker;->onColumnValueChanged(II)V

    .line 30
    :cond_0
    return-void
    .line 33
.end method
