.class final Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    .line 6
    return-object v0
    .line 9
.end method
