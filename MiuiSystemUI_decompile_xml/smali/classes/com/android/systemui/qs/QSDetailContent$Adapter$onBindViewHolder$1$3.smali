.class public final Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $item:Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailContent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailContent$SelectableItem;Lcom/android/systemui/qs/QSDetailContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;->$item:Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;->$item:Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 4
    const-string v1, "QSDetailContent"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-boolean p1, p1, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->clickToDisconnect:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const-string p1, "onDetailItemDisconnect"

    .line 14
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 19
    invoke-static {p1}, Lcom/android/systemui/qs/QSDetailContent;->access$getCallback$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/qs/QSDetailContent$Callback;

    .line 21
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;->$item:Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 27
    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSDetailContent$Callback;->onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailContent$SelectableItem;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "onDetailItemClick"

    .line 33
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 38
    invoke-static {p1}, Lcom/android/systemui/qs/QSDetailContent;->access$getCallback$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/qs/QSDetailContent$Callback;

    .line 40
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;->$item:Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 46
    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSDetailContent$Callback;->onDetailItemClick(Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 48
    :cond_1
    :goto_0
    return-void
    .line 51
.end method
