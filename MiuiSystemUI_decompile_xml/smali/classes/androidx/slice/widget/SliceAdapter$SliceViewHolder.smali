.class public final Landroidx/slice/widget/SliceAdapter$SliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mSliceChildView:Landroidx/slice/widget/SliceChildView;

.field public final synthetic this$0:Landroidx/slice/widget/SliceAdapter;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    instance-of p1, p2, Landroidx/slice/widget/SliceChildView;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    check-cast p2, Landroidx/slice/widget/SliceChildView;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    iput-object p2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 2
    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, [I

    .line 12
    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceView;->setClickInfo([I)V

    .line 14
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 17
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    .line 21
    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 2
    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    .line 4
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_5

    .line 7
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    .line 9
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    iget-object v2, v0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 14
    if-nez v2, :cond_1

    .line 16
    iget-object v2, v0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceActionImpl;

    .line 26
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move v0, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v0, v1

    .line 35
    :goto_1
    if-nez v0, :cond_2

    .line 36
    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 40
    goto :goto_2

    .line 43
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    .line 44
    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 51
    move-result v0

    .line 54
    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    .line 55
    aget v2, v2, p1

    .line 57
    int-to-float v2, v2

    .line 59
    sub-float/2addr v0, v2

    .line 60
    float-to-int v0, v0

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 62
    move-result v2

    .line 65
    iget-object v3, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    .line 66
    aget v3, v3, v1

    .line 68
    int-to-float v3, v3

    .line 70
    sub-float/2addr v2, v3

    .line 71
    float-to-int v2, v2

    .line 72
    iget-object v3, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object v3

    .line 78
    int-to-float v0, v0

    .line 79
    int-to-float v2, v2

    .line 80
    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 84
    move-result p2

    .line 87
    if-nez p2, :cond_3

    .line 88
    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    .line 90
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 92
    goto :goto_2

    .line 95
    :cond_3
    const/4 v0, 0x3

    .line 96
    if-eq p2, v0, :cond_4

    .line 97
    if-eq p2, v1, :cond_4

    .line 99
    const/4 v0, 0x2

    .line 101
    if-ne p2, v0, :cond_5

    .line 102
    :cond_4
    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    .line 104
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 106
    :cond_5
    :goto_2
    return p1
    .line 109
.end method
