.class public final Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MiuiLocationTile;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->$it:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->$it:Ljava/lang/Object;

    .line 12
    check-cast v2, Lcom/android/systemui/qs/tiles/MiuiLocationTile$Callback;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 16
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;

    .line 21
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->$it:Ljava/lang/Object;

    .line 25
    check-cast p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$Callback;

    .line 27
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 29
    invoke-interface {v1, v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 31
    return-void

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;

    .line 35
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;->$it:Ljava/lang/Object;

    .line 39
    check-cast p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$thermalListener$1;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 43
    invoke-interface {v1, v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 45
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
