.class Lcom/android/settings/wifi/WifiDialog$2;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDialog;->initNegativeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDialog;

.field final synthetic val$negative:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDialog;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog$2;->this$0:Lcom/android/settings/wifi/WifiDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog$2;->val$negative:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 354
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog$2;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->-$$Nest$fgetmController(Lcom/android/settings/wifi/WifiDialog;)Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog$2;->val$negative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog$2;->this$0:Lcom/android/settings/wifi/WifiDialog;

    .line 355
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->wifi_eap_options_simple:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiConfigController;->forceUpdateOptionFields(Z)V

    return-void
.end method
