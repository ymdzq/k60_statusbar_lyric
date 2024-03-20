.class public final synthetic Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/users/AvatarPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 8
    sget p1, Lcom/android/settingslib/users/AvatarPickerActivity;->$r8$clinit:I

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 22
    iget p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 24
    iget v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImageStartPosition:I

    .line 26
    sub-int/2addr p1, v0

    .line 28
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 31
    move-result v1

    .line 34
    const/4 v2, -0x1

    .line 35
    iget-object v3, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 36
    if-lez v1, :cond_1

    .line 38
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 40
    move-result p0

    .line 43
    if-eq p0, v2, :cond_0

    .line 44
    new-instance p1, Landroid/net/Uri$Builder;

    .line 46
    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    .line 48
    const-string v0, "android.resource"

    .line 51
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 93
    move-result-object p0

    .line 96
    new-instance p1, Landroid/content/Intent;

    .line 97
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 99
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v3, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 108
    goto :goto_1

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 112
    const-string p1, "Preselected avatar images must be resources."

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p0

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mUserIconColors:[I

    .line 120
    aget p0, p0, p1

    .line 122
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    new-instance p1, Landroid/content/Intent;

    .line 127
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 129
    const-string v0, "default_icon_tint_color"

    .line 132
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {v3, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 137
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 140
    :goto_1
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
