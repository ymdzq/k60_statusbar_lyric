.class Lcom/android/settings/bluetooth/LocationUtil$1;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/LocationUtil;->checkAndQuitThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocationUtil;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocationUtil;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationUtil$1;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LocationUtil"

    const-string/jumbo v1, "quit thread"

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil$1;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$mcleanUp(Lcom/android/settings/bluetooth/LocationUtil;)V

    return-void
.end method
