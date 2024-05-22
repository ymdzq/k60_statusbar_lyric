.class final Lkotlin/collections/AbstractCollection$toString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lkotlin/collections/AbstractCollection;


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractCollection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/collections/AbstractCollection$toString$1;->this$0:Lkotlin/collections/AbstractCollection;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/AbstractCollection$toString$1;->this$0:Lkotlin/collections/AbstractCollection;

    .line 2
    if-ne p1, p0, :cond_0

    .line 4
    const-string p0, "(this Collection)"

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
    .line 13
.end method
