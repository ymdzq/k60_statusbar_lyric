.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    .line 14
    sget v0, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v0, "CreateUserActivity"

    .line 21
    const-string v1, "Unable to create user"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 34
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    :cond_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method
