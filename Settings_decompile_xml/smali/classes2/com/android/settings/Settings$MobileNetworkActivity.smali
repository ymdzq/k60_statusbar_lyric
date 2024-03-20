.class public Lcom/android/settings/Settings$MobileNetworkActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileNetworkActivity"
.end annotation


# instance fields
.field private mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private convertIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/android/settings/network/MobileNetworkIntentConverter;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkIntentConverter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    .line 553
    :cond_0
    iget-object p0, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->apply(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static doesIntentContainOptInAction(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

    .line 559
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 546
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Settings$MobileNetworkActivity;->convertIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 534
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 535
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.settings.MobileNetworkSettings"

    .line 536
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "MobileNetworkActivity"

    const-string/jumbo v1, "will redirect to miui mobilenetwork settings..."

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 524
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "MobileNetworkActivity"

    const-string v1, "Starting onNewIntent"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 528
    invoke-direct {p0, p1}, Lcom/android/settings/Settings$MobileNetworkActivity;->convertIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsActivity;->createUiFromIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method
