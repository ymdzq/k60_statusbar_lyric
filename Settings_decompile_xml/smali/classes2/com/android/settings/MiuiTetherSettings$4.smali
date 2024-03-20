.class Lcom/android/settings/MiuiTetherSettings$4;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Lcom/android/settings/MiuiTetherSettings$IntentSpan$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->setLicenseHighlight(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$agreementLicenseUrl:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 772
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/MiuiTetherSettings$4;->val$agreementLicenseUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 775
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$4;->val$context:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 776
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$4;->val$agreementLicenseUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 777
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 778
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$4;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
