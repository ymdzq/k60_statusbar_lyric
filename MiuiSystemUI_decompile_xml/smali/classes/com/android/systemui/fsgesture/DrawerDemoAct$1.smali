.class public final Lcom/android/systemui/fsgesture/DrawerDemoAct$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 6
    move-result p2

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_4

    .line 11
    const/4 v1, 0x2

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    if-eq p1, v1, :cond_0

    .line 16
    const/4 v2, 0x3

    .line 18
    if-eq p1, v2, :cond_2

    .line 19
    goto/16 :goto_1

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 23
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    .line 27
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    cmpl-float v1, p2, v1

    .line 32
    if-ltz v1, :cond_1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 36
    iget p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    .line 38
    int-to-float p0, p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 46
    move-result p0

    .line 49
    int-to-float p0, p0

    .line 50
    sub-float p0, p2, p0

    .line 51
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 53
    goto/16 :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 58
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    move-result-object p1

    .line 65
    iget-object v2, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 66
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v2

    .line 71
    const v3, 0x7f070384    # @dimen/fsgesture_shelter_width '15.0dp'

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    move-result v2

    .line 78
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    iget-object v2, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 81
    iget-object v2, v2, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    .line 83
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 88
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    .line 92
    move-result p1

    .line 95
    div-int/2addr p1, v1

    .line 96
    int-to-float p1, p1

    .line 97
    cmpl-float p1, p2, p1

    .line 98
    const-wide/16 v1, 0xc8

    .line 100
    if-ltz p1, :cond_3

    .line 102
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 104
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 108
    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 112
    iget p2, p2, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    .line 114
    int-to-float p2, p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 117
    move-result-object p1

    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 121
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 128
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 132
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 135
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    .line 137
    new-instance p2, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;

    .line 139
    invoke-direct {p2, v0, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;-><init>(ILjava/lang/Object;)V

    .line 141
    const-wide/16 v1, 0x3e8

    .line 144
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    goto :goto_1

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 150
    iget-object p2, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    .line 152
    new-instance v3, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;

    .line 154
    invoke-direct {v3, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    .line 156
    const-wide/16 v4, 0x1f4

    .line 159
    invoke-virtual {p2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 164
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 168
    move-result-object p1

    .line 171
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 172
    iget p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    .line 174
    int-to-float p0, p0

    .line 176
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 177
    move-result-object p0

    .line 180
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 181
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 185
    goto :goto_1

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 189
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 196
    iget-object p1, p1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    move-result-object p1

    .line 203
    const/4 p2, -0x1

    .line 204
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 207
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    .line 209
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :goto_1
    return v0
    .line 214
.end method
