.class public Lcom/android/systemui/tuner/LockscreenFragment$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    const p0, 0x1020006    # @android:id/icon

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Landroid/widget/ImageView;

    .line 12
    const p0, 0x1020016    # @android:id/title

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p0

    .line 20
    check-cast p0, Landroid/widget/TextView;

    .line 21
    const p0, 0x7f0a0342    # @id/expand

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 30
    return-void
    .line 32
.end method
