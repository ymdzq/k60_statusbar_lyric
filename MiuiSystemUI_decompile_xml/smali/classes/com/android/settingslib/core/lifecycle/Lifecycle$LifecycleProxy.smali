.class Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# virtual methods
.method public onLifecycleEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    sget-object p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    .line 2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p1

    .line 7
    aget p0, p0, p1

    .line 8
    const/4 p1, 0x0

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    const-string p0, "LifecycleObserver"

    .line 15
    const-string p1, "Should not receive an \'ANY\' event!"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    goto :goto_0

    .line 22
    :pswitch_1
    throw p1

    .line 23
    :pswitch_2
    throw p1

    .line 24
    :pswitch_3
    throw p1

    .line 25
    :pswitch_4
    throw p1

    .line 26
    :pswitch_5
    throw p1

    .line 27
    :goto_0
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 30
.end method
