.class public final Landroidx/preference/ExpandButton;
.super Landroidx/preference/Preference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const p1, 0x7f0d00b7    # @layout/expand_button 'res/layout/expand_button.xml'

    .line 6
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 9
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 11
    const v1, 0x7f080ee8    # @drawable/ic_arrow_down_24dp 'res/drawable/ic_arrow_down_24dp.xml'

    .line 13
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iput v1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 23
    const p1, 0x7f1303f1    # @string/expand_button_title 'Advanced'

    .line 25
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 28
    iget p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 31
    const/16 v1, 0x3e7

    .line 33
    if-eq v1, p1, :cond_0

    .line 35
    iput v1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 37
    iget-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 39
    if-eqz p1, :cond_0

    .line 41
    iget-object v1, p1, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 43
    iget-object p1, p1, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/preference/PreferenceGroupAdapter$1;

    .line 45
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    check-cast p2, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p2

    .line 63
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_5

    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Landroidx/preference/Preference;

    .line 74
    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 76
    move-result-object v2

    .line 79
    instance-of v3, v1, Landroidx/preference/PreferenceGroup;

    .line 80
    if-eqz v3, :cond_2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v4

    .line 87
    if-nez v4, :cond_2

    .line 88
    move-object v4, v1

    .line 90
    check-cast v4, Landroidx/preference/PreferenceGroup;

    .line 91
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    iget-object v4, v1, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 96
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 98
    move-result v4

    .line 101
    if-eqz v4, :cond_3

    .line 102
    if-eqz v3, :cond_1

    .line 104
    check-cast v1, Landroidx/preference/PreferenceGroup;

    .line 106
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 111
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    move-result v1

    .line 115
    if-nez v1, :cond_1

    .line 116
    if-nez v0, :cond_4

    .line 118
    move-object v0, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 122
    const v3, 0x7f130b4e    # @string/summary_collapsed_preference_list '%1$s, %2$s'

    .line 124
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 130
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    const-wide/32 p1, 0xf4240

    .line 139
    add-long/2addr p3, p1

    .line 142
    iput-wide p3, p0, Landroidx/preference/ExpandButton;->mId:J

    .line 143
    return-void
    .line 145
.end method


# virtual methods
.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/preference/ExpandButton;->mId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    const/4 p0, 0x0

    .line 5
    iput-boolean p0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 6
    return-void
    .line 8
.end method
