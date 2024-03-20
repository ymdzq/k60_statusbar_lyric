.class Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$2;
.super Landroid/os/Handler;
.source "MiuishowDppQrCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->initDppHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$2;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3001

    if-ne v0, v1, :cond_0

    .line 195
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$2;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetmView(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$2;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetmIsDppQrShow(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$2;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$mshowDppQrcode(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
