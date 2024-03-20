.class public Lcom/android/settings/sound/coolsound/RingtoneItem;
.super Landroid/widget/LinearLayout;
.source "RingtoneItem.java"


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public summary:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getResourceId(Landroid/content/Context;)I
    .locals 1

    .line 33
    sget p0, Lcom/android/settings/R$layout;->ringtone_settings_item:I

    .line 34
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget p0, Lcom/android/settings/R$layout;->ringtone_settings_item_tablet_no_call:I

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 39
    sget p0, Lcom/android/settings/R$layout;->ringtone_settings_item_pad:I

    :cond_1
    :goto_0
    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getResourceId(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    sget v0, Lcom/android/settings/R$id;->ringtone_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->imageView:Landroid/widget/ImageView;

    .line 48
    sget v0, Lcom/android/settings/R$id;->ringtone_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->title:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/android/settings/R$id;->ringtone_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->summary:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->type:I

    return p0
.end method

.method public setImageSize(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 63
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 64
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->type:I

    return-void
.end method
