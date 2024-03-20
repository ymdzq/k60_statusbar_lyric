.class public Lcom/android/systemui/tuner/LockscreenFragment$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    .line 2
    const/4 p0, 0x0

    .line 4
    throw p0
    .line 5
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p1

    .line 11
    const v0, 0x7f0d03c5    # @layout/tuner_shortcut_item 'res/layout/tuner_shortcut_item.xml'

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$Holder;-><init>(Landroid/view/View;)V

    .line 20
    return-object p0
    .line 23
.end method
