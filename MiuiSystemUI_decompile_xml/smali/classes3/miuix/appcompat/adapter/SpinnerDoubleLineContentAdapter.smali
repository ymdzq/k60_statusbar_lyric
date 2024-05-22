.class public abstract Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mEntries:[Ljava/lang/CharSequence;

.field public mIcons:[Landroid/graphics/drawable/Drawable;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length p0, p0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    const v0, 0x7f0a095c    # @id/tag_spinner_dropdown_view_double_line

    .line 2
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    :cond_0
    iget-object p2, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 14
    const v2, 0x7f0d0225    # @layout/miuix_appcompat_spiner_dropdown_view_double_line 'res/layout/miuix_appcompat_spiner_dropdown_view_double_line.xml'

    .line 16
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 22
    new-instance p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    .line 23
    invoke-direct {p3}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;-><init>()V

    .line 25
    const v2, 0x1020006    # @android:id/icon

    .line 28
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Landroid/widget/ImageView;

    .line 35
    iput-object v2, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 37
    const v2, 0x1020016    # @android:id/title

    .line 39
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 45
    check-cast v2, Landroid/widget/TextView;

    .line 46
    iput-object v2, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 48
    const v2, 0x1020010    # @android:id/summary

    .line 50
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 56
    check-cast v2, Landroid/widget/TextView;

    .line 57
    iput-object v2, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    :cond_1
    iget-object p3, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 64
    const/4 v2, 0x0

    .line 66
    if-eqz p3, :cond_3

    .line 67
    array-length v3, p3

    .line 69
    if-lt p1, v3, :cond_2

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    aget-object p3, p3, p1

    .line 73
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    move-object p3, v2

    .line 76
    :goto_1
    iget-object v3, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 77
    if-eqz v3, :cond_5

    .line 79
    array-length v4, v3

    .line 81
    if-lt p1, v4, :cond_4

    .line 82
    goto :goto_2

    .line 84
    :cond_4
    aget-object v3, v3, p1

    .line 85
    goto :goto_3

    .line 87
    :cond_5
    :goto_2
    move-object v3, v2

    .line 88
    :goto_3
    iget-object p0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 89
    if-eqz p0, :cond_7

    .line 91
    array-length v4, p0

    .line 93
    if-lt p1, v4, :cond_6

    .line 94
    goto :goto_4

    .line 96
    :cond_6
    aget-object v2, p0, p1

    .line 97
    :cond_7
    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 102
    if-eqz p0, :cond_b

    .line 103
    check-cast p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    .line 105
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    move-result p1

    .line 110
    const/16 v0, 0x8

    .line 111
    if-nez p1, :cond_8

    .line 113
    iget-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    goto :goto_5

    .line 125
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    move-result p1

    .line 134
    if-nez p1, :cond_9

    .line 135
    iget-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    goto :goto_6

    .line 147
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :goto_6
    if-eqz v2, :cond_a

    .line 153
    iget-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object p0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    goto :goto_7

    .line 165
    :cond_a
    iget-object p0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :cond_b
    :goto_7
    return-object p2
    .line 171
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    aget-object p0, p0, p1

    .line 8
    :goto_0
    return-object p0
    .line 10
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
