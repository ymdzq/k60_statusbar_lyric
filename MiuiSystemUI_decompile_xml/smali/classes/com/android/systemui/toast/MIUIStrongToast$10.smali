.class public final Lcom/android/systemui/toast/MIUIStrongToast$10;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToast;

.field public final synthetic val$finalRight:F

.field public final synthetic val$startRight:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;FFI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->val$startRight:F

    .line 6
    iput p3, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->val$finalRight:F

    .line 8
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 11
    iput-boolean v1, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    .line 14
    invoke-static {v2}, Lcom/android/systemui/toast/MIUIStrongToast;->-$$Nest$mstartAnimationComplete(Lcom/android/systemui/toast/MIUIStrongToast;)V

    .line 16
    return-void

    .line 19
    :pswitch_1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 20
    iput-boolean v1, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 23
    invoke-static {v2}, Lcom/android/systemui/toast/MIUIStrongToast;->-$$Nest$mstartAnimationComplete(Lcom/android/systemui/toast/MIUIStrongToast;)V

    .line 25
    return-void

    .line 28
    :pswitch_2
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 29
    iput-boolean v1, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    .line 32
    invoke-static {v2}, Lcom/android/systemui/toast/MIUIStrongToast;->-$$Nest$mstartAnimationComplete(Lcom/android/systemui/toast/MIUIStrongToast;)V

    .line 34
    return-void

    .line 37
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 38
    iput-boolean v1, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 41
    invoke-static {v2}, Lcom/android/systemui/toast/MIUIStrongToast;->-$$Nest$mstartAnimationComplete(Lcom/android/systemui/toast/MIUIStrongToast;)V

    .line 43
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 48
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->val$finalRight:F

    .line 5
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 8
    iget v5, p0, Lcom/android/systemui/toast/MIUIStrongToast$10;->val$startRight:F

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 12
    goto :goto_3

    .line 15
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 16
    sget-object p0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 19
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 21
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 27
    move-result p0

    .line 30
    cmpl-float p1, p0, v5

    .line 31
    if-lez p1, :cond_0

    .line 33
    cmpg-float p0, p0, v2

    .line 35
    if-gez p0, :cond_0

    .line 37
    iput-boolean v1, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    iput-boolean v3, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 44
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 45
    sget-object p0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 48
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 50
    move-result-object p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 56
    move-result p0

    .line 59
    cmpl-float p1, p0, v5

    .line 60
    if-lez p1, :cond_2

    .line 62
    cmpg-float p0, p0, v2

    .line 64
    if-gez p0, :cond_2

    .line 66
    iput-boolean v1, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 68
    goto :goto_1

    .line 70
    :cond_2
    iput-boolean v3, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 71
    :cond_3
    :goto_1
    return-void

    .line 73
    :pswitch_2
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 74
    sget-object p0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 77
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 79
    move-result-object p0

    .line 82
    if-eqz p0, :cond_5

    .line 83
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 85
    move-result p0

    .line 88
    cmpl-float p1, p0, v5

    .line 89
    if-lez p1, :cond_4

    .line 91
    cmpg-float p0, p0, v2

    .line 93
    if-gez p0, :cond_4

    .line 95
    iput-boolean v1, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    .line 97
    goto :goto_2

    .line 99
    :cond_4
    iput-boolean v3, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    .line 100
    :cond_5
    :goto_2
    return-void

    .line 102
    :goto_3
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 103
    sget-object p0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 106
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 108
    move-result-object p0

    .line 111
    if-eqz p0, :cond_7

    .line 112
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 114
    move-result p0

    .line 117
    cmpl-float p1, p0, v5

    .line 118
    if-lez p1, :cond_6

    .line 120
    cmpg-float p0, p0, v2

    .line 122
    if-gez p0, :cond_6

    .line 124
    iput-boolean v1, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 126
    goto :goto_4

    .line 128
    :cond_6
    iput-boolean v3, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 129
    :cond_7
    :goto_4
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method
