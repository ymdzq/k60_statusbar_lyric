.class public final Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onDrawn:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/keyguard/mediator/ScreenOnCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/mediator/ScreenOnCoordinator;Lcom/android/systemui/keyguard/KeyguardService$2$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->this$0:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->$onDrawn:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->this$0:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->mainHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1$1;

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->$onDrawn:Ljava/lang/Runnable;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method
