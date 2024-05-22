.class public final synthetic Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 6
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v1, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->dumpInProgress:Z

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 15
    iget-object v1, v1, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 17
    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 19
    iget-object v0, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 24
    invoke-interface {v0, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 26
    return-void
    .line 29
.end method
