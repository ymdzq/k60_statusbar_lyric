.class public final synthetic Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallet/ui/WalletActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const-string v1, "WalletActivity"

    .line 5
    const/4 v2, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    .line 12
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 14
    invoke-interface {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    .line 16
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string p0, "Unable to create wallet app intent."

    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 28
    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 37
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 39
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 45
    sget-object v0, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_SHOW_ALL:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 47
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 54
    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    .line 56
    move-result-object v0

    .line 59
    invoke-interface {p1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 67
    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_SHOW_ALL_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 69
    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 74
    new-instance v1, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;

    .line 76
    invoke-direct {v1, p0}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V

    .line 78
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    .line 81
    :goto_0
    return-void

    .line 84
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    .line 85
    sget p1, Lcom/android/systemui/wallet/ui/WalletActivity;->$r8$clinit:I

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    const-string p1, "Wallet action button is clicked."

    .line 92
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 97
    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 99
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    const-string p0, "False tap detected on wallet action button."

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_2

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 111
    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_UNLOCK_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 113
    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 115
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 118
    new-instance p1, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda1;

    .line 120
    invoke-direct {p1}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 122
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    .line 125
    :goto_2
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 130
.end method
