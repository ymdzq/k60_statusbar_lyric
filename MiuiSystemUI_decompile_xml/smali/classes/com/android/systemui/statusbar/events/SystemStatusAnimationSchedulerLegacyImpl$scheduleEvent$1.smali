.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 13
    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 40
    invoke-interface {v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemEventAnimationBegin()Landroidx/core/animation/Animator;

    .line 42
    move-result-object v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 52
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->onSystemEventAnimationBegin()Landroidx/core/animation/Animator;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Landroidx/core/animation/AnimatorSet;

    .line 61
    invoke-direct {v2}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 63
    invoke-virtual {v2, v0}, Landroidx/core/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 66
    invoke-virtual {v2}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    .line 69
    move-result-wide v3

    .line 72
    const-wide/16 v5, 0x1f4

    .line 73
    cmp-long v0, v3, v5

    .line 75
    if-gtz v0, :cond_2

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;

    .line 79
    const/4 v3, 0x0

    .line 81
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;I)V

    .line 82
    invoke-virtual {v2, v0}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 85
    invoke-virtual {v2}, Landroidx/core/animation/AnimatorSet;->start()V

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;

    .line 91
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;I)V

    .line 93
    const-wide/16 v1, 0xbb8

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 98
    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 100
    return-void

    .line 103
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 104
    invoke-virtual {v2}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    .line 106
    move-result-wide v0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    const-string v3, "System animation total length exceeds budget. Expected: 500, actual: "

    .line 112
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v3, v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 138
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object v3

    .line 143
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v4

    .line 147
    if-eqz v4, :cond_4

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object v4

    .line 153
    check-cast v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 154
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 156
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemEventAnimationFinish(Z)Landroidx/core/animation/Animator;

    .line 158
    move-result-object v4

    .line 161
    if-eqz v4, :cond_3

    .line 162
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    goto :goto_2

    .line 167
    :cond_4
    iget-object v3, v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 168
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 170
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->onSystemEventAnimationFinish(Z)Landroidx/core/animation/Animator;

    .line 172
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 179
    if-eqz v3, :cond_5

    .line 181
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->notifyTransitionToPersistentDot()Landroidx/core/animation/AnimatorSet;

    .line 183
    move-result-object v0

    .line 186
    if-eqz v0, :cond_5

    .line 187
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_5
    new-instance v0, Landroidx/core/animation/AnimatorSet;

    .line 192
    invoke-direct {v0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 194
    invoke-virtual {v0, v2}, Landroidx/core/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 200
    const/4 v3, 0x4

    .line 202
    iput v3, v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 203
    new-instance v3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;

    .line 205
    invoke-direct {v3, v2, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;I)V

    .line 207
    invoke-virtual {v0, v3}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 210
    invoke-virtual {v0}, Landroidx/core/animation/AnimatorSet;->start()V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 216
    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 219
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 222
.end method
