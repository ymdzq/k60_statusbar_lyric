.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 9
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    const-string p2, "Malformed componentName "

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    const-string p1, "TileServiceRequestController"

    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    .line 39
    const/4 p0, 0x1

    .line 41
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    move-object v3, p0

    .line 46
    check-cast v3, Ljava/lang/CharSequence;

    .line 47
    const/4 p0, 0x2

    .line 49
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 53
    move-object v4, p0

    .line 54
    check-cast v4, Ljava/lang/CharSequence;

    .line 55
    const/4 v5, 0x0

    .line 57
    sget-object v6, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;->INSTANCE:Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;

    .line 58
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/qs/external/TileServiceRequestController;->requestTileAdd$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 60
    return-void
    .line 63
.end method
