.class public final Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $invalidFromStates:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$4;->$invalidFromStates:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$4;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 4
    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$4;->$r8$classId:I

    .line 6
    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$4;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$4;->$invalidFromStates:Ljava/lang/Object;

    .line 10
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    goto :goto_1

    .line 17
    :pswitch_0
    check-cast p1, Lkotlin/Triple;

    .line 18
    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result v1

    .line 29
    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 34
    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 40
    if-ne p1, v0, :cond_0

    .line 42
    move p1, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p1, v3

    .line 46
    :goto_0
    iget-object v6, v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 47
    if-ne v6, v0, :cond_1

    .line 49
    check-cast p0, Ljava/util/Set;

    .line 51
    iget-object v0, v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 53
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    move v3, v4

    .line 61
    :cond_1
    if-eqz v1, :cond_3

    .line 62
    if-nez p1, :cond_2

    .line 64
    if-eqz v3, :cond_3

    .line 66
    :cond_2
    iget-object p0, v2, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 68
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DREAMING_DURATION:J

    .line 70
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->getAnimator-LRDsOJo(J)Landroid/animation/ValueAnimator;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    :cond_3
    return-object p2

    .line 78
    :goto_1
    check-cast p1, Lcom/android/systemui/util/kotlin/Quad;

    .line 79
    iget-object v1, p1, Lcom/android/systemui/util/kotlin/Quad;->first:Ljava/lang/Object;

    .line 81
    check-cast v1, Lcom/android/systemui/shade/domain/model/ShadeModel;

    .line 83
    iget-object v5, p1, Lcom/android/systemui/util/kotlin/Quad;->second:Ljava/lang/Object;

    .line 85
    check-cast v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 87
    iget-object v6, p1, Lcom/android/systemui/util/kotlin/Quad;->third:Ljava/lang/Object;

    .line 89
    check-cast v6, Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    .line 91
    iget-object p1, p1, Lcom/android/systemui/util/kotlin/Quad;->fourth:Ljava/lang/Object;

    .line 93
    check-cast p1, Ljava/lang/Boolean;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    move-result p1

    .line 100
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 101
    iget-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 103
    check-cast v7, Ljava/util/UUID;

    .line 105
    sget-object v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 107
    const/4 v9, 0x0

    .line 109
    if-eqz v7, :cond_b

    .line 110
    iget-object p1, v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 112
    if-ne p1, v8, :cond_c

    .line 114
    iget p1, v1, Lcom/android/systemui/shade/domain/model/ShadeModel;->expansionAmount:F

    .line 116
    const/4 v0, 0x0

    .line 118
    cmpg-float v0, p1, v0

    .line 119
    if-nez v0, :cond_4

    .line 121
    move v0, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move v0, v3

    .line 125
    :goto_2
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/TransitionState;->CANCELED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 126
    sget-object v5, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 128
    const/high16 v6, 0x3f800000    # 1.0f

    .line 130
    if-eqz v0, :cond_5

    .line 132
    move-object v0, v5

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    cmpg-float v0, p1, v6

    .line 136
    if-nez v0, :cond_6

    .line 138
    move v0, v4

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move v0, v3

    .line 142
    :goto_3
    if-eqz v0, :cond_7

    .line 143
    move-object v0, v1

    .line 145
    goto :goto_4

    .line 146
    :cond_7
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/TransitionState;->RUNNING:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 147
    :goto_4
    iget-object v8, v2, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 149
    sub-float/2addr v6, p1

    .line 151
    check-cast v8, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    .line 152
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    move-result p1

    .line 160
    if-nez p1, :cond_8

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    const-string v4, "Attempting to update with old/invalid transitionId: "

    .line 165
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 176
    const-string v4, "KeyguardTransitionRepository"

    .line 177
    invoke-static {v4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    goto :goto_5

    .line 182
    :cond_8
    iget-object p1, v8, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastStep:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 183
    const/16 v7, 0x13

    .line 185
    invoke-static {p1, v6, v0, v7}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->copy$default(Lcom/android/systemui/keyguard/shared/model/TransitionStep;FLcom/android/systemui/keyguard/shared/model/TransitionState;I)Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 187
    move-result-object p1

    .line 190
    invoke-virtual {v8, p1, v4}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->emitTransition(Lcom/android/systemui/keyguard/shared/model/TransitionStep;Z)V

    .line 191
    :goto_5
    if-eq v0, v1, :cond_9

    .line 194
    if-ne v0, v5, :cond_a

    .line 196
    :cond_9
    iput-object v9, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 198
    :cond_a
    if-ne v0, v1, :cond_c

    .line 200
    sget p0, Lkotlin/time/Duration;->$r8$clinit:I

    .line 202
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 204
    invoke-static {v3, p0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 206
    move-result-wide p0

    .line 209
    invoke-virtual {v2, p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->getAnimator-LRDsOJo(J)Landroid/animation/ValueAnimator;

    .line 210
    iget-object p0, v2, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    goto :goto_6

    .line 218
    :cond_b
    iget-object v3, v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 219
    if-ne v3, v0, :cond_c

    .line 221
    iget-boolean v0, v1, Lcom/android/systemui/shade/domain/model/ShadeModel;->isUserDragging:Z

    .line 223
    if-eqz v0, :cond_c

    .line 225
    if-nez p1, :cond_c

    .line 227
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->KEYGUARD:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    .line 229
    if-ne v6, p1, :cond_c

    .line 231
    iget-object p1, v2, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object v9, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 238
    :cond_c
    :goto_6
    return-object p2

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 242
.end method
