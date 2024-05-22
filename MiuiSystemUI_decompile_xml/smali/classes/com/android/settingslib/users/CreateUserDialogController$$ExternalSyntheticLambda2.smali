.class public final synthetic Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/users/CreateUserDialogController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 4
    iput-boolean p2, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$1:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 9
    iget-boolean p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$1:Z

    .line 11
    iget v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 13
    add-int/2addr v1, v0

    .line 15
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 16
    if-ne v1, v0, :cond_0

    .line 18
    if-nez p0, :cond_0

    .line 20
    add-int/2addr v1, v0

    .line 22
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 25
    return-void

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 29
    iget-boolean p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$1:Z

    .line 31
    iget v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 33
    sub-int/2addr v1, v0

    .line 35
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 36
    if-ne v1, v0, :cond_1

    .line 38
    if-nez p0, :cond_1

    .line 40
    sub-int/2addr v1, v0

    .line 42
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 45
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
