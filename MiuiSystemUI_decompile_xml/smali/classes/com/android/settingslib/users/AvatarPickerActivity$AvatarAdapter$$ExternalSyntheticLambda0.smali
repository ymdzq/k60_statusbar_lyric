.class public final synthetic Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 5
    iput p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 2
    iget p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget v0, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mTakePhotoPosition:I

    .line 6
    iget-object v1, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 8
    if-ne v0, p0, :cond_0

    .line 10
    iget v0, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mLastSelectedPosition:I

    .line 12
    if-eq v0, p0, :cond_0

    .line 14
    iget-object v0, v1, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 21
    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 23
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v2, "output"

    .line 28
    iget-object v3, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    const/4 v4, 0x3

    .line 35
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    invoke-static {v2, v3}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 39
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 43
    iget-object v0, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;

    .line 46
    iget-object v0, v0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 48
    const/16 v2, 0x3ea

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/users/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    iget v0, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mChoosePhotoPosition:I

    .line 56
    if-ne v0, p0, :cond_1

    .line 58
    iget v0, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mLastSelectedPosition:I

    .line 60
    if-eq v0, p0, :cond_1

    .line 62
    iget-object v0, v1, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    new-instance v1, Landroid/content/Intent;

    .line 69
    const-string v2, "android.provider.action.PICK_IMAGES"

    .line 71
    const/4 v3, 0x0

    .line 73
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    const-string v2, "image/*"

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v0, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;

    .line 82
    iget-object v0, v0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 84
    const/16 v2, 0x3e9

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/users/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    goto :goto_0

    .line 91
    :cond_1
    iget v0, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 92
    const/4 v2, -0x1

    .line 94
    if-ne v0, p0, :cond_2

    .line 95
    iput v2, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 97
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 99
    iget-object v0, v1, Lcom/android/settingslib/users/AvatarPickerActivity;->mDoneButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 102
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 105
    goto :goto_0

    .line 108
    :cond_2
    iput p0, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 109
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 111
    if-eq v0, v2, :cond_3

    .line 114
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 116
    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, v1, Lcom/android/settingslib/users/AvatarPickerActivity;->mDoneButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 120
    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 123
    :goto_0
    iput p0, p1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mLastSelectedPosition:I

    .line 126
    return-void
    .line 128
.end method
