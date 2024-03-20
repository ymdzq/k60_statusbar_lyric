.class public final synthetic Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/view/MotionEvent;

    .line 10
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    .line 12
    iget-object p1, p1, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingClassifier;

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/FalsingClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 20
    check-cast p0, Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 22
    check-cast p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->size()I

    .line 28
    move-result v0

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->mMotionEvents:Ljava/util/List;

    .line 34
    check-cast p0, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Landroid/view/MotionEvent;

    .line 42
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 44
    move-result-wide v0

    .line 47
    iget-object p0, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    .line 48
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 52
    iget-object v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 54
    if-eqz p1, :cond_2

    .line 56
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 58
    move-result-object p1

    .line 61
    new-instance v4, Lcom/android/systemui/classifier/BrightLineFalsingManager$3$$ExternalSyntheticLambda0;

    .line 62
    invoke-direct {v4}, Lcom/android/systemui/classifier/BrightLineFalsingManager$3$$ExternalSyntheticLambda0;-><init>()V

    .line 64
    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 67
    move-result p1

    .line 70
    iget-object v4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 71
    new-instance v5, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    .line 73
    const/4 v6, 0x5

    .line 75
    invoke-direct {v5, v6}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 76
    invoke-interface {v4, v5}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 79
    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    .line 82
    if-nez v4, :cond_0

    .line 84
    sget-boolean v4, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 86
    if-eqz v4, :cond_1

    .line 88
    :cond_0
    sget-object v4, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    .line 90
    new-instance v5, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;

    .line 92
    iget v6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    .line 94
    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 96
    move-result-object v3

    .line 99
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 100
    move-result-object v3

    .line 103
    new-instance v7, Lcom/android/systemui/classifier/BrightLineFalsingManager$3$$ExternalSyntheticLambda1;

    .line 104
    invoke-direct {v7}, Lcom/android/systemui/classifier/BrightLineFalsingManager$3$$ExternalSyntheticLambda1;-><init>()V

    .line 106
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 109
    move-result-object v3

    .line 112
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 113
    move-result-object v7

    .line 116
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 117
    move-result-object v3

    .line 120
    check-cast v3, Ljava/util/List;

    .line 121
    invoke-direct {v5, v6, v3, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;-><init>(ILjava/util/List;Z)V

    .line 123
    check-cast v4, Ljava/util/ArrayDeque;

    .line 126
    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_1
    sget-object p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    .line 131
    check-cast p1, Ljava/util/ArrayDeque;

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 135
    move-result v3

    .line 138
    const/16 v4, 0x28

    .line 139
    if-le v3, v4, :cond_1

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 143
    goto :goto_1

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 147
    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    .line 149
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 153
    const/4 p1, 0x7

    .line 155
    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    .line 156
    goto :goto_3

    .line 158
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 159
    move-result-object p1

    .line 162
    const-wide/16 v3, 0x0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 165
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 167
    move-result-object p0

    .line 170
    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 171
    if-eqz p0, :cond_3

    .line 173
    const-wide p0, 0x3fe6666666666666L    # 0.7

    .line 175
    goto :goto_2

    .line 180
    :cond_3
    const-wide p0, 0x3fe999999999999aL    # 0.8

    .line 181
    :goto_2
    move-wide v5, p0

    .line 186
    const-class p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 189
    move-result-object v7

    .line 192
    const-string/jumbo v8, "unclassified"

    .line 193
    new-instance p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 196
    const/4 v4, 0x1

    .line 198
    move-object v3, p0

    .line 199
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 203
    move-result-object p0

    .line 206
    invoke-virtual {v2, p0, v0, v1}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    .line 207
    :goto_3
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 212
.end method
