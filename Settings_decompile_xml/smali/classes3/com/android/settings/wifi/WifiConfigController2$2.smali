.class Lcom/android/settings/wifi/WifiConfigController2$2;
.super Ljava/lang/Object;
.source "WifiConfigController2.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController2;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$_4bHl9cyBs840_11CAObNxZcySE(Lcom/android/settings/wifi/WifiConfigController2$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2$2;->lambda$afterTextChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController2;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2057
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0()V
    .locals 1

    .line 2084
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 2085
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 2070
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 2071
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->gateway:I

    if-ne p1, v0, :cond_0

    .line 2072
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController2;->-$$Nest$fgetmGatewayView(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_gateway_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 2073
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->network_prefix_length:I

    if-ne p1, v0, :cond_1

    .line 2074
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController2;->-$$Nest$fgetmNetworkPrefixLengthView(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 2075
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->dns1:I

    if-ne p1, v0, :cond_2

    .line 2076
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController2;->-$$Nest$fgetmDns1View(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 2078
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigController2;->-$$Nest$fgetmConfigUi(Lcom/android/settings/wifi/WifiConfigController2;)Lcom/android/settings/wifi/WifiConfigUiBase2;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 2081
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 2083
    :cond_4
    new-instance p1, Lcom/android/settings/wifi/WifiConfigController2$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiConfigController2$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiConfigController2$2;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
