.class public final Lcom/android/systemui/dump/DumpsysTableLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final columns:Ljava/util/List;

.field public final rows:Ljava/util/List;

.field public final sectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dump/DumpsysTableLogger;->sectionName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dump/DumpsysTableLogger;->columns:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dump/DumpsysTableLogger;->rows:Ljava/util/List;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final printTableData(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SystemUI TableSection START: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/dump/DumpsysTableLogger;->sectionName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "version 1"

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/android/systemui/dump/DumpsysTableLogger;->columns:Ljava/util/List;

    .line 27
    const-string/jumbo v3, "|"

    .line 29
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/16 v7, 0x3e

    .line 35
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/dump/DumpsysTableLogger;->columns:Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    move-result v0

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/dump/DumpsysTableLogger;->rows:Ljava/util/List;

    .line 55
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p0

    .line 60
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 70
    move-object v4, v3

    .line 71
    check-cast v4, Ljava/util/List;

    .line 72
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 74
    move-result v4

    .line 77
    if-ne v4, v0, :cond_1

    .line 78
    const/4 v4, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v4, 0x0

    .line 82
    :goto_1
    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p0

    .line 92
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    move-object v2, v0

    .line 103
    check-cast v2, Ljava/util/List;

    .line 104
    const-string/jumbo v3, "|"

    .line 106
    const/4 v4, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/16 v7, 0x3e

    .line 112
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    goto :goto_2

    .line 121
    :cond_3
    const-string p0, "SystemUI TableSection END: "

    .line 122
    invoke-static {p0, v1, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 124
    return-void
    .line 127
.end method
