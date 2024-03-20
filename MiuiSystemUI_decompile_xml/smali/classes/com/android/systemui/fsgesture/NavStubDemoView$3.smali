.class public final Lcom/android/systemui/fsgesture/NavStubDemoView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const-wide/16 v1, 0x3e8

    .line 5
    const-string v3, "DEMO_FULLY_SHOW"

    .line 7
    const/4 v4, 0x1

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    goto/16 :goto_2

    .line 13
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 22
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 26
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 29
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 41
    move-result-object p1

    .line 44
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;

    .line 45
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;I)V

    .line 47
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 54
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 56
    const-string v0, "DEMO_TO_RECENTTASK"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 68
    move-result-object p1

    .line 71
    new-instance v0, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;

    .line 72
    invoke-direct {v0, p0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;I)V

    .line 74
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 80
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 81
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 88
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 100
    move-result-object p1

    .line 103
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;

    .line 104
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;I)V

    .line 106
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    goto :goto_1

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 113
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 115
    const-string v0, "DEMO_TO_HOME"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p1

    .line 122
    if-eqz p1, :cond_3

    .line 123
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 127
    move-result-object p1

    .line 130
    new-instance v0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;

    .line 131
    invoke-direct {v0, p0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;I)V

    .line 133
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :cond_3
    :goto_1
    return-void

    .line 139
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 142
    move-result-object p1

    .line 145
    new-instance v0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;

    .line 146
    invoke-direct {v0, v4, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$1;-><init>(ILjava/lang/Object;)V

    .line 148
    const-wide/16 v1, 0x12c

    .line 151
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 156
    sget p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->$r8$clinit:I

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    .line 160
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 164
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 19
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 21
    const/16 v0, 0x8

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 28
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 35
    iget-object p1, p1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
