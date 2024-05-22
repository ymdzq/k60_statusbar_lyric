.class public final synthetic Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

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
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_2

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 12
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 25
    :goto_0
    return-void

    .line 28
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 31
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 42
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 44
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 46
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    .line 49
    if-nez v0, :cond_2

    .line 51
    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 57
    :goto_1
    return-void

    .line 60
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 61
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 65
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 67
    return-void

    .line 70
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 73
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 75
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
