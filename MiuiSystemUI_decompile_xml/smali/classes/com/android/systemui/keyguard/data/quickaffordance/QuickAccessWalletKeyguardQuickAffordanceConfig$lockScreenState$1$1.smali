.class final Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig$lockScreenState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig$lockScreenState$1$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig$lockScreenState$1$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;->walletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 4
    sget-object v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->WALLET_PREFERENCE_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    .line 6
    sget-object v1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    .line 8
    filled-new-array {v0, v1}, [Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->unregisterWalletChangeObservers([Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    return-object p0
    .line 19
.end method
