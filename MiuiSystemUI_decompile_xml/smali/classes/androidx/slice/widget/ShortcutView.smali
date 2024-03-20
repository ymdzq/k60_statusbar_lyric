.class public Landroidx/slice/widget/ShortcutView;
.super Landroidx/slice/widget/SliceChildView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActionItem:Landroidx/slice/SliceItem;

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public final mLargeIconSize:I

.field public mListContent:Landroidx/slice/widget/ListContent;

.field public mLoadingActions:Ljava/util/Set;

.field public final mSmallIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f070049    # @dimen/abc_slice_icon_size '24.0dp'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result v0

    .line 15
    iput v0, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    .line 16
    const v0, 0x7f070056    # @dimen/abc_slice_shortcut_size '56.0dp'

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p1

    .line 24
    iput p1, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public getLoadingActions()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMode()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
    .line 3
.end method

.method public final performClick()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, v1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 19
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 31
    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 33
    :goto_0
    check-cast v0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 35
    iget-object p0, v0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string v0, "ShortcutView"

    .line 47
    const-string v1, "PendingIntent for slice cannot be sent"

    .line 49
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 54
    return p0
    .line 55
.end method

.method public final resetView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 3
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 5
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 12
    return-void
    .line 15
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    .line 2
    return-void
    .line 4
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->resetView()V

    .line 2
    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceActionImpl;

    .line 14
    move-result-object p1

    .line 17
    iget-object v0, p1, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 18
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 20
    iget-object v0, p1, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 22
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 24
    iget p1, p1, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 26
    const/4 v0, 0x1

    .line 28
    const/4 v1, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 30
    move p1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p1, v1

    .line 34
    :goto_0
    iget-object v2, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 35
    iget-object v2, v2, Landroidx/slice/widget/SliceContent;->mColorItem:Landroidx/slice/SliceItem;

    .line 37
    const/4 v3, -0x1

    .line 39
    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    .line 42
    move-result v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v2, v3

    .line 47
    :goto_1
    if-eq v2, v3, :cond_3

    .line 48
    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v2

    .line 54
    const v4, 0x1010435    # @android:attr/colorAccent

    .line 55
    invoke-static {v4, v2}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(ILandroid/content/Context;)I

    .line 58
    move-result v2

    .line 61
    :goto_2
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    .line 62
    new-instance v5, Landroid/graphics/drawable/shapes/OvalShape;

    .line 64
    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 66
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 69
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 72
    new-instance v2, Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v5

    .line 80
    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v5, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 84
    if-eqz v5, :cond_4

    .line 86
    if-eqz p1, :cond_4

    .line 88
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 96
    const/16 v5, 0x11

    .line 98
    if-eqz v4, :cond_8

    .line 100
    if-eqz p1, :cond_5

    .line 102
    iget v4, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    .line 104
    goto :goto_3

    .line 106
    :cond_5
    iget v4, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    .line 107
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v6

    .line 112
    iget-object v7, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 113
    xor-int/2addr p1, v0

    .line 115
    new-instance v8, Landroid/widget/ImageView;

    .line 116
    invoke-direct {v8, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v7, v6}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 121
    move-result-object v6

    .line 124
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    if-eqz p1, :cond_6

    .line 128
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 130
    goto :goto_4

    .line 132
    :cond_6
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 133
    :goto_4
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    move-result-object v6

    .line 144
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    if-eqz p1, :cond_7

    .line 147
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 149
    invoke-static {v4, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 151
    move-result-object p1

    .line 154
    new-instance v3, Landroid/graphics/Canvas;

    .line 155
    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {v8, v1, v1, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 160
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-static {p1}, Landroidx/slice/widget/SliceViewUtil;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 166
    move-result-object p1

    .line 169
    invoke-virtual {v8, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    goto :goto_5

    .line 173
    :cond_7
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 174
    :goto_5
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 177
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 179
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 183
    goto :goto_6

    .line 186
    :cond_8
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 187
    :goto_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 190
    move-result-object p1

    .line 193
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 196
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void
    .line 201
.end method
