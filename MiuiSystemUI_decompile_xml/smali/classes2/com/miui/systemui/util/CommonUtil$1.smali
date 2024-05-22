.class public final Lcom/miui/systemui/util/CommonUtil$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$streamType:I

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/util/CommonUtil$1;->val$context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/util/CommonUtil$1;->val$uri:Landroid/net/Uri;

    .line 4
    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lcom/miui/systemui/util/CommonUtil$1;->val$streamType:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/systemui/util/CommonUtil$1;->val$context:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/util/CommonUtil$1;->val$uri:Landroid/net/Uri;

    .line 4
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget v1, p0, Lcom/miui/systemui/util/CommonUtil$1;->val$streamType:I

    .line 12
    if-ltz v1, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "error playing ringtone "

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/miui/systemui/util/CommonUtil$1;->val$uri:Landroid/net/Uri;

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    const-string v1, "CommonUtil"

    .line 40
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_1
    :goto_0
    return-void
    .line 45
.end method
