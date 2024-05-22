.class final Landroidx/mediarouter/app/OverlayListView;
.super Landroid/widget/ListView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mOverlayObjects:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 12
    if-lez v0, :cond_7

    .line 13
    iget-object v0, p0, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_7

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    .line 33
    iget-object v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 35
    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawingTime()J

    .line 42
    move-result-wide v2

    .line 45
    iget-boolean v4, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 46
    if-eqz v4, :cond_2

    .line 48
    const/4 v1, 0x0

    .line 50
    goto/16 :goto_3

    .line 51
    :cond_2
    iget-wide v4, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartTime:J

    .line 53
    sub-long/2addr v2, v4

    .line 55
    long-to-float v2, v2

    .line 56
    iget-wide v3, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mDuration:J

    .line 57
    long-to-float v3, v3

    .line 59
    div-float/2addr v2, v3

    .line 60
    const/high16 v3, 0x3f800000    # 1.0f

    .line 61
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 63
    move-result v2

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 68
    move-result v2

    .line 71
    iget-boolean v5, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    .line 72
    if-nez v5, :cond_3

    .line 74
    goto :goto_1

    .line 76
    :cond_3
    move v4, v2

    .line 77
    :goto_1
    iget-object v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    if-nez v2, :cond_4

    .line 80
    move v2, v4

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 84
    move-result v2

    .line 87
    :goto_2
    iget v5, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mDeltaY:I

    .line 88
    int-to-float v5, v5

    .line 90
    mul-float/2addr v5, v2

    .line 91
    float-to-int v5, v5

    .line 92
    iget-object v6, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    .line 93
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 95
    add-int/2addr v7, v5

    .line 97
    iget-object v8, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    .line 98
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 100
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 102
    add-int/2addr v6, v5

    .line 104
    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget v5, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartAlpha:F

    .line 107
    iget v6, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mEndAlpha:F

    .line 109
    invoke-static {v6, v5, v2, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 111
    move-result v2

    .line 114
    iput v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    .line 115
    iget-object v5, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    if-eqz v5, :cond_5

    .line 119
    const/high16 v6, 0x437f0000    # 255.0f

    .line 121
    mul-float/2addr v2, v6

    .line 123
    float-to-int v2, v2

    .line 124
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 125
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    :cond_5
    iget-boolean v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    .line 131
    const/4 v5, 0x1

    .line 133
    if-eqz v2, :cond_6

    .line 134
    cmpl-float v2, v4, v3

    .line 136
    if-ltz v2, :cond_6

    .line 138
    iput-boolean v5, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 140
    iget-object v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$10;

    .line 142
    if-eqz v2, :cond_6

    .line 144
    iget-object v3, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 146
    iget-object v4, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    .line 148
    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;->val$route:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 150
    check-cast v4, Ljava/util/HashSet;

    .line 152
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 157
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_6
    iget-boolean v1, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 162
    xor-int/2addr v1, v5

    .line 164
    :goto_3
    if-nez v1, :cond_0

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 167
    goto/16 :goto_0

    .line 170
    :cond_7
    return-void
    .line 172
.end method
