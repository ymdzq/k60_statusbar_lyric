.class public final synthetic Lcom/android/systemui/wallet/ui/WalletCardCarousel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    sget p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->$r8$clinit:I

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updateCardView(Landroid/view/View;)V

    .line 8
    return-void
    .line 11
.end method
