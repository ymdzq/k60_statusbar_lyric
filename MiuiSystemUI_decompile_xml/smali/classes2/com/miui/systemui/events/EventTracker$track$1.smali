.class final Lcom/miui/systemui/events/EventTracker$track$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $event:Ljava/lang/Object;

.field final synthetic this$0:Lcom/miui/systemui/events/EventTracker;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/miui/systemui/events/EventTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/events/EventTracker$track$1;->$event:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/events/EventTracker$track$1;->this$0:Lcom/miui/systemui/events/EventTracker;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/EventTracker$track$1;->$event:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-class v1, Lcom/miui/systemui/events/EventModule;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/miui/systemui/events/EventModule;

    .line 14
    const-class v2, Lcom/miui/systemui/events/EventID;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lcom/miui/systemui/events/EventID;

    .line 22
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 24
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 29
    move-result-object v0

    .line 32
    iget-object v4, p0, Lcom/miui/systemui/events/EventTracker$track$1;->$event:Ljava/lang/Object;

    .line 33
    array-length v5, v0

    .line 35
    const/4 v6, 0x0

    .line 36
    :goto_0
    const/4 v7, 0x0

    .line 37
    if-ge v6, v5, :cond_2

    .line 38
    aget-object v8, v0, v6

    .line 40
    const/4 v9, 0x1

    .line 42
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    const-class v9, Lcom/miui/systemui/events/EventKey;

    .line 46
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 48
    move-result-object v9

    .line 51
    check-cast v9, Lcom/miui/systemui/events/EventKey;

    .line 52
    if-eqz v9, :cond_0

    .line 54
    invoke-interface {v9}, Lcom/miui/systemui/events/EventKey;->key()Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 59
    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v8

    .line 63
    if-eqz v7, :cond_1

    .line 64
    if-eqz v8, :cond_1

    .line 66
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lcom/miui/systemui/events/EventTracker;->Companion:Lcom/miui/systemui/events/EventTracker$Companion;

    .line 74
    invoke-virtual {v0}, Lcom/miui/systemui/events/EventTracker$Companion;->getDEBUG()Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    if-eqz v2, :cond_3

    .line 82
    invoke-interface {v2}, Lcom/miui/systemui/events/EventID;->id()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move-object v0, v7

    .line 89
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v5, "track "

    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, " "

    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    const-string v4, "EventTracker"

    .line 113
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_4
    if-eqz v1, :cond_5

    .line 118
    invoke-interface {v1}, Lcom/miui/systemui/events/EventModule;->value()Lcom/miui/systemui/events/EventModuleTarget;

    .line 120
    move-result-object v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    iget-object p0, p0, Lcom/miui/systemui/events/EventTracker$track$1;->this$0:Lcom/miui/systemui/events/EventTracker;

    .line 126
    invoke-static {p0}, Lcom/miui/systemui/events/EventTracker;->access$getTrackers$p(Lcom/miui/systemui/events/EventTracker;)Landroid/util/SparseArray;

    .line 128
    move-result-object p0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 132
    move-result v0

    .line 135
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object p0

    .line 139
    move-object v7, p0

    .line 140
    check-cast v7, Lcom/miui/interfaces/IEventTracker$Tracker;

    .line 141
    :cond_5
    if-eqz v7, :cond_6

    .line 143
    if-eqz v2, :cond_6

    .line 145
    invoke-interface {v2}, Lcom/miui/systemui/events/EventID;->id()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 150
    invoke-interface {v7, p0, v3}, Lcom/miui/interfaces/IEventTracker$Tracker;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    :cond_6
    return-void
    .line 154
.end method
