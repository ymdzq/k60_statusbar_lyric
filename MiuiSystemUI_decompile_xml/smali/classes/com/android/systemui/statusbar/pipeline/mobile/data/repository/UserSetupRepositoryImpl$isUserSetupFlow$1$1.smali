.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$callback$1;

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$callback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$1;->$callback:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$callback$1;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$1;->$callback:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1$callback$1;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    return-object p0
    .line 15
.end method
