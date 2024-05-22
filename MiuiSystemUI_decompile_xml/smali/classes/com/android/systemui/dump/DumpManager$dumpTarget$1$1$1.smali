.class final Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $args:[Ljava/lang/String;

.field final synthetic $it:Lcom/android/systemui/dump/RegisteredDumpable;

.field final synthetic $pw:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/systemui/dump/DumpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$it:Lcom/android/systemui/dump/RegisteredDumpable;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$pw:Ljava/io/PrintWriter;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$args:[Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$it:Lcom/android/systemui/dump/RegisteredDumpable;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$pw:Ljava/io/PrintWriter;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$args:[Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v1, v2, p0}, Lcom/android/systemui/dump/DumpManager;->dumpDumpable(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    return-object p0
    .line 18
.end method
