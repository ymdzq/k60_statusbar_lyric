.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 8
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 39
    return-void

    .line 42
    :goto_1
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 43
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 45
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 47
    if-ne v1, p0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 51
    :cond_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method
