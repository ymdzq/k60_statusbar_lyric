.class public final synthetic Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationHostViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationHostViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/Collection;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    .line 6
    sget-boolean v1, Lcom/android/systemui/complication/ComplicationHostViewController;->DEBUG:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "updateComplications called. Callers = "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    const/16 v2, 0x19

    .line 20
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    const-string v2, "ComplicationHostVwCtrl"

    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    const-string v3, "    mComplications = "

    .line 40
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "    complications = "

    .line 61
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 76
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 80
    move-result-object v1

    .line 83
    new-instance v2, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda1;

    .line 84
    invoke-direct {v2}, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda1;-><init>()V

    .line 86
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 89
    move-result-object v1

    .line 92
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 93
    move-result-object v2

    .line 96
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/Collection;

    .line 101
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 103
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 107
    move-result-object v0

    .line 110
    new-instance v2, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;

    .line 111
    const/4 v3, 0x0

    .line 113
    invoke-direct {v2, v3, v1}, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 114
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 117
    move-result-object v0

    .line 120
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 121
    move-result-object v1

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 128
    check-cast v0, Ljava/util/Collection;

    .line 129
    new-instance v1, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;

    .line 131
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/complication/ComplicationHostViewController;I)V

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 136
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 139
    move-result-object p1

    .line 142
    new-instance v0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;

    .line 143
    const/4 v1, 0x1

    .line 145
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 146
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 149
    move-result-object p1

    .line 152
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 153
    move-result-object v0

    .line 156
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 157
    move-result-object p1

    .line 160
    check-cast p1, Ljava/util/Collection;

    .line 161
    new-instance v0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;

    .line 163
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/complication/ComplicationHostViewController;I)V

    .line 165
    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 168
    return-void
    .line 171
.end method
