.class final Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;

.field final synthetic this$0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$1;->this$0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$1;->$callback:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;

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
    iget-object v0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$1;->this$0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$1;->$callback:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    return-object p0
    .line 15
.end method
