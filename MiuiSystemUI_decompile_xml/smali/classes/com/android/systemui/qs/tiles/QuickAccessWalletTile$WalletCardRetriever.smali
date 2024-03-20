.class public final Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mIsWalletUpdating:Z

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onWalletCardsRetrieved(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 4

    .line 1
    const-string v0, "Successfully retrieved wallet cards."

    .line 2
    const-string v1, "QuickAccessWalletTile"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 9
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mIsWalletUpdating:Z

    .line 12
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    const-string p1, "No wallet cards exist."

    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 30
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 34
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 36
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    .line 40
    move-result p1

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v2

    .line 47
    if-lt p1, v2, :cond_1

    .line 48
    const-string p1, "Error retrieving cards: Invalid selected card index."

    .line 50
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 55
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 57
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 67
    check-cast p1, Landroid/service/quickaccesswallet/WalletCard;

    .line 68
    iput-object p1, v1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 70
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 72
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 74
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    .line 76
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    .line 80
    move-result p1

    .line 83
    const/4 v0, 0x4

    .line 84
    if-ne p1, v0, :cond_2

    .line 85
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 87
    iput-object v3, p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 92
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    .line 94
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    .line 96
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 100
    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 104
    move-result-object v0

    .line 107
    iput-object v0, p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 112
    return-void
    .line 115
.end method
