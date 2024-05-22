.class public final Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$3;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onComplicationsChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$3;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->getComplications()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dreamMediaComplicationActive:Z

    .line 35
    if-eqz v0, :cond_2

    .line 37
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dreamMediaComplicationActive:Z

    .line 40
    const/4 v0, 0x2

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public final onStateChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$3;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    .line 6
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dreamOverlayActive:Z

    .line 10
    if-eq v1, v0, :cond_0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dreamOverlayActive:Z

    .line 14
    const/4 v0, 0x2

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method
