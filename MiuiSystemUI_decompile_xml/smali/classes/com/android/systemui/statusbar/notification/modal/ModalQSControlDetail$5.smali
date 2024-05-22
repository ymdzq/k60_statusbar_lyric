.class public final Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final from:Landroid/view/View;

.field public final fromFrame:[I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

.field public final to:Landroid/view/View;

.field public final toFrame:[I

.field public final translate:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x4

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 8
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 10
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->from:Landroid/view/View;

    .line 15
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->to:Landroid/view/View;

    .line 19
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mTranslateView:Landroid/view/View;

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->translate:Landroid/view/View;

    .line 23
    new-array p1, v1, [I

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->fromFrame:[I

    .line 27
    new-array p1, v1, [I

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->toFrame:[I

    .line 31
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 34
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 36
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mTranslateView:Landroid/view/View;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->from:Landroid/view/View;

    .line 41
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->to:Landroid/view/View;

    .line 45
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->translate:Landroid/view/View;

    .line 49
    new-array p1, v1, [I

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->fromFrame:[I

    .line 53
    new-array p1, v1, [I

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->toFrame:[I

    .line 57
    return-void
    .line 59
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 11
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mIsAnimating:Z

    .line 14
    const/4 p0, 0x0

    .line 16
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 28
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 39
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 42
    iget p1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mCurrentDetailIndex:I

    .line 44
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    check-cast p0, Landroid/view/View;

    .line 50
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 52
    if-eqz p1, :cond_0

    .line 54
    check-cast p0, Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 58
    :cond_0
    return-void

    .line 61
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 62
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mIsAnimating:Z

    .line 65
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    move-result-object p0

    .line 72
    check-cast p0, Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 75
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    move-result-object p0

    .line 83
    check-cast p0, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 86
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 89
    iget p1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mCurrentDetailIndex:I

    .line 91
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p0

    .line 96
    check-cast p0, Landroid/view/View;

    .line 97
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 99
    if-eqz p1, :cond_1

    .line 101
    check-cast p0, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 105
    :cond_1
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 110
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 11
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mIsAnimating:Z

    .line 14
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 16
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 18
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->-$$Nest$smsetViewFrame(Landroid/view/View;[I)V

    .line 20
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 23
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    move-result-object p0

    .line 30
    instance-of p0, p0, Landroid/view/ViewGroup;

    .line 31
    if-eqz p0, :cond_0

    .line 33
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 43
    :cond_0
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 46
    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    move-result-object p0

    .line 53
    instance-of p0, p0, Landroid/view/ViewGroup;

    .line 54
    if-eqz p0, :cond_1

    .line 56
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    move-result-object p0

    .line 63
    check-cast p0, Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 66
    :cond_1
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 69
    iget p1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mCurrentDetailIndex:I

    .line 71
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 76
    check-cast p0, Landroid/view/View;

    .line 77
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 79
    if-eqz p1, :cond_2

    .line 81
    check-cast p0, Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 85
    :cond_2
    return-void

    .line 88
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 89
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mIsAnimating:Z

    .line 92
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 94
    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 98
    move-result-object p0

    .line 101
    instance-of p0, p0, Landroid/view/ViewGroup;

    .line 102
    if-eqz p0, :cond_3

    .line 104
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 108
    move-result-object p0

    .line 111
    check-cast p0, Landroid/view/ViewGroup;

    .line 112
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 114
    :cond_3
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 117
    if-eqz p0, :cond_4

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 121
    move-result-object p0

    .line 124
    instance-of p0, p0, Landroid/view/ViewGroup;

    .line 125
    if-eqz p0, :cond_4

    .line 127
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 131
    move-result-object p0

    .line 134
    check-cast p0, Landroid/view/ViewGroup;

    .line 135
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 137
    :cond_4
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 140
    iget p1, v2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mCurrentDetailIndex:I

    .line 142
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object p0

    .line 147
    check-cast p0, Landroid/view/View;

    .line 148
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 150
    if-eqz p1, :cond_5

    .line 152
    check-cast p0, Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 156
    :cond_5
    const/16 p0, 0x8

    .line 159
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 166
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget v5, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->$r8$classId:I

    .line 6
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->translate:Landroid/view/View;

    .line 8
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 10
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->toFrame:[I

    .line 12
    const-string/jumbo v9, "toBottom"

    .line 14
    const-string/jumbo v10, "toRight"

    .line 17
    const-string/jumbo v11, "toTop"

    .line 20
    const-string/jumbo v12, "toLeft"

    .line 23
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->fromFrame:[I

    .line 26
    const/4 v14, 0x0

    .line 28
    const-string v15, "fromBottom"

    .line 29
    const-string v2, "fromRight"

    .line 31
    const-string v3, "fromTop"

    .line 33
    const-string v4, "fromLeft"

    .line 35
    packed-switch v5, :pswitch_data_0

    .line 37
    goto/16 :goto_1

    .line 40
    :pswitch_0
    invoke-super/range {p0 .. p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 42
    invoke-static {v1, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 45
    move-result-object v4

    .line 48
    invoke-static {v1, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 49
    move-result-object v3

    .line 52
    invoke-static {v1, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 53
    move-result-object v2

    .line 56
    invoke-static {v1, v15}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 57
    move-result-object v5

    .line 60
    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 63
    move-result v4

    .line 66
    float-to-int v4, v4

    .line 67
    aput v4, v13, v14

    .line 68
    :cond_0
    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 72
    move-result v3

    .line 75
    float-to-int v3, v3

    .line 76
    const/4 v4, 0x1

    .line 77
    aput v3, v13, v4

    .line 78
    :cond_1
    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 82
    move-result v2

    .line 85
    float-to-int v2, v2

    .line 86
    const/4 v3, 0x2

    .line 87
    aput v2, v13, v3

    .line 88
    :cond_2
    if-eqz v5, :cond_3

    .line 90
    invoke-virtual {v5}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 92
    move-result v2

    .line 95
    float-to-int v2, v2

    .line 96
    const/4 v3, 0x3

    .line 97
    aput v2, v13, v3

    .line 98
    :cond_3
    invoke-static {v1, v12}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 100
    move-result-object v2

    .line 103
    invoke-static {v1, v11}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 104
    move-result-object v3

    .line 107
    invoke-static {v1, v10}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 108
    move-result-object v4

    .line 111
    invoke-static {v1, v9}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 112
    move-result-object v1

    .line 115
    if-eqz v2, :cond_4

    .line 116
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 118
    move-result v2

    .line 121
    float-to-int v2, v2

    .line 122
    aput v2, v8, v14

    .line 123
    :cond_4
    if-eqz v3, :cond_5

    .line 125
    invoke-virtual {v3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 127
    move-result v2

    .line 130
    float-to-int v2, v2

    .line 131
    const/4 v3, 0x1

    .line 132
    aput v2, v8, v3

    .line 133
    :cond_5
    if-eqz v4, :cond_6

    .line 135
    invoke-virtual {v4}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 137
    move-result v2

    .line 140
    float-to-int v2, v2

    .line 141
    const/4 v3, 0x2

    .line 142
    aput v2, v8, v3

    .line 143
    goto :goto_0

    .line 145
    :cond_6
    const/4 v3, 0x2

    .line 146
    :goto_0
    if-eqz v1, :cond_7

    .line 147
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 149
    move-result v1

    .line 152
    float-to-int v1, v1

    .line 153
    const/4 v2, 0x3

    .line 154
    aput v1, v8, v2

    .line 155
    :cond_7
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->to:Landroid/view/View;

    .line 157
    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->-$$Nest$smsetViewFrame(Landroid/view/View;[I)V

    .line 159
    aget v0, v8, v3

    .line 162
    aget v1, v8, v14

    .line 164
    sub-int/2addr v0, v1

    .line 166
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 167
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 169
    move-result v1

    .line 172
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 173
    sub-int/2addr v0, v1

    .line 175
    div-int/2addr v0, v3

    .line 176
    int-to-float v0, v0

    .line 177
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 178
    if-eqz v6, :cond_8

    .line 181
    aget v0, v13, v3

    .line 183
    aget v1, v13, v14

    .line 185
    sub-int/2addr v0, v1

    .line 187
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 188
    aget v2, v1, v3

    .line 190
    aget v1, v1, v14

    .line 192
    sub-int/2addr v2, v1

    .line 194
    sub-int/2addr v0, v2

    .line 195
    int-to-float v0, v0

    .line 196
    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 197
    const/4 v0, 0x3

    .line 200
    aget v1, v13, v0

    .line 201
    const/4 v2, 0x1

    .line 203
    aget v3, v13, v2

    .line 204
    sub-int/2addr v1, v3

    .line 206
    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 207
    aget v0, v3, v0

    .line 209
    aget v2, v3, v2

    .line 211
    sub-int/2addr v0, v2

    .line 213
    sub-int/2addr v1, v0

    .line 214
    int-to-float v0, v1

    .line 215
    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 216
    :cond_8
    return-void

    .line 219
    :goto_1
    invoke-super/range {p0 .. p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 220
    invoke-static {v1, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 223
    move-result-object v4

    .line 226
    invoke-static {v1, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 227
    move-result-object v3

    .line 230
    invoke-static {v1, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 231
    move-result-object v2

    .line 234
    invoke-static {v1, v15}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 235
    move-result-object v5

    .line 238
    if-eqz v4, :cond_9

    .line 239
    invoke-virtual {v4}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 241
    move-result v4

    .line 244
    float-to-int v4, v4

    .line 245
    aput v4, v13, v14

    .line 246
    :cond_9
    if-eqz v3, :cond_a

    .line 248
    invoke-virtual {v3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 250
    move-result v3

    .line 253
    float-to-int v3, v3

    .line 254
    const/4 v4, 0x1

    .line 255
    aput v3, v13, v4

    .line 256
    :cond_a
    if-eqz v2, :cond_b

    .line 258
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 260
    move-result v2

    .line 263
    float-to-int v2, v2

    .line 264
    const/4 v3, 0x2

    .line 265
    aput v2, v13, v3

    .line 266
    :cond_b
    if-eqz v5, :cond_c

    .line 268
    invoke-virtual {v5}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 270
    move-result v2

    .line 273
    float-to-int v2, v2

    .line 274
    const/4 v3, 0x3

    .line 275
    aput v2, v13, v3

    .line 276
    :cond_c
    invoke-static {v1, v12}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 278
    move-result-object v2

    .line 281
    invoke-static {v1, v11}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 282
    move-result-object v3

    .line 285
    invoke-static {v1, v10}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 286
    move-result-object v4

    .line 289
    invoke-static {v1, v9}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 290
    move-result-object v1

    .line 293
    if-eqz v2, :cond_d

    .line 294
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 296
    move-result v2

    .line 299
    float-to-int v2, v2

    .line 300
    aput v2, v8, v14

    .line 301
    :cond_d
    if-eqz v3, :cond_e

    .line 303
    invoke-virtual {v3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 305
    move-result v2

    .line 308
    float-to-int v2, v2

    .line 309
    const/4 v3, 0x1

    .line 310
    aput v2, v8, v3

    .line 311
    :cond_e
    if-eqz v4, :cond_f

    .line 313
    invoke-virtual {v4}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 315
    move-result v2

    .line 318
    float-to-int v2, v2

    .line 319
    const/4 v3, 0x2

    .line 320
    aput v2, v8, v3

    .line 321
    goto :goto_2

    .line 323
    :cond_f
    const/4 v3, 0x2

    .line 324
    :goto_2
    if-eqz v1, :cond_10

    .line 325
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 327
    move-result v1

    .line 330
    float-to-int v1, v1

    .line 331
    const/4 v2, 0x3

    .line 332
    aput v1, v8, v2

    .line 333
    :cond_10
    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->-$$Nest$smsetViewFrame(Landroid/view/View;[I)V

    .line 335
    aget v1, v8, v3

    .line 338
    aget v2, v8, v14

    .line 340
    sub-int/2addr v1, v2

    .line 342
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 343
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 345
    move-result v2

    .line 348
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 349
    sub-int/2addr v1, v2

    .line 351
    div-int/2addr v1, v3

    .line 352
    int-to-float v1, v1

    .line 353
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 354
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;->from:Landroid/view/View;

    .line 357
    if-eqz v0, :cond_11

    .line 359
    aget v1, v13, v3

    .line 361
    aget v2, v13, v14

    .line 363
    sub-int/2addr v1, v2

    .line 365
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 366
    aget v3, v2, v3

    .line 368
    aget v2, v2, v14

    .line 370
    sub-int/2addr v3, v2

    .line 372
    sub-int/2addr v1, v3

    .line 373
    int-to-float v1, v1

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 375
    const/4 v1, 0x3

    .line 378
    aget v2, v13, v1

    .line 379
    const/4 v3, 0x1

    .line 381
    aget v4, v13, v3

    .line 382
    sub-int/2addr v2, v4

    .line 384
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 385
    aget v1, v4, v1

    .line 387
    aget v3, v4, v3

    .line 389
    sub-int/2addr v1, v3

    .line 391
    sub-int/2addr v2, v1

    .line 392
    int-to-float v1, v2

    .line 393
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 394
    :cond_11
    return-void

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 398
.end method
