.class public final Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mData:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 8
    check-cast p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result p0

    .line 19
    int-to-long p0, p0

    .line 20
    return-wide p0
    .line 21
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 10
    iput-object v0, p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardViewInfo:Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    .line 12
    check-cast v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result v1

    .line 23
    iget-object v2, p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 28
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 30
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mCardDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 38
    invoke-virtual {v1}, Landroid/service/quickaccesswallet/WalletCard;->getContentDescription()Ljava/lang/CharSequence;

    .line 40
    move-result-object v1

    .line 43
    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardView:Landroidx/cardview/widget/CardView;

    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;

    .line 49
    invoke-direct {v1, p0, p2, v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;ILcom/android/systemui/wallet/ui/WalletCardViewInfo;)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
    .line 57
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f0d03f8    # @layout/wallet_card_view 'res/layout/wallet_card_view.xml'

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    new-instance p2, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;

    .line 18
    invoke-direct {p2, p1}, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 23
    iget v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCornerRadiusPx:F

    .line 25
    iget-object v1, p2, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardView:Landroidx/cardview/widget/CardView;

    .line 27
    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 29
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->getCardWidthPx()I

    .line 36
    move-result v1

    .line 39
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->getCardHeightPx()I

    .line 42
    move-result p0

    .line 45
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    return-object p2
    .line 51
.end method
