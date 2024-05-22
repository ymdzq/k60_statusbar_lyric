.class public final Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
    .line 14
.end method
