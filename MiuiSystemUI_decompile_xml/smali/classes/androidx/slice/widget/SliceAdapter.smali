.class public final Landroidx/slice/widget/SliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;


# instance fields
.field public mAllowTwoLines:Z

.field public final mContext:Landroid/content/Context;

.field public final mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

.field public mInsetBottom:I

.field public mInsetEnd:I

.field public mInsetStart:I

.field public mInsetTop:I

.field public mLastUpdated:J

.field public mLoadingActions:Ljava/util/Set;

.field public mParent:Landroidx/slice/widget/SliceView;

.field public mPolicy:Landroidx/slice/widget/SliceViewPolicy;

.field public mShowLastUpdated:Z

.field public mSliceActions:Ljava/util/List;

.field public mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field public mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field public mSlices:Ljava/util/List;

.field public mTemplateView:Landroidx/slice/widget/TemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Landroidx/slice/widget/SliceAdapter$IdGenerator;

    .line 5
    invoke-direct {v0}, Landroidx/slice/widget/SliceAdapter$IdGenerator;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 24
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    .line 26
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 29
    return-void
    .line 32
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    .line 8
    iget-wide p0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mId:J

    .line 10
    return-wide p0
    .line 12
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    .line 8
    iget p0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mType:I

    .line 10
    return p0
    .line 12
.end method

