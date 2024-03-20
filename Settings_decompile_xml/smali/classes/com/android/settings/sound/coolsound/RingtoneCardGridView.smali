.class public Lcom/android/settings/sound/coolsound/RingtoneCardGridView;
.super Landroid/widget/RelativeLayout;
.source "RingtoneCardGridView.java"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/sound/coolsound/RingtonePicker;",
            ">;"
        }
    .end annotation
.end field

.field private mIsThemeRingtoneAccess:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

.field private ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

.field private ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsThemeRingtoneAccess(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mIsThemeRingtoneAccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPicker(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;I)Lcom/android/settings/sound/coolsound/RingtonePicker;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mIsThemeRingtoneAccess:Z

    .line 158
    new-instance v0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;-><init>(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)V

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mListener:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mData:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mIsThemeRingtoneAccess:Z

    .line 158
    new-instance p2, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;

    invoke-direct {p2, p0}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;-><init>(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)V

    iput-object p2, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mListener:Landroid/view/View$OnClickListener;

    .line 69
    iput-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->init()V

    return-void
.end method

.method private getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;
    .locals 2

    .line 262
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/coolsound/RingtonePicker;

    .line 263
    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->ringtone_settings_card_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    sget v0, Lcom/android/settings/R$id;->ringtone_settings_card:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result v1

    .line 84
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v2, 0xd0

    .line 88
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->ringtone_settings_card_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    :goto_0
    sget v0, Lcom/android/settings/R$id;->ringtone_call:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/coolsound/RingtoneItem;

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    .line 94
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :cond_1
    sget v0, Lcom/android/settings/R$id;->ringtone_alarm:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/coolsound/RingtoneItem;

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    .line 98
    sget v0, Lcom/android/settings/R$id;->ringtone_notification:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    iput-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    return-void
.end method


# virtual methods
.method public setDisable(I)V
    .locals 2

    .line 295
    invoke-direct {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->setDisable(Z)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->setItemViewDisable(I)V

    :cond_0
    return-void
.end method

.method public setItemViewDisable(I)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 315
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 317
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->getType()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 319
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method
