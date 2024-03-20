.class public final synthetic Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallet/ui/WalletActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 4
    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_SHOW_ALL:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 6
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 13
    invoke-interface {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    .line 15
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    const/4 p0, 0x0

    .line 26
    return p0
    .line 27
.end method
