.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;
.super Lcom/android/systemui/MultiListLayout$MultiListAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final countItems(Z)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 4
    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 14
    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 22
    invoke-interface {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->shouldBeSeparated()V

    .line 24
    if-nez p1, :cond_0

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return v1
    .line 34
.end method

.method public final getCount()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->countItems(Z)I

    .line 3
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->countItems(Z)I

    .line 8
    move-result p0

    .line 11
    add-int/2addr p0, v0

    .line 12
    return p0
    .line 13
.end method

.method public final getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 4
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-virtual {v3, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->shouldShowAction(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position "

    const-string v2, " out of range of showable actions, filtered count="

    .line 6
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardshowing="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-boolean v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mKeyguardShowing:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", provisioned="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDeviceProvisioned:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 6
    iget-object v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 17
    new-instance p3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-direct {p3, p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/BaseAdapter;II)V

    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    instance-of p3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 27
    if-eqz p3, :cond_0

    .line 29
    new-instance p3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {p3, p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/widget/BaseAdapter;II)V

    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 36
    :cond_0
    return-object p2
    .line 39
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->isEnabled()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
