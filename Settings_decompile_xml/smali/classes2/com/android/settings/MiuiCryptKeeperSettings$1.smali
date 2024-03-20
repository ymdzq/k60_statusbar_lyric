.class Lcom/android/settings/MiuiCryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiCryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiCryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiCryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiCryptKeeperSettings;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings$1;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "level"

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "plugged"

    .line 93
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "invalid_charger"

    .line 94
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string/jumbo v3, "vold.pfe"

    .line 96
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activated"

    .line 97
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x50

    const/4 v5, 0x1

    if-lt v0, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    move p2, v5

    goto :goto_1

    :cond_1
    move p2, v1

    .line 104
    :goto_1
    iget-object v2, p0, Lcom/android/settings/MiuiCryptKeeperSettings$1;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-static {v2}, Lcom/android/settings/MiuiCryptKeeperSettings;->-$$Nest$fgetmInitiateButton(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/MiuiCryptKeeperSettings$1;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-static {v2}, Lcom/android/settings/MiuiCryptKeeperSettings;->-$$Nest$fgetmWarning(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_3

    sget v3, Lcom/android/settings/R$string;->crypt_keeper_unplugged_text:I

    goto :goto_3

    .line 106
    :cond_3
    sget v3, Lcom/android/settings/R$string;->crypt_keeper_low_charge_text:I

    .line 105
    :goto_3
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/MiuiCryptKeeperSettings$1;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->-$$Nest$fgetmWarning(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method
