.class public final synthetic Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->reCreateWalletClient()V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->updateWalletPreference()V

    .line 13
    iget-object v0, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->queryWalletCards(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    .line 18
    return-void
    .line 21
.end method
