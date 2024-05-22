.class public final Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$onBind$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$onBind$1$1;->this$0:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    const-string v0, "Number of cards registered "

    .line 10
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    const-string p2, "WalletContextualLocationsService"

    .line 22
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$onBind$1$1;->this$0:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    return-object p0
    .line 34
.end method
