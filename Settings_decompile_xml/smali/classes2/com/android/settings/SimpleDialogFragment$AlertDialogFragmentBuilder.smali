.class public final Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;
.super Ljava/lang/Object;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimpleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertDialogFragmentBuilder"
.end annotation


# instance fields
.field private mCancelable:Z

.field private mCreated:Z

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    .line 132
    iput p1, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    return-void
.end method


# virtual methods
.method public create()Lcom/android/settings/SimpleDialogFragment;
    .locals 4

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    .line 155
    new-instance v0, Lcom/android/settings/SimpleDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/SimpleDialogFragment;-><init>()V

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    .line 157
    iget-object v3, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "msg_res_id"

    .line 158
    iget-object v3, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cancelable"

    .line 159
    iget-boolean v3, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "type"

    .line 160
    iget p0, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "dialog has been created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
