.class final Lkotlin/sequences/SequencesKt___SequencesKt$zip$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$zip$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$zip$1;

    .line 2
    invoke-direct {v0}, Lkotlin/sequences/SequencesKt___SequencesKt$zip$1;-><init>()V

    .line 4
    sput-object v0, Lkotlin/sequences/SequencesKt___SequencesKt$zip$1;->INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$zip$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lkotlin/Pair;

    .line 2
    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    return-object p0
    .line 7
.end method
