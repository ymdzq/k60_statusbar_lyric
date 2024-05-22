.class public final synthetic Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 13
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 15
    return-void

    .line 18
    :goto_0
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 19
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 21
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 23
    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 25
    const/4 v3, 0x3

    .line 27
    const/4 v4, 0x1

    .line 28
    iget v5, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 29
    if-ne v5, v3, :cond_0

    .line 31
    move v6, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v6, v2

    .line 35
    :goto_1
    const/4 v7, 0x5

    .line 36
    iget-object v8, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 37
    if-eqz v6, :cond_2

    .line 39
    invoke-virtual {v8, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 41
    move-result-object v9

    .line 44
    if-eqz v9, :cond_1

    .line 45
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 47
    move-result v10

    .line 50
    neg-int v10, v10

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move v10, v2

    .line 53
    :goto_2
    add-int/2addr v10, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    invoke-virtual {v8, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 56
    move-result-object v9

    .line 59
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    .line 60
    move-result v10

    .line 63
    sub-int/2addr v10, v1

    .line 64
    :goto_3
    if-eqz v9, :cond_8

    .line 65
    if-eqz v6, :cond_3

    .line 67
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 69
    move-result v1

    .line 72
    if-lt v1, v10, :cond_4

    .line 73
    :cond_3
    if-nez v6, :cond_8

    .line 75
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 77
    move-result v1

    .line 80
    if-le v1, v10, :cond_8

    .line 81
    :cond_4
    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 83
    move-result v1

    .line 86
    if-nez v1, :cond_8

    .line 87
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object v1

    .line 92
    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 93
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 95
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 97
    move-result v6

    .line 100
    invoke-virtual {v0, v9, v10, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 101
    iput-boolean v4, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 104
    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    .line 106
    if-ne v5, v3, :cond_5

    .line 109
    move v3, v7

    .line 111
    :cond_5
    invoke-virtual {v8, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    invoke-virtual {v8, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 118
    :cond_6
    iget-boolean v0, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 121
    if-nez v0, :cond_8

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 125
    move-result-wide v11

    .line 128
    const/4 v13, 0x3

    .line 129
    const/4 v14, 0x0

    .line 130
    const/4 v15, 0x0

    .line 131
    const/16 v16, 0x0

    .line 132
    move-wide v9, v11

    .line 134
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 139
    move-result v1

    .line 142
    :goto_4
    if-ge v2, v1, :cond_7

    .line 143
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 145
    move-result-object v3

    .line 148
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 152
    goto :goto_4

    .line 154
    :cond_7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 155
    iput-boolean v4, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 158
    :cond_8
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 162
.end method
