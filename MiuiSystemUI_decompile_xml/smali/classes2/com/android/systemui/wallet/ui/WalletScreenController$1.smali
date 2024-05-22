.class public final Lcom/android/systemui/wallet/ui/WalletScreenController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/ui/WalletScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$1;->this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$1;->this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$1;->this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object p0

    .line 16
    const-string/jumbo p1, "wallet_view_height"

    .line 17
    sub-int/2addr p5, p3

    .line 20
    invoke-interface {p0, p1, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
    .line 28
.end method
