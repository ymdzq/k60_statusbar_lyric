.class public final synthetic Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    .line 4
    sget v1, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13
    return-void
    .line 16
.end method
