.class Lcom/android/settings/projection/ScreenProjectionSwitchController$1;
.super Ljava/lang/Object;
.source "ScreenProjectionSwitchController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/projection/ScreenProjectionSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;


# direct methods
.method constructor <init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController$1;->this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController$1;->this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;

    invoke-static {p0, p1}, Lcom/android/settings/projection/ScreenProjectionSwitchController;->-$$Nest$msetWifiApState(Lcom/android/settings/projection/ScreenProjectionSwitchController;I)V

    return-void
.end method
