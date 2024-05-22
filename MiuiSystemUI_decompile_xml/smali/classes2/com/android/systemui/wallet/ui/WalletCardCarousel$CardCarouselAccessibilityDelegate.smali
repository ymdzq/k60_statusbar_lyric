.class public final Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselAccessibilityDelegate;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselAccessibilityDelegate;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x8000

    .line 6
    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselAccessibilityDelegate;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 16
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->scrollToPosition(I)V

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method
