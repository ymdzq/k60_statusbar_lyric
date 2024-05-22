.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LockDownAction;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 14
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 18
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserManager:Landroid/os/UserManager;

    .line 20
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 22
    move-result-object v1

    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_1

    .line 28
    aget v4, v1, v3

    .line 30
    if-eq v4, v0, :cond_0

    .line 32
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 34
    const/4 v6, 0x1

    .line 36
    invoke-virtual {v5, v4, v6}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 37
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    return-void

    .line 43
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 44
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->createActionItems()V

    .line 48
    return-void

    .line 51
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 52
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$1;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 58
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->logoutUser()I

    .line 60
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 64
.end method
