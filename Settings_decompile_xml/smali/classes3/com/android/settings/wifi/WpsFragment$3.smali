.class Lcom/android/settings/wifi/WpsFragment$3;
.super Ljava/util/TimerTask;
.source "WpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsFragment;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment$3;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$3;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/wifi/WpsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WpsFragment$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsFragment$3$1;-><init>(Lcom/android/settings/wifi/WpsFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
