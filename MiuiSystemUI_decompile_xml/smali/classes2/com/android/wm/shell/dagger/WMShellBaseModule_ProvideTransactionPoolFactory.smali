.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideTransactionPool()Lcom/android/wm/shell/common/TransactionPool;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/common/TransactionPool;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
