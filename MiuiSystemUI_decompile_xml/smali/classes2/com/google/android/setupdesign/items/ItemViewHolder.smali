.class public final Lcom/google/android/setupdesign/items/ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# instance fields
.field public isEnabled:Z

.field public item:Lcom/google/android/setupdesign/items/AbstractItem;


# virtual methods
.method public final isDividerAllowedAbove()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isDividerAllowedBelow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    .line 2
    return p0
    .line 4
.end method
