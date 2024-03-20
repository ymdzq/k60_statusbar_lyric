.class public final Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

.field public final synthetic val$cardsRetriever:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->val$cardsRetriever:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->val$cardsRetriever:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 6
    new-instance v1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    .line 10
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
    .line 16
.end method
