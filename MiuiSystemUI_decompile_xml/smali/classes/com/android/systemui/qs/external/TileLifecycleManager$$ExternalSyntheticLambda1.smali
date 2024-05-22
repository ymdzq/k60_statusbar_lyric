.class public final synthetic Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/external/TileLifecycleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 16
    return-void

    .line 19
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 30
    :cond_0
    return-void

    .line 33
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 36
    return-void

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 56
    :cond_1
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