.method public final notifyHeaderChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    check-cast p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    .line 2
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    .line 12
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mItem:Landroidx/slice/widget/SliceContent;

    .line 14
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 16
    if-eqz v0, :cond_9

    .line 18
    if-nez p0, :cond_0

    .line 20
    goto/16 :goto_6

    .line 22
    :cond_0
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 24
    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 26
    iget-object v1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 28
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceStyle;->getRowStyle(Landroidx/slice/SliceItem;)Landroidx/slice/widget/RowStyle;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 34
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 39
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 44
    iget-object v2, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 46
    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 48
    instance-of v1, p0, Landroidx/slice/widget/RowContent;

    .line 51
    const/4 v2, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v1, :cond_1

    .line 55
    move-object v1, p0

    .line 57
    check-cast v1, Landroidx/slice/widget/RowContent;

    .line 58
    iget-boolean v1, v1, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 60
    move v6, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-nez p2, :cond_2

    .line 64
    move v6, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v6, v3

    .line 68
    :goto_0
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 69
    iget-object v4, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 71
    iget-object v4, v4, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 73
    invoke-virtual {v1, v4}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 75
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 78
    iget-object v4, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 80
    iget-object v4, v4, Landroidx/slice/widget/SliceAdapter;->mPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 82
    invoke-virtual {v1, v4}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 84
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 87
    iget-object v4, v0, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    .line 89
    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v4

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v4, v0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 98
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 100
    :goto_1
    invoke-virtual {v1, v4}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 102
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 105
    iget-object v4, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 107
    iget-object v4, v4, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 109
    invoke-virtual {v1, v4, v0}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    .line 111
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 114
    if-eqz v6, :cond_4

    .line 116
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 118
    iget-boolean v1, v1, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    .line 120
    if-eqz v1, :cond_4

    .line 122
    move v1, v2

    .line 124
    goto :goto_2

    .line 125
    :cond_4
    move v1, v3

    .line 126
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 127
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 130
    if-eqz v6, :cond_5

    .line 132
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 134
    iget-wide v4, v1, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    .line 136
    goto :goto_3

    .line 138
    :cond_5
    const-wide/16 v4, -0x1

    .line 139
    :goto_3
    invoke-virtual {v0, v4, v5}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 141
    if-nez p2, :cond_6

    .line 144
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 146
    iget v0, v0, Landroidx/slice/widget/SliceAdapter;->mInsetTop:I

    .line 148
    goto :goto_4

    .line 150
    :cond_6
    move v0, v3

    .line 151
    :goto_4
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 152
    invoke-virtual {v1}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    .line 154
    move-result v1

    .line 157
    sub-int/2addr v1, v2

    .line 158
    if-ne p2, v1, :cond_7

    .line 159
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 161
    iget v3, v1, Landroidx/slice/widget/SliceAdapter;->mInsetBottom:I

    .line 163
    :cond_7
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 165
    iget-object v2, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 167
    iget v4, v2, Landroidx/slice/widget/SliceAdapter;->mInsetStart:I

    .line 169
    iget v2, v2, Landroidx/slice/widget/SliceAdapter;->mInsetEnd:I

    .line 171
    invoke-virtual {v1, v4, v0, v2, v3}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 173
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 176
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 178
    iget-boolean v1, v1, Landroidx/slice/widget/SliceAdapter;->mAllowTwoLines:Z

    .line 180
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 182
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 185
    if-eqz v6, :cond_8

    .line 187
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 189
    iget-object v1, v1, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    .line 191
    goto :goto_5

    .line 193
    :cond_8
    const/4 v1, 0x0

    .line 194
    :goto_5
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 195
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 198
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 200
    invoke-virtual {v1}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    .line 202
    move-result v4

    .line 205
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 206
    iget-object v5, v1, Landroidx/slice/widget/SliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 208
    move-object v1, p0

    .line 210
    move v2, v6

    .line 211
    move v3, p2

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroidx/slice/widget/SliceChildView;->setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 213
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 216
    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    .line 218
    invoke-static {p0, v6, v0}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    .line 220
    move-result p0

    .line 223
    filled-new-array {p0, p2}, [I

    .line 224
    move-result-object p0

    .line 227
    iget-object p1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 228
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 230
    :cond_9
    :goto_6
    return-void
    .line 233
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 p2, 0x3

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    .line 4
    if-eq p1, p2, :cond_2

    .line 6
    const/4 p2, 0x4

    .line 8
    if-eq p1, p2, :cond_1

    .line 9
    const/4 p2, 0x5

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    new-instance p1, Landroidx/slice/widget/RowView;

    .line 14
    invoke-direct {p1, v1}, Landroidx/slice/widget/RowView;-><init>(Landroid/content/Context;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object p1

    .line 23
    const p2, 0x7f0d0020    # @layout/abc_slice_message_local 'res/layout/abc_slice_message_local.xml'

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    move-result-object p1

    .line 35
    const p2, 0x7f0d001f    # @layout/abc_slice_message 'res/layout/abc_slice_message.xml'

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    move-result-object p1

    .line 47
    const p2, 0x7f0d001b    # @layout/abc_slice_grid 'res/layout/abc_slice_grid.xml'

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 54
    instance-of p2, p1, Landroidx/slice/widget/GridRowView;

    .line 55
    if-eqz p2, :cond_3

    .line 57
    check-cast p1, Landroidx/slice/widget/GridRowView;

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    new-instance p1, Landroidx/slice/widget/GridRowView;

    .line 62
    invoke-direct {p1, v1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    :goto_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 67
    const/4 v0, -0x1

    .line 69
    const/4 v1, -0x2

    .line 70
    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance p2, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    .line 77
    invoke-direct {p2, p0, p1}, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;-><init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V

    .line 79
    return-object p2
    .line 82
.end method

.method public final onSliceActionLoading(Landroidx/slice/SliceItem;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    .line 7
    move-result p1

    .line 10
    if-le p1, p2, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :goto_0
    return-void
    .line 20
.end method

.method public final setSliceItems(Ljava/util/List;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 6
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 13
    goto :goto_1

    .line 16
    :cond_0
    iget-object p2, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    .line 17
    iget-object v0, p2, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mUsedIds:Landroidx/collection/ArrayMap;

    .line 19
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result v1

    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/slice/widget/SliceContent;

    .line 49
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    .line 51
    new-instance v2, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    .line 53
    invoke-direct {v2, v0, p2}, Landroidx/slice/widget/SliceAdapter$SliceWrapper;-><init>(Landroidx/slice/widget/SliceContent;Landroidx/slice/widget/SliceAdapter$IdGenerator;)V

    .line 55
    check-cast v1, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 64
    return-void
    .line 67
.end method
