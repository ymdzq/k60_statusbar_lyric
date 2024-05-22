.class public final Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $f:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;->$f:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;->$f:Ljava/lang/Object;

    .line 8
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 10
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;->$f:Ljava/lang/Object;

    .line 16
    check-cast v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    .line 18
    iget-boolean v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    .line 20
    if-eqz v1, :cond_1

    .line 22
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    .line 25
    iget-object v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    iget-object v0, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->cancelSubscription(Landroid/service/controls/IControlsSubscription;)V

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;->$f:Ljava/lang/Object;

    .line 36
    check-cast p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    .line 38
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    .line 41
    :cond_1
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method
