.class Lcom/android/settings/MiuiBandMode$4;
.super Landroid/os/Handler;
.source "MiuiBandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiBandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiBandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiBandMode;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/settings/MiuiBandMode$4;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 323
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode$4;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 327
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode$4;->this$0:Lcom/android/settings/MiuiBandMode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiBandMode;->-$$Nest$mdisplayBandSelectionResult(Lcom/android/settings/MiuiBandMode;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
