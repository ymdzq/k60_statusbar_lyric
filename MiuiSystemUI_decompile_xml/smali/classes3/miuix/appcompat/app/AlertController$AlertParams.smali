.class Lmiuix/appcompat/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mCancelable:Z

.field mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field mCheckedItems:[Z

.field mComment:Ljava/lang/CharSequence;

.field final mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mCustomTitleView:Landroid/view/View;

.field mEnableDialogImmersive:Z

.field mEnableEnterAnim:Z

.field mExtraButtonList:Ljava/util/List;

.field mHapticFeedbackEnabled:Z

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconAttrId:I

.field mIconId:I

.field final mInflater:Landroid/view/LayoutInflater;

.field mIsChecked:Z

.field mIsCheckedColumn:Ljava/lang/String;

.field mIsMultiChoice:Z

.field mIsSingleChoice:Z

.field mItems:[Ljava/lang/CharSequence;

.field mLabelColumn:Ljava/lang/String;

.field mLiteVersion:I

.field mMessage:Ljava/lang/CharSequence;

.field mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNegativeButtonText:Ljava/lang/CharSequence;

.field mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNeutralButtonText:Ljava/lang/CharSequence;

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field mOnPrepareListViewListener:Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

.field mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

.field mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveButtonText:Ljava/lang/CharSequence;

.field mPreferLandscape:Z

.field mSmallIcon:Z

.field mTitle:Ljava/lang/CharSequence;

.field mView:Landroid/view/View;

.field mViewLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 6
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    .line 8
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 13
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 16
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 18
    move-result v2

    .line 21
    xor-int/2addr v2, v1

    .line 22
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    .line 23
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    .line 25
    move-result v2

    .line 28
    iput v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    .line 29
    if-gez v2, :cond_0

    .line 31
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    .line 33
    :cond_0
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableEnterAnim:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 42
    const-string v0, "layout_inflater"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Landroid/view/LayoutInflater;

    .line 50
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    return-void
    .line 54
.end method

.method private createListView(Lmiuix/appcompat/app/AlertController;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 2
    iget v1, p1, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ListView;

    .line 11
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 13
    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 17
    if-nez v1, :cond_0

    .line 19
    new-instance v8, Lmiuix/appcompat/app/AlertController$AlertParams$1;

    .line 21
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 23
    iget v4, p1, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 25
    const v5, 0x1020014    # @android:id/text1

    .line 27
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 30
    move-object v1, v8

    .line 32
    move-object v2, p0

    .line 33
    move-object v7, v0

    .line 34
    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/app/AlertController$AlertParams$1;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 35
    goto :goto_1

    .line 38
    :cond_0
    new-instance v8, Lmiuix/appcompat/app/AlertController$AlertParams$2;

    .line 39
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 41
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 43
    const/4 v5, 0x0

    .line 45
    move-object v1, v8

    .line 46
    move-object v2, p0

    .line 47
    move-object v6, v0

    .line 48
    move-object v7, p1

    .line 49
    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/app/AlertController$AlertParams$2;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 54
    if-eqz v1, :cond_2

    .line 56
    iget v1, p1, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    iget v1, p1, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 61
    :goto_0
    move v5, v1

    .line 63
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 64
    const v2, 0x1020014    # @android:id/text1

    .line 66
    if-eqz v1, :cond_3

    .line 69
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$3;

    .line 71
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 73
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 75
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 77
    filled-new-array {v3}, [Ljava/lang/String;

    .line 79
    move-result-object v7

    .line 82
    filled-new-array {v2}, [I

    .line 83
    move-result-object v8

    .line 86
    move-object v2, v1

    .line 87
    move-object v3, p0

    .line 88
    invoke-direct/range {v2 .. v8}, Lmiuix/appcompat/app/AlertController$AlertParams$3;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 89
    move-object v8, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 94
    if-eqz v8, :cond_4

    .line 96
    goto :goto_1

    .line 98
    :cond_4
    new-instance v8, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;

    .line 99
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 101
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 103
    invoke-direct {v8, v1, v5, v2, v3}, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 108
    if-eqz v1, :cond_5

    .line 110
    invoke-interface {v1, v0}, Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 112
    :cond_5
    iput-object v8, p1, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 115
    iget v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 117
    iput v1, p1, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    .line 119
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    if-eqz v1, :cond_6

    .line 123
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$4;

    .line 125
    invoke-direct {v1, p0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams$4;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Lmiuix/appcompat/app/AlertController;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    goto :goto_2

    .line 133
    :cond_6
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 134
    if-eqz v1, :cond_7

    .line 136
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$5;

    .line 138
    invoke-direct {v1, p0, v0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams$5;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    :cond_7
    :goto_2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 146
    if-eqz v1, :cond_8

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    :cond_8
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 153
    if-eqz v1, :cond_9

    .line 155
    const/4 p0, 0x1

    .line 157
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 158
    goto :goto_3

    .line 161
    :cond_9
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 162
    if-eqz p0, :cond_a

    .line 164
    const/4 p0, 0x2

    .line 166
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 167
    :cond_a
    :goto_3
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 170
    return-void
    .line 172
.end method


# virtual methods
.method public apply(Lmiuix/appcompat/app/AlertController;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 15
    iget-object v3, p1, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 17
    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    iput v1, p1, Lmiuix/appcompat/app/AlertController;->mIconId:I

    .line 30
    :cond_2
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 32
    if-eqz v0, :cond_3

    .line 34
    iput-object v2, p1, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v0, p1, Lmiuix/appcompat/app/AlertController;->mIconId:I

    .line 38
    :cond_3
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    .line 40
    const/4 v3, 0x1

    .line 42
    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    new-instance v4, Landroid/util/TypedValue;

    .line 48
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 50
    iget-object v5, p1, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 55
    move-result-object v5

    .line 58
    invoke-virtual {v5, v0, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    .line 62
    iput-object v2, p1, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    iput v0, p1, Lmiuix/appcompat/app/AlertController;->mIconId:I

    .line 66
    :cond_4
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mSmallIcon:Z

    .line 68
    if-eqz v0, :cond_5

    .line 70
    iput-boolean v3, p1, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    .line 72
    :cond_5
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 74
    if-eqz v0, :cond_6

    .line 76
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 78
    iget-object v3, p1, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 80
    if-eqz v3, :cond_6

    .line 82
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mComment:Ljava/lang/CharSequence;

    .line 87
    if-eqz v0, :cond_7

    .line 89
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 91
    iget-object v3, p1, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 93
    if-eqz v3, :cond_7

    .line 95
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 100
    if-eqz v0, :cond_8

    .line 102
    const/4 v3, -0x1

    .line 104
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    invoke-virtual {p1, v3, v0, v4}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 110
    if-eqz v0, :cond_9

    .line 112
    const/4 v3, -0x2

    .line 114
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    invoke-virtual {p1, v3, v0, v4}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 120
    if-eqz v0, :cond_a

    .line 122
    const/4 v3, -0x3

    .line 124
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    invoke-virtual {p1, v3, v0, v4}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 130
    if-eqz v0, :cond_b

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    .line 134
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 136
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 141
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 143
    if-nez v0, :cond_c

    .line 145
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 147
    if-nez v0, :cond_c

    .line 149
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 151
    if-eqz v0, :cond_d

    .line 153
    :cond_c
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams;->createListView(Lmiuix/appcompat/app/AlertController;)V

    .line 155
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 158
    if-eqz v0, :cond_e

    .line 160
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 162
    iput v1, p1, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 164
    goto :goto_1

    .line 166
    :cond_e
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 167
    if-eqz v0, :cond_f

    .line 169
    iput-object v2, p1, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 171
    iput v0, p1, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 173
    :cond_f
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 175
    if-eqz v0, :cond_10

    .line 177
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsChecked:Z

    .line 179
    iput-boolean v1, p1, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    .line 181
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 183
    :cond_10
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mHapticFeedbackEnabled:Z

    .line 185
    iput-boolean v0, p1, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    .line 187
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    .line 189
    iput-boolean v0, p1, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 191
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPreferLandscape:Z

    .line 193
    iput-boolean v0, p1, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 195
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableEnterAnim:Z

    .line 197
    iput-boolean p0, p1, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 199
    return-void
    .line 201
.end method
