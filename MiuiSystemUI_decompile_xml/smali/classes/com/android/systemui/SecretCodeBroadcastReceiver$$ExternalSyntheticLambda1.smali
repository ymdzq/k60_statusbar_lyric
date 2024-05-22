.class public final synthetic Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    .line 2
    sget v0, Lcom/android/systemui/SecretCodeBroadcastReceiver;->$r8$clinit:I

    .line 4
    const-string v0, "capture sysui heap complete"

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 13
    return-void
    .line 16
.end method
