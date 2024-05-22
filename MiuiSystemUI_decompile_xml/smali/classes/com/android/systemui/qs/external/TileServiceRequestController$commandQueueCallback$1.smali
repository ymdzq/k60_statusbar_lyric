.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final cancelRequestAddTile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCanceller:Lkotlin/jvm/functions/Function1;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 2
    new-instance v5, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;

    .line 4
    invoke-direct {v5, p5}, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;-><init>(Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 6
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/external/TileServiceRequestController;->requestTileAdd$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 13
    return-void
    .line 16
.end method
