.class public final Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mChoosePhotoPosition:I

.field public final mImageDescriptions:Ljava/util/List;

.field public final mImageDrawables:Ljava/util/List;

.field public mLastSelectedPosition:I

.field public final mPreselectedImageStartPosition:I

.field public final mPreselectedImages:Landroid/content/res/TypedArray;

.field public mSelectedPosition:I

.field public final mTakePhotoPosition:I

.field public final mUserIconColors:[I

.field public final synthetic this$0:Lcom/android/settingslib/users/AvatarPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 8
    iput v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mLastSelectedPosition:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v1

    .line 15
    new-instance v2, Landroid/content/Intent;

    .line 16
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    const/high16 v3, 0x10000

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 25
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-lez v1, :cond_0

    .line 35
    move v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v2

    .line 39
    :goto_0
    new-instance v4, Landroid/content/Intent;

    .line 40
    const-string v5, "android.provider.action.PICK_IMAGES"

    .line 42
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v5, "image/*"

    .line 47
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    move-result-object v5

    .line 55
    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 56
    move-result-object v4

    .line 59
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 60
    move-result v4

    .line 63
    if-lez v4, :cond_1

    .line 64
    move v4, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v4, v2

    .line 68
    :goto_1
    if-eqz v4, :cond_4

    .line 69
    const-class v4, Landroid/app/KeyguardManager;

    .line 71
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Landroid/app/KeyguardManager;

    .line 77
    if-eqz v4, :cond_3

    .line 79
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    .line 81
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    goto :goto_2

    .line 87
    :cond_2
    move v4, v2

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    :goto_2
    move v4, v3

    .line 90
    :goto_3
    if-nez v4, :cond_4

    .line 91
    move v4, v3

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    move v4, v2

    .line 95
    :goto_4
    if-eqz v1, :cond_5

    .line 96
    move v5, v2

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    move v5, v0

    .line 100
    :goto_5
    iput v5, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mTakePhotoPosition:I

    .line 101
    if-eqz v4, :cond_7

    .line 103
    if-eqz v1, :cond_6

    .line 105
    move v0, v3

    .line 107
    goto :goto_6

    .line 108
    :cond_6
    move v0, v2

    .line 109
    :cond_7
    :goto_6
    iput v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mChoosePhotoPosition:I

    .line 110
    add-int/2addr v1, v4

    .line 112
    iput v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImageStartPosition:I

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v0

    .line 118
    const v1, 0x7f03000a    # @array/avatar_images

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 122
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/android/internal/util/UserIcons;->getUserIconColors(Landroid/content/res/Resources;)[I

    .line 132
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mUserIconColors:[I

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    .line 138
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    move v0, v2

    .line 143
    :goto_7
    iget-object v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    .line 144
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    .line 146
    move-result v4

    .line 149
    iget-object v5, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 150
    if-ge v0, v4, :cond_9

    .line 152
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 154
    move-result-object v1

    .line 157
    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 158
    if-eqz v4, :cond_8

    .line 160
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 162
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 164
    move-result-object v1

    .line 167
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 168
    move-result-object v4

    .line 171
    new-instance v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    .line 172
    invoke-direct {v5, v4, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 174
    iput-boolean v3, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    .line 177
    iput-boolean v3, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 179
    iget v1, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    .line 181
    iget v4, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 183
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 185
    move-result v1

    .line 188
    div-int/lit8 v1, v1, 0x2

    .line 189
    int-to-float v1, v1

    .line 191
    iput v1, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 192
    iget-object v1, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 194
    iget-object v4, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 196
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 198
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 201
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 207
    goto :goto_7

    .line 209
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 210
    const-string p1, "Avatar drawables must be bitmaps"

    .line 212
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    throw p0

    .line 217
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    move-result v0

    .line 221
    if-nez v0, :cond_a

    .line 222
    goto :goto_9

    .line 224
    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mUserIconColors:[I

    .line 225
    array-length v1, v0

    .line 227
    if-ge v2, v1, :cond_b

    .line 228
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 230
    move-result-object v1

    .line 233
    aget v0, v0, v2

    .line 234
    invoke-static {v1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    .line 236
    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 243
    goto :goto_8

    .line 245
    :cond_b
    :goto_9
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mImageDrawables:Ljava/util/List;

    .line 246
    iget-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    .line 248
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 250
    move-result p1

    .line 253
    if-lez p1, :cond_c

    .line 254
    iget-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 256
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 258
    move-result-object p1

    .line 261
    const v0, 0x7f030009    # @array/avatar_image_descriptions

    .line 262
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 265
    move-result-object p1

    .line 268
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 269
    move-result-object p1

    .line 272
    goto :goto_a

    .line 273
    :cond_c
    const/4 p1, 0x0

    .line 274
    :goto_a
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mImageDescriptions:Ljava/util/List;

    .line 275
    return-void
    .line 277
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mImageDrawables:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    iget p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImageStartPosition:I

    .line 10
    add-int/2addr v0, p0

    .line 12
    return v0
    .line 13
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarViewHolder;

    .line 2
    iget-object p1, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 4
    iget v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mTakePhotoPosition:I

    .line 6
    iget-object v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 8
    if-ne p2, v0, :cond_0

    .line 10
    const v0, 0x7f080af4    # @drawable/avatar_take_photo_circled 'res/drawable/avatar_take_photo_circled.xml'

    .line 12
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    const v0, 0x7f130c29    # @string/user_image_take_photo 'Take a photo'

    .line 22
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    goto :goto_1

    .line 32
    :cond_0
    iget v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mChoosePhotoPosition:I

    .line 33
    if-ne p2, v0, :cond_1

    .line 35
    const v0, 0x7f080af2    # @drawable/avatar_choose_photo_circled 'res/drawable/avatar_choose_photo_circled.xml'

    .line 37
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    const v0, 0x7f130c27    # @string/user_image_choose_photo 'Choose an image'

    .line 47
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    goto :goto_1

    .line 57
    :cond_1
    iget v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImageStartPosition:I

    .line 58
    if-lt p2, v0, :cond_4

    .line 60
    sub-int v0, p2, v0

    .line 62
    iget v2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 64
    if-ne p2, v2, :cond_2

    .line 66
    const/4 v2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v2, 0x0

    .line 70
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 71
    iget-object v2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mImageDrawables:Ljava/util/List;

    .line 74
    check-cast v2, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 81
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mImageDescriptions:Ljava/util/List;

    .line 87
    if-eqz v2, :cond_3

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    move-result v3

    .line 94
    if-ge v0, v3, :cond_3

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    goto :goto_1

    .line 106
    :cond_3
    const v0, 0x7f130377    # @string/default_user_icon_description 'Default user icon'

    .line 107
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    :cond_4
    :goto_1
    new-instance v0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;

    .line 117
    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;I)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
    .line 125
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p0

    .line 9
    const p1, 0x7f0d0049    # @layout/avatar_item 'res/layout/avatar_item.xml'

    .line 10
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    new-instance p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarViewHolder;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    return-object p1
    .line 23
.end method
