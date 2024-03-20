.class public final Lcom/miui/systemui/CloudDataManager$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/CloudDataManager;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/CloudDataManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/CloudDataManager$1;->this$0:Lcom/miui/systemui/CloudDataManager;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/CloudDataManager$1;->this$0:Lcom/miui/systemui/CloudDataManager;

    .line 2
    iget-object p0, p0, Lcom/miui/systemui/CloudDataManager;->listeners:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lcom/miui/systemui/CloudDataListener;

    .line 22
    invoke-interface {p1}, Lcom/miui/systemui/CloudDataListener;->onCloudDataUpdate()V

    .line 24
    const/4 p1, 0x1

    .line 27
    sput-boolean p1, Lcom/miui/systemui/CloudDataManager;->cloudDataUpdated:Z

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    return-void
    .line 31
.end method
