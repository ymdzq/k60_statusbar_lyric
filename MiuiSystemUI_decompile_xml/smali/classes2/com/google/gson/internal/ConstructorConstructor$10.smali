.class public final Lcom/google/gson/internal/ConstructorConstructor$10;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/gson/internal/ConstructorConstructor$10;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/gson/internal/ConstructorConstructor$10;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 8
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    return-object p0

    .line 13
    :pswitch_1
    new-instance p0, Ljava/util/TreeMap;

    .line 14
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 16
    return-object p0

    .line 19
    :pswitch_2
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    return-object p0

    .line 25
    :pswitch_3
    new-instance p0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 26
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 28
    return-object p0

    .line 31
    :pswitch_4
    new-instance p0, Ljava/util/ArrayList;

    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    return-object p0

    .line 37
    :pswitch_5
    new-instance p0, Ljava/util/ArrayDeque;

    .line 38
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 40
    return-object p0

    .line 43
    :pswitch_6
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 44
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 46
    return-object p0

    .line 49
    :pswitch_7
    new-instance p0, Ljava/util/TreeSet;

    .line 50
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 52
    return-object p0

    .line 55
    :goto_0
    new-instance p0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 56
    invoke-direct {p0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 58
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 62
.end method
