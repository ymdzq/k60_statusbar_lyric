.class public Lcom/android/settings/device/DeviceInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DeviceInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

.field private closeValueTextLineLimit:Z

.field private mCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/device/BorderedBaseDeviceCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mType:I


# direct methods
.method public static synthetic $r8$lambda$VckEeM7UB3kk3sH4_XqhO6lRgF8(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/device/DeviceInfoAdapter;->lambda$initExternalRamIcon$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildAlertDialog(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/content/Context;)Landroid/app/Dialog;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceInfoAdapter;->buildAlertDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mCards:Ljava/util/List;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->closeValueTextLineLimit:Z

    .line 56
    iput-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildAlertDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    .line 268
    new-instance p0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->external_ram_dialog_icon_title:I

    .line 269
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 270
    invoke-static {p1}, Lcom/android/settings/special/ExternalRamController;->getDialogInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->external_ram_dialog_icon_confirm:I

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private initExternalRamIcon(Landroid/content/Context;Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "\u00a0"

    .line 235
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/settings/R$drawable;->external_ram_notification:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 237
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 238
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 239
    invoke-virtual {p3, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 242
    new-instance v2, Lcom/android/settings/device/DeviceInfoAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/device/DeviceInfoAdapter$3;-><init>(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/content/Context;)V

    .line 248
    new-instance v4, Lcom/android/settings/device/MiuiVersionCard$CustomImageSpan;

    const/4 v5, 0x2

    invoke-direct {v4, p3, v5}, Lcom/android/settings/device/MiuiVersionCard$CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 p3, v0, -0x1

    const/16 v6, 0x11

    .line 249
    invoke-virtual {v1, v4, p3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 250
    invoke-virtual {v1, v2, p3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 251
    iget-object p2, p2, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object p3, p2, Lcom/android/settings/device/BaseDeviceCardItem;->mTitleView:Landroid/widget/TextView;

    .line 252
    iget v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mType:I

    if-ne v0, v5, :cond_1

    .line 253
    iget-object p3, p2, Lcom/android/settings/device/BaseDeviceCardItem;->mValueView:Landroid/widget/TextView;

    .line 254
    invoke-virtual {p2, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    :goto_0
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 259
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 260
    new-instance p2, Lcom/android/settings/device/DeviceInfoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/device/DeviceInfoAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initExternalRamIcon$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 261
    invoke-static {p1}, Lcom/android/settings/stat/commonswitch/TalkbackSwitch;->isTalkbackEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceInfoAdapter;->buildAlertDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeValueTextLineLimit()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->closeValueTextLineLimit:Z

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceCardInfo;->getIndex()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/device/DeviceInfoAdapter;->onBindViewHolder(Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;I)V
    .locals 9

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->closeValueTextLineLimit:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setValueMaxLine(I)V

    .line 110
    :cond_0
    iget v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mType:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_5

    .line 111
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    sget v5, Lcom/android/settings/R$id;->card_big_title:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    iget-object v5, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    sget v6, Lcom/android/settings/R$id;->card_value_layout:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 113
    iget-object v6, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Lcom/android/settings/device/DeviceCardInfo;->getIndex()I

    move-result v6

    const/4 v7, 0x6

    const/16 v8, 0x8

    if-ne v6, v7, :cond_1

    .line 114
    iget-object v1, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v1, v1, Lcom/android/settings/device/BaseDeviceCardItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 119
    :cond_1
    iget-object v6, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v6, v6, Lcom/android/settings/device/BaseDeviceCardItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_2
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v5, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/android/settings/device/DeviceCardInfo;->getTitle2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/android/settings/device/DeviceCardInfo;->getTitle2()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/android/settings/device/DeviceCardInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Lcom/android/settings/device/BaseDeviceCardItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getIndex()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {v0}, Lcom/android/settings/special/ExternalRamController;->isChecked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/device/DeviceInfoAdapter;->initExternalRamIcon(Landroid/content/Context;Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;Ljava/lang/String;)V

    .line 128
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/android/settings/device/DeviceCardInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 130
    :cond_4
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setValue(Lcom/android/settings/device/DeviceCardInfo;)V

    goto :goto_3

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getIndex()I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {v0}, Lcom/android/settings/special/ExternalRamController;->isChecked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/settings/device/DeviceCardInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/device/DeviceInfoAdapter;->initExternalRamIcon(Landroid/content/Context;Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;Ljava/lang/String;)V

    goto :goto_2

    .line 136
    :cond_7
    :goto_1
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/settings/device/DeviceCardInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    :goto_2
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setValue(Ljava/lang/CharSequence;)V

    .line 142
    iget v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mType:I

    if-eq v0, v3, :cond_8

    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v1, v0, Lcom/android/settings/device/BaseDeviceCardItem;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 143
    iget-object v1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/settings/device/DeviceCardInfo;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setIcon(I)V

    .line 147
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/settings/device/BaseDeviceCardItem;->setKey(Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 150
    iget-object v1, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    invoke-virtual {v1, v0}, Lcom/android/settings/device/BaseDeviceCardItem;->setKey(Ljava/lang/String;)V

    const-string v1, "Android security patch"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "miui_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 152
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    iget-object v0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object v0, v0, Lcom/android/settings/device/BaseDeviceCardItem;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v5, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 156
    :cond_a
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mCards:Ljava/util/List;

    iget-object v1, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    check-cast v1, Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_b
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 164
    iget-object v1, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p1, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    .line 170
    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Lcom/android/settings/device/DeviceCardInfo;->getType()I

    move-result p2

    if-eqz p2, :cond_11

    if-ne p2, v3, :cond_c

    .line 171
    iget v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mType:I

    if-eq v0, v3, :cond_c

    goto :goto_4

    .line 188
    :cond_c
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    if-eq p2, v3, :cond_d

    if-ne p2, v2, :cond_10

    .line 191
    :cond_d
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-ne p2, v2, :cond_e

    .line 193
    iget-object v2, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$dimen;->params_card_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_e
    if-ne p2, v3, :cond_f

    .line 195
    iget v2, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mType:I

    if-ne v2, v3, :cond_f

    .line 196
    sget v2, Lcom/android/settings/R$drawable;->device_card_back_ground:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 198
    :cond_f
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$dimen;->board_layout_padding_top_bottom:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 200
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v6

    iget-object p0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 198
    invoke-virtual {p1, v2, v3, v6, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 202
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array v1, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_10
    const/4 p0, 0x3

    if-ne p2, p0, :cond_12

    .line 206
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    new-array v0, v4, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, p2, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p2, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_5

    .line 172
    :cond_11
    :goto_4
    new-instance p2, Lcom/android/settings/device/DeviceInfoAdapter$2;

    invoke-direct {p2, p0}, Lcom/android/settings/device/DeviceInfoAdapter$2;-><init>(Lcom/android/settings/device/DeviceInfoAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12
    :goto_5
    return-void

    .line 166
    :cond_13
    iget-object p0, p1, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/device/DeviceInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object p2, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->bordered_base_card_item_wrap:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    if-ne p2, p1, :cond_1

    .line 87
    new-instance p1, Lcom/android/settings/device/BaseDeviceCardItem;

    sget p2, Lcom/android/settings/R$layout;->device_camera_card_item:I

    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(ILandroid/content/Context;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance p1, Lcom/android/settings/device/BaseDeviceCardItem;

    sget p2, Lcom/android/settings/R$layout;->new_base_card_item:I

    iget-object v0, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(ILandroid/content/Context;)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance p1, Lcom/android/settings/device/BaseDeviceCardItem;

    iget-object p2, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(Landroid/content/Context;)V

    .line 94
    :goto_0
    new-instance p2, Lcom/android/settings/device/DeviceInfoAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/settings/device/DeviceInfoAdapter$1;-><init>(Lcom/android/settings/device/DeviceInfoAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 101
    new-instance p2, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;-><init>(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDataList([Lcom/android/settings/device/DeviceCardInfo;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->cardInfos:[Lcom/android/settings/device/DeviceCardInfo;

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/settings/device/DeviceInfoAdapter;->mType:I

    return-void
.end method
