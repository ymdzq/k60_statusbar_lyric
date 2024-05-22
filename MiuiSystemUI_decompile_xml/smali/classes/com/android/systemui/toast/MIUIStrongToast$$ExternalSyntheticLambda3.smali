.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/MIUIStrongToast;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    sget v0, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "MIUIStrongToast"

    .line 11
    const-string/jumbo v1, "setOnClickListener"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :try_start_0
    iget-object v0, p1, Lcom/android/systemui/toast/MIUIStrongToast;->mTarget:Landroid/app/PendingIntent;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 28
    :cond_1
    return-void

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/RuntimeException;

    .line 33
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    throw p1
    .line 38
.end method
