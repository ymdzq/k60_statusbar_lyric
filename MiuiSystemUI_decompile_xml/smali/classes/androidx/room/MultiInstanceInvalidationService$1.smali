.class public final Landroidx/room/MultiInstanceInvalidationService$1;
.super Landroid/os/RemoteCallbackList;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 2
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 2
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 4
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    .line 6
    check-cast p2, Ljava/lang/Integer;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
    .line 21
.end method
