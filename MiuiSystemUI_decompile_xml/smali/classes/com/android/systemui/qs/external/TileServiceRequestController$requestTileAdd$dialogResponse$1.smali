.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;

.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceRequestController;Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/logging/InstanceId;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$componentName:Landroid/content/ComponentName;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$packageName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$callback:Ljava/util/function/Consumer;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$componentName:Landroid/content/ComponentName;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 15
    const/4 v3, 0x1

    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/qs/QSHost;->addTile(Landroid/content/ComponentName;Z)V

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 21
    const/4 v2, 0x0

    .line 23
    iput-object v2, v1, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCanceller:Lkotlin/jvm/functions/Function1;

    .line 24
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$packageName:Ljava/lang/String;

    .line 26
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    .line 28
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    if-eqz p1, :cond_3

    .line 35
    if-eq p1, v0, :cond_2

    .line 37
    const/4 v0, 0x3

    .line 39
    if-ne p1, v0, :cond_1

    .line 40
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_DISMISSED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string v0, "User response not valid: "

    .line 47
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 56
    :cond_2
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_NOT_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    .line 60
    :goto_0
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 62
    const/4 v4, 0x0

    .line 64
    invoke-interface {v1, v0, v4, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$callback:Ljava/util/function/Consumer;

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p1

    .line 73
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 74
    return-void
    .line 77
.end method
