.class public Lcom/android/settings/sound/coolsound/RingtoneItemNotification;
.super Landroid/widget/LinearLayout;
.source "RingtoneItemNotification.java"


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public summary:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getResourceId()I
    .locals 2

    .line 31
    sget v0, Lcom/android/settings/R$layout;->ringtone_item_notification:I

    .line 32
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    sget v0, Lcom/android/settings/R$layout;->ringtone_settings_item_tablet_no_call:I

    :cond_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->getResourceId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget v0, Lcom/android/settings/R$id;->ringtone_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->imageView:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcom/android/settings/R$id;->ringtone_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->title:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/android/settings/R$id;->ringtone_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->summary:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->type:I

    return p0
.end method

.method public setType(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->type:I

    return-void
.end method
