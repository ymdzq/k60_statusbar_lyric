.class final Lcom/android/systemui/media/controls/ui/MediaHost$init$3;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $location:I

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaHost;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$3;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 2
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$3;->$location:I

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$3;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

    .line 4
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$3;->$location:I

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-wide/16 v2, 0x1000

    .line 11
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 13
    move-result v4

    .line 16
    iget-object v5, v1, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    .line 17
    iget-object v6, v1, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->controllers:Ljava/util/Set;

    .line 19
    iget-object v7, v1, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 23
    if-eqz v4, :cond_2

    .line 25
    const-string v4, "MediaHostStatesManager#updateHostState"

    .line 27
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v4

    .line 35
    move-object v8, v7

    .line 36
    check-cast v8, Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 43
    invoke-virtual {v0, v4}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 51
    move-result-object v4

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v8

    .line 58
    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 62
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 78
    check-cast v1, Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 79
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/MediaViewController;->stateCallback:Lcom/android/systemui/media/controls/ui/MediaViewController$stateCallback$1;

    .line 81
    invoke-virtual {v1, p0, v4}, Lcom/android/systemui/media/controls/ui/MediaViewController$stateCallback$1;->onHostStateChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v0

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 100
    check-cast v1, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager$Callback;

    .line 101
    invoke-interface {v1, p0, v4}, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager$Callback;->onHostStateChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 107
    goto :goto_4

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    throw p0

    .line 115
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v2

    .line 119
    move-object v3, v7

    .line 120
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 121
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v2

    .line 126
    check-cast v2, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 127
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v2

    .line 132
    if-nez v2, :cond_4

    .line 133
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 135
    move-result-object v2

    .line 138
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v3

    .line 142
    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 146
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v0

    .line 152
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v1

    .line 156
    if-eqz v1, :cond_3

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 162
    check-cast v1, Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 163
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/MediaViewController;->stateCallback:Lcom/android/systemui/media/controls/ui/MediaViewController$stateCallback$1;

    .line 165
    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/media/controls/ui/MediaViewController$stateCallback$1;->onHostStateChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;)V

    .line 167
    goto :goto_2

    .line 170
    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object v0

    .line 174
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v1

    .line 184
    check-cast v1, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager$Callback;

    .line 185
    invoke-interface {v1, p0, v2}, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager$Callback;->onHostStateChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;)V

    .line 187
    goto :goto_3

    .line 190
    :cond_4
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 191
    return-object p0
    .line 193
.end method
