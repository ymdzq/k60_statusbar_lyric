.class public Lcom/android/settings/SettingsCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsCardAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private cardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/settings/SettingsCardAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/settings/SettingsCardAdapter;->cardList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCardList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/settings/SettingsCardAdapter;->cardList:Ljava/util/List;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/SettingsCardAdapter;->cardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/SettingsCardAdapter;->cardList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/android/settings/SettingsCardAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->normal_grid_view:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/android/settings/SettingsCardAdapter$ViewHolder;-><init>(Lcom/android/settings/SettingsCardAdapter;)V

    .line 49
    sget v0, Lcom/android/settings/R$id;->card:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsStatusCard;

    iput-object v0, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;

    .line 54
    :goto_0
    iget-object p0, p0, Lcom/android/settings/SettingsCardAdapter;->cardList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/CardInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 56
    iget-object v0, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsStatusCard;->setCardTitle(I)V

    .line 57
    iget-object v0, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->getValueResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsStatusCard;->setCardValue(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsStatusCard;->setChecked(Z)V

    .line 60
    iget-object v0, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->getCheckedIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsStatusCard;->setCardImageView(I)V

    goto :goto_1

    .line 62
    :cond_1
    iget-object v0, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsStatusCard;->setChecked(Z)V

    .line 63
    iget-object v0, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsStatusCard;->setCardImageView(I)V

    .line 65
    :goto_1
    iget-object p3, p3, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->card:Lcom/android/settings/widget/SettingsStatusCard;

    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->isDisable()Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/settings/widget/SettingsStatusCard;->setDisable(Z)V

    .line 67
    :cond_2
    filled-new-array {p2}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p2, p1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-object p2
.end method
