.class public final Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mHolderView:Landroid/view/View;

.field public final mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field protected mMaxEntriesCount:I

.field public mWifiEntries:Ljava/util/List;

.field protected mWifiEntriesCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mMaxEntriesCount:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntries:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_b

    .line 6
    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    .line 8
    if-lt p2, p0, :cond_0

    .line 10
    goto/16 :goto_7

    .line 12
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 18
    iget p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 20
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    .line 22
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    iget-object v2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mContext:Landroid/content/Context;

    .line 27
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    if-ne p2, v1, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    .line 34
    invoke-virtual {v1, p2, v0}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->getIcon(IZ)Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    :goto_0
    move-object p2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const v0, 0x1010212    # @android:attr/textColorTertiary

    .line 44
    invoke-static {v2, v0, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 47
    move-result v0

    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 56
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 65
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 66
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiIcon:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 76
    invoke-virtual {p0, v4}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 80
    invoke-static {v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 81
    move-result-object v0

    .line 84
    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiTitleText:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result p2

    .line 93
    const/16 v1, 0x8

    .line 94
    iget-object v5, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiSummaryText:Landroid/widget/TextView;

    .line 96
    if-eqz p2, :cond_3

    .line 98
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 110
    move-result p2

    .line 113
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 114
    move-result v0

    .line 117
    if-eqz p2, :cond_4

    .line 118
    const v0, 0x7f08119f    # @drawable/ic_settings_24dp 'res/drawable/ic_settings_24dp.xml'

    .line 120
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 123
    move-result-object v3

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    if-eqz v0, :cond_5

    .line 128
    const/4 v5, 0x4

    .line 130
    if-eq v0, v5, :cond_5

    .line 131
    const v0, 0x7f080ff8    # @drawable/ic_friction_lock_closed 'res/drawable/ic_friction_lock_closed.xml'

    .line 133
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 136
    move-result-object v3

    .line 139
    :cond_5
    :goto_3
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiEndIcon:Landroid/widget/ImageView;

    .line 140
    if-nez v3, :cond_6

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    goto :goto_4

    .line 147
    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :goto_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    .line 154
    move-result v0

    .line 157
    const/4 v1, 0x1

    .line 158
    if-eqz v0, :cond_7

    .line 159
    goto :goto_5

    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    .line 162
    move-result v0

    .line 165
    if-nez v0, :cond_9

    .line 166
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 168
    move-result v0

    .line 171
    if-eqz v0, :cond_8

    .line 172
    goto :goto_5

    .line 174
    :cond_8
    move v0, v4

    .line 175
    goto :goto_6

    .line 176
    :cond_9
    :goto_5
    move v0, v1

    .line 177
    :goto_6
    iget-object v2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiListLayout:Landroid/widget/LinearLayout;

    .line 178
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 180
    if-eqz p2, :cond_a

    .line 183
    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;

    .line 185
    invoke-direct {p2, p1, p0, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Lcom/android/wifitrackerlib/WifiEntry;I)V

    .line 187
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    goto :goto_7

    .line 193
    :cond_a
    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;

    .line 194
    invoke-direct {p2, p1, p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Lcom/android/wifitrackerlib/WifiEntry;I)V

    .line 196
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_b
    :goto_7
    return-void
    .line 202
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
    const v0, 0x7f0d00e5    # @layout/internet_list_item 'res/layout/internet_list_item.xml'

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mHolderView:Landroid/view/View;

    .line 18
    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    .line 20
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mHolderView:Landroid/view/View;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 24
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;-><init>(Landroid/view/View;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    .line 26
    return-object p1
    .line 29
.end method
