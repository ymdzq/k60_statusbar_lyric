.class Lcom/android/settings/recommend/PageIndexManager$HuanjiIndexDetail;
.super Lcom/android/settings/recommend/bean/IndexDetail;
.source "PageIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recommend/PageIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HuanjiIndexDetail"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/recommend/PageIndexManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/recommend/PageIndexManager;I)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/settings/recommend/PageIndexManager$HuanjiIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    .line 259
    invoke-direct {p0, p2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/recommend/PageIndexManager;ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/settings/recommend/PageIndexManager$HuanjiIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    .line 263
    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method


# virtual methods
.method public getIntent()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.action.Huanji"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.huanji"

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object p0, p0, Lcom/android/settings/recommend/PageIndexManager$HuanjiIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    invoke-static {p0}, Lcom/android/settings/recommend/PageIndexManager;->-$$Nest$fgetmContext(Lcom/android/settings/recommend/PageIndexManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/MiuiUtils;->isIntentActivityExistAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 271
    sget-object p0, Lcom/android/settings/device/controller/MiuiOneKeyMirgrateController;->APP_STORE_URL:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    const/high16 p0, 0x10000000

    .line 274
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo p0, "request_from"

    const-string v1, "com.android.settings"

    .line 275
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 276
    invoke-virtual {v0, p0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
