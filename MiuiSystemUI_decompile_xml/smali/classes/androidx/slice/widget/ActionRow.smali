.class public Landroidx/slice/widget/ActionRow;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mActionsGroup:Landroid/widget/LinearLayout;

.field public mColor:I

.field public final mIconPadding:I

.field public final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/high16 v0, -0x1000000

    .line 5
    iput v0, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    move-result-object v0

    .line 16
    const/high16 v1, 0x42400000    # 48.0f

    .line 17
    const/4 v2, 0x1

    .line 19
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 20
    move-result v0

    .line 23
    float-to-int v0, v0

    .line 24
    iput v0, p0, Landroidx/slice/widget/ActionRow;->mSize:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    move-result-object v0

    .line 34
    const/high16 v1, 0x41400000    # 12.0f

    .line 35
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 37
    move-result v0

    .line 40
    float-to-int v0, v0

    .line 41
    iput v0, p0, Landroidx/slice/widget/ActionRow;->mIconPadding:I

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    .line 44
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 49
    const/4 p1, 0x0

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    const/4 v1, -0x1

    .line 57
    const/4 v2, -0x2

    .line 58
    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    return-void
    .line 68
.end method


# virtual methods
.method public final addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    iget v1, p0, Landroidx/slice/widget/ActionRow;->mIconPadding:I

    .line 11
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 13
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    if-eqz p2, :cond_0

    .line 32
    iget p1, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    .line 34
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 46
    const v1, 0x101030e    # @android:attr/selectableItemBackground

    .line 47
    invoke-static {v1, p1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 64
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    iget p0, p0, Landroidx/slice/widget/ActionRow;->mSize:I

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    invoke-direct {p2, p0, p0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 72
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-object v0
    .line 78
.end method

.method public setActions(Ljava/util/List;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 12
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq p2, v2, :cond_2

    .line 18
    iput p2, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    .line 20
    move p2, v1

    .line 22
    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 25
    move-result v3

    .line 28
    if-ge p2, v3, :cond_2

    .line 29
    iget-object v3, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    move v4, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v4, v1

    .line 51
    :goto_1
    if-eqz v4, :cond_1

    .line 52
    check-cast v3, Landroid/widget/ImageView;

    .line 54
    iget v4, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    .line 56
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 58
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object p1

    .line 71
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result p2

    .line 75
    if-eqz p2, :cond_7

    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object p2

    .line 81
    check-cast p2, Landroidx/slice/core/SliceAction;

    .line 82
    iget-object v3, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 86
    move-result v3

    .line 89
    const/4 v4, 0x5

    .line 90
    if-lt v3, v4, :cond_4

    .line 91
    return-void

    .line 93
    :cond_4
    move-object v3, p2

    .line 94
    check-cast v3, Landroidx/slice/core/SliceActionImpl;

    .line 95
    iget-object v4, v3, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 97
    const-string v5, "input"

    .line 99
    const/4 v6, 0x0

    .line 101
    invoke-static {v4, v5, v6, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 102
    move-result-object v5

    .line 105
    const-string v7, "image"

    .line 106
    invoke-static {v4, v7, v6, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 108
    move-result-object v4

    .line 111
    iget-object v3, v3, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 112
    if-eqz v5, :cond_5

    .line 114
    if-eqz v4, :cond_5

    .line 116
    iget-object p2, v5, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 118
    check-cast p2, Landroid/app/RemoteInput;

    .line 120
    invoke-virtual {p2}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 122
    move-result p2

    .line 125
    if-eqz p2, :cond_3

    .line 126
    const-string p2, "no_tint"

    .line 128
    invoke-virtual {v4, p2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 130
    move-result p2

    .line 133
    xor-int/2addr p2, v0

    .line 134
    iget-object v4, v4, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 135
    check-cast v4, Landroidx/core/graphics/drawable/IconCompat;

    .line 137
    invoke-virtual {p0, v4, p2}, Landroidx/slice/widget/ActionRow;->addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;

    .line 139
    move-result-object p2

    .line 142
    new-instance v4, Landroidx/slice/widget/ActionRow$2;

    .line 143
    invoke-direct {v4, p0, v3, v5}, Landroidx/slice/widget/ActionRow$2;-><init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V

    .line 145
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget p2, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 153
    move-result-object v3

    .line 156
    sget-object v4, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 157
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 159
    move-result-object v3

    .line 162
    const v4, 0x7f0d0024    # @layout/abc_slice_remote_input 'res/layout/abc_slice_remote_input.xml'

    .line 163
    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    move-result-object v3

    .line 169
    check-cast v3, Landroidx/slice/widget/RemoteInputView;

    .line 170
    sget-object v4, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 174
    const/4 v4, 0x4

    .line 177
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 178
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    goto :goto_2

    .line 192
    :cond_5
    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    .line 193
    move-result-object v4

    .line 196
    if-eqz v4, :cond_3

    .line 197
    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    .line 199
    move-result-object v4

    .line 202
    if-eqz v4, :cond_3

    .line 203
    if-eqz v3, :cond_3

    .line 205
    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getImageMode()I

    .line 207
    move-result p2

    .line 210
    if-nez p2, :cond_6

    .line 211
    move p2, v0

    .line 213
    goto :goto_3

    .line 214
    :cond_6
    move p2, v1

    .line 215
    :goto_3
    invoke-virtual {p0, v4, p2}, Landroidx/slice/widget/ActionRow;->addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;

    .line 216
    move-result-object p2

    .line 219
    new-instance v4, Landroidx/slice/widget/ActionRow$1;

    .line 220
    invoke-direct {v4, v3}, Landroidx/slice/widget/ActionRow$1;-><init>(Landroidx/slice/SliceItem;)V

    .line 222
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    goto/16 :goto_2

    .line 228
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 230
    move-result p1

    .line 233
    if-eqz p1, :cond_8

    .line 234
    goto :goto_4

    .line 236
    :cond_8
    const/16 v1, 0x8

    .line 237
    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 239
    return-void
    .line 242
.end method
